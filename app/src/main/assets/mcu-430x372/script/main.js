require('js_asset.js');


var outDoors = {
    name: 'outDoors',
    initFlag: 0,
    angle:0,
    onDestory: function(event) {
        this.wfInfo.setCompassOnOff(false);
        FontId = null;
        StringId = null;
        PicId = null;
        return 0;
    },

    onEvent: function(event) {
        print('onEvent ' + event);
        switch(event)
        {
            case WindowEvent.winPush:
            case WindowEvent.winSuspended:
            {
                this.wfInfo.setCompassOnOff(false);
                this.task.suspend();
            }
            break;
            case WindowEvent.winTop:
            case WindowEvent.winResume:
            case WindowEvent.winReenter:
            {
                if(this.wfInfo.lcdStatus){
                   this.wfInfo.setCompassOnOff(true);
                   this.task.resume();
                }
            }
            case WindowEvent.minTimeout:
            case WindowEvent.secTimeout:
            case WindowEvent.winRepaint:
                 this.draw();
            break;
        }
        return 0;
    },

   CompassClickCb: function()
   {
       if(this.wfInfo.rsMode == true) {
           JumpApp(WatchfaceJump.RXApp,2);//跳小核指南针界面
       }else{
           JumpApp(WatchfaceJump.bigCoreApp,1);//跳大核表盘
       }
   },

   WeatherClickCb: function()
   {
       if(this.wfInfo.rsMode == true) {
           JumpApp(WatchfaceJump.RXApp,5,5);//跳小核天气界面
       }else{
           JumpApp(WatchfaceJump.bigCoreApp,1);//跳大核表盘
       }
   },

    //value: [0 ~ 360]
    drawCompassLine: function(value)
    {
        value = value << 0;
        value = value%360;
        //显示线卡条图片的偏移
        if(value < 180)
        {
            pos = -(value*6)%90;
        }
        else{
            pos = ((360-value)*6)%90;
        }
        print('degree: '+value+' ,pos: ',+pos);
        this.Piclinebg.x = -94 + pos;

        //显示线条的偏移
        if(value < 180)
        {//左边红线
            var offset = value;
            var white = 0;
            var red = 0;
            if(offset >= 15)
            {
                white = 0;
                red = 15*6+2;
            }
            else if(offset == 0)
            {
                white = 90;
                red = 2;
            }
            else {
                white = (15-offset)*6;
                red = offset*6+2;
            }
            this.lineWhite0.setSize(white, 32);
            this.lineRed.setSize(red, 32);
            this.lineRed.x = white;
            this.lineWhite1.setSize(90, 32);
            this.lineWhite1.x = 92;
        }
        else {//右边红线
            var offset = 360-value;
            var white = 0;
            var red = 0;
            if(offset >= 15)
            {
                white = 0;
                red = 15*6+2;
            }
            else if(offset == 0)
            {
                white = 90;
                red = 2;
            }
            else {
                white = (15-offset)*6;
                red = offset*6+2;
            }
            this.lineWhite0.setSize(90, 32);
            this.lineRed.setSize(red, 32);
            this.lineRed.x = 90;
            this.lineWhite1.setSize(white, 32);
            this.lineWhite1.x = 90+red;
        }
    },

    drawTime: function()
    {
        //显示时分数字
        if((WatchfaceUpdata.hour & this.wfInfo.updataFlag)||(WatchfaceUpdata.min & this.wfInfo.updataFlag))
        {
            this.labelTime.print("%02d:%02d:%02d", this.wfInfo.hour, this.wfInfo.min, this.wfInfo.sec); // 新增：显示秒
            this.labelTime.alignTo(this.par, Alignment.inTopMid, -55, 170);
        }
    },

    TaskCb: function()
    {
        if(false == this.wfInfo.lcdStatus){
            this.task.suspend();
            this.wfInfo.setCompassOnOff(false);
        }
        this.drawCompass();
    },

    drawSecond: function()
    {
        //刷新秒
        if(WatchfaceUpdata.sec & this.wfInfo.updataFlag)
        {
            var sec = this.wfInfo.sec%59;
            this.linemeter.setValue(sec+1);
            this.Rect1.alignTo(this.par,Alignment.inTopLeft,126,10);
            this.Rect2.alignTo(this.par,Alignment.inTopLeft,126,328);
        }
    },
    drawUvRay: function()
    {
        if(WatchfaceUpdata.weather & this.wfInfo.updataFlag)
        {
            var uvRay = this.wfInfo.uvRay;
            if(uvRay != 0xFFFF)
            {
                this.labelUV.print("%d", uvRay);
                this.picUVPoint.x = 146 + uvRay*13;
            }
            else{
                this.labelUV.print("- -");
                this.picUVPoint.x = 146;
            }
            this.labelUV.alignTo(this.par, Alignment.inTopMid, 77, 337);
        }
    },
    drawDate: function()
    {
        //显示日期
        if((WatchfaceUpdata.mon & this.wfInfo.updataFlag)||(WatchfaceUpdata.day & this.wfInfo.updataFlag))
        {
            var dateArray = [StringId.Stringmonth_1, StringId.Stringmonth_2, StringId.Stringmonth_3, StringId.Stringmonth_4,
                             StringId.Stringmonth_5, StringId.Stringmonth_6, StringId.Stringmonth_7, StringId.Stringmonth_8,
                             StringId.Stringmonth_9, StringId.Stringmonth_10, StringId.Stringmonth_11, StringId.Stringmonth_12
            ];
            this.labelDate.print("%s%d%s", dateArray[this.wfInfo.month-1], this.wfInfo.day, StringId.Stringday);
            this.labelDate.alignTo(this.par, Alignment.inTopMid, -59, 235);
        }
    },

    drawCompass: function()
    {
        //显示指南针度数
        this.angle = this.wfInfo.compass;
        if(0xFFFF == this.angle)
        {
            this.labelCompassText.print("- -");
            this.labelCompassText.alignTo(this.par, Alignment.inTopMid, 59, 24);
            this.labelCompassDegree.visible = false;
        } else {
            //显示方位
            var txt = 0;
            this.angle=this.angle%3600;
            this.labelCompassDegree.visible = true;
            if (this.angle >= 225 && this.angle < 225 + 450) {
                txt = StringId.Stringcompass_NE; //东北
            }
            else if (this.angle >= 675 && this.angle < 1125) {
                txt = StringId.Stringcompass_E; //东
            }
            else if (this.angle >= 1125 && this.angle < 1575) {
                txt = StringId.Stringcompass_SE; //东南
            }
            else if (this.angle >= 1575 && this.angle < 2025) {
                txt = StringId.Stringcompass_S; //南
            }
            else if (this.angle >= 2025 && this.angle < 2475) {
                txt = StringId.Stringcompass_SW; //西南
            }
            else if (this.angle >= 2475 && this.angle < 2925) {
                txt = StringId.Stringcompass_W; //西
            }
            else if (this.angle >= 2925 && this.angle < 3375) {
                txt = StringId.Stringcompass_NW; //西北
            }
            else {
                txt = StringId.Stringcompass_N; //北
            }
            this.labelCompassText.print("%s",txt);
            this.labelCompassDegree.print("%d°", this.angle/10);
            this.labelCompassText.alignTo(this.par, Alignment.inTopMid, 14, 17);
            this.labelCompassDegree.alignTo(this.par, Alignment.inTopMid, 85, 17);
            this.drawCompassLine(this.angle/10);
        }
    },

    draw: function()
    {
        // if(0 == this.initFlag) {
        //     return 0;
        // }
        this.drawTime();
        this.drawDate();
        this.drawSecond();
        this.drawUvRay();
    },

    init: function(par)
    {
        //获得表盘参数信息
        this.wfInfo = Watchface();
        print('time is:' + this.wfInfo.year + ':' + this.wfInfo.month + ':' + this.wfInfo.day + '-' +
                           this.wfInfo.hour + ':' + this.wfInfo.min + ':' + this.wfInfo.sec);
        //显示刻度
        this.linemeter = Linemeter(par, 13,96,239,239);
        this.linemeter.setRange(0, 59);
        this.linemeter.setScale(354, 59); //360度时首尾会重合，所以会少一个
        this.linemeter.setAngleOffset(174); //设置旋转角度
        var style = {
                    'main:default': {
                        'border-side': 0x0, //边框线宽
                        'scale-end-color': 0x767676, //剩余刻度颜色0x767676
                        'scale-grad-color': 0xFFFFFF, //刻度渐变颜色
                        'line-color': 0xFFFFFF,      //线颜色
                        'bg-color': 0x000000,  //背影色
                        'line-width':4,      //线宽
                        'scale-end-line-width': 4,      //剩余刻度线宽
                        'scale-width': 9,      //刻度线长度
                    }
         };
        this.linemeter.setLocalStyle(style);
        //显示背景
        this.Rect1 = Image(par, PicId.PicRectangle, 126, 10);
        this.Rect2 = Image(par, PicId.PicRectangle, 126, 328);
        this.Rect1.setEventCb(EventType.clicked,this.CompassClickCb,this);
        this.Rect2.setEventCb(EventType.clicked,this.WeatherClickCb,this);
        //创建一个容器
        this.lineCont = View(par, 151, 64, 183, 28);
        var lineContStyle = {
            'main:default': {
                'bg-color': 0x000000,
                'border-side': 0x00,
                'radius': 0,
                'pad-all': 0,
            }
        };
        this.lineCont.setLocalStyle(lineContStyle);

        //创建白线段0
        this.lineWhite0 = Line(this.lineCont, 0, 14, 100, 28);
        var lineWhiteStyle = {
            'main:default': {
                'line-color': 0xBEBEBE, //线颜色
                'line-rounded': 0, //是否带圆角
                'border-width': 0,
            }
        };
        this.lineWhite0.setLocalStyle(lineWhiteStyle);

        //创建红线段
        this.lineRed = Line(this.lineCont, 100, 14, 100, 28);
        var lineRedStyle = {
            'main:default': {
                'line-color': 0xB13D30, //线颜色
                'line-rounded': 0, //是否带圆角
                'border-width': 0,
            }
        };
        this.lineRed.setLocalStyle(lineRedStyle);

        //创建白线段1
        this.lineWhite1 = Line(this.lineCont, 0, 14, 100, 28);
        var lineWhiteStyle = {
            'main:default': {
                'line-color': 0xBEBEBE, //线颜色
                'line-rounded': 0, //是否带圆角
                'border-width': 0,
            }
        };
        this.lineWhite1.setLocalStyle(lineWhiteStyle);
        //显示线卡条图片
        this.Piclinebg = Image(this.lineCont, PicId.Piclinebg, -94, 0);
        Image(par, PicId.Picmark, 233, 58);

        //显示时分数字
        this.labelTime = Label(par, '09:30', -55, 170);
        this.labelTime.setFont(FontId.Fonttime);
        this.labelTime.alignTo(this.par, Alignment.inTopMid, -55, 170);

        //显示日期
        this.labelDate = Label(par, "3月6日", -59, 235);
        this.labelDate.setColor(0xCC, 0x5A, 0x2A);
        this.labelDate.setFont(FontId.Fontdate);
        this.labelDate.alignTo(this.par, Alignment.inTopMid, -59, 235);

        //显示指南针
        //this.wfInfo.setCompassOnOff(true);
        this.labelCompassText = Label(par, '西北', 135, 17);
        this.labelCompassText.setFont(FontId.Fontcompass_num);
        this.labelCompassText.alignTo(this.par, Alignment.inTopMid, 14, 17);
        this.labelCompassText.setColor(0xE6, 0x4A, 0x39);

        this.labelCompassDegree = Label(par, '300°', 180-15, 17);
        this.labelCompassDegree.setFont(FontId.Fontcompass_num);
        this.labelCompassDegree.alignTo(this.par, Alignment.inTopMid, 85, 17);

        //显示紫外线
        Image(par, PicId.Picuvicon, 196+14, 341);
        Image(par, PicId.Picuvline, 148-2, 392-2);
        this.picUVPoint = Image(par, PicId.Picuvpoint, 146, 388);
        this.labelUV = Label(par,'5',54,338);
        this.labelUV.setColor(0xFF, 0xFF, 0xFF);
        this.labelUV.setFont(FontId.Fontcompass_num);
        this.labelUV.alignTo(this.par, Alignment.inTopMid, 77, 337);

        //设置editWidget
        EditWidget(par, 100,   16, 4, 104, 104);
        EditWidget(par, 101, 252, 108, 104, 104);
        EditWidget(par, 102, 252, 218, 104, 104);
        EditWidget(par, 103, 16, 322, 104,  104);

        //设置显示
        this.draw();

        //设置指南针状态
        this.task = Task(this, this.TaskCb, 100, false);
        if(this.wfInfo.lcdStatus){
            this.task.resume();
            this.wfInfo.setCompassOnOff(true);
        } else {
            this.task.suspend();
            this.angle = this.wfInfo.compass;
            this.wfInfo.setCompassOnOff(false);
        }
        return 0;
    },

    onCreate: function(par, hor_res, ver_res) {
        print('onCreate: ');
        this.initFlag = 1;
        this.hor_max = hor_res;
        this.ver_max = ver_res;
        var fixedPage = View(par, 0, 0, hor_res, ver_res);
        var pageStyle = {
            'main:default': {
                'bg-color': 0x000000,
                'border-side': 0x00,
                'radius': 0,
                'pad-all': 0,
            }
        };
        fixedPage.setLocalStyle(pageStyle);
        this.par = fixedPage;
        this.init(fixedPage);

        return fixedPage;
    }
}

!subwm.registerSubWindow(outDoors);
outDoors = null;