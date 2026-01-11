.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.source "SourceFile"


# static fields
.field private static final ALL_DAY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeLineLargeComplicationRender"

.field private static final TEXT_MARGIN:I

.field private static final TEXT_MARGIN_START:I

.field private static final TEXT_MARGIN_TOP:I

.field private static final TEXT_RECT_HEIGHT:I

.field private static final TEXT_SIZE:I

.field private static final TIME_DIVIDER:Ljava/lang/String; = " - "

.field private static final TIME_MARGIN_TEXT_TOP:I

.field private static final TIME_PATTERN:Ljava/lang/String; = "HH:mm"

.field private static final TIME_RECT_HEIGHT:I

.field private static final TIME_SIZE:I

.field private static final TIME_TEXT_COLOR:I = -0x66000001

.field private static final TITLE_RECT_HEIGHT:I

.field private static final TITLE_SIZE:I


# instance fields
.field private mHRTipsForPrivacyMode:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextRect:Landroid/graphics/Rect;

.field private mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

.field private mTimePaint:Landroid/text/TextPaint;

.field private mTimeRect:Landroid/graphics/Rect;

.field private mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTitlePaint:Landroid/text/TextPaint;

.field private mTitleRect:Landroid/graphics/Rect;

.field private mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TITLE_SIZE:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y34:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_SIZE:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TIME_SIZE:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y24:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TITLE_RECT_HEIGHT:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y53:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_RECT_HEIGHT:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y38:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TIME_RECT_HEIGHT:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x32:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN_START:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y16:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN_TOP:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x4:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y35:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TIME_MARGIN_TEXT_TOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRect:Landroid/graphics/Rect;

    const-string p1, ""

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mHRTipsForPrivacyMode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->init()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mHRTipsForPrivacyMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->getText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "TimeLineLargeComplicationRender"

    const-string v0, "[TimeLineLargeComplicationRender#drawText] text is null!"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawTime(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$string;->time_line_all_day:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->getAllDay()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->getTimeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->getText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private getFormatDate(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimeText()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->getStartTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->getEndTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "TimeLineLargeComplicationRender"

    const-string v1, "[TimeLineLargeComplicationRender#drawText] start or end time is error"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->complicationDrawable_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TITLE_SIZE:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_SIZE:I

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TIME_SIZE:I

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    const v3, -0x66000001

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setAlignment(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setAlignment(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setAlignment(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mHRTipsForPrivacyMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN_TOP:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v6, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TITLE_RECT_HEIGHT:I

    invoke-static {v5, v6}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v5

    add-float/2addr v5, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN_START:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_MARGIN:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitleRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TEXT_RECT_HEIGHT:I

    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v2, v4

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTextRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->TIME_MARGIN_TEXT_TOP:I

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTimeLineData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->checkUpdate()V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->drawTitle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->drawTime(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->init()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onStyleChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
