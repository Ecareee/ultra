.class public final Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk0/a;->a:Ljava/util/HashMap;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    const-string v2, "com.heytap.wearable.support.watchface.data.time.WFLunarTimeData"

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getMoonIndex"

    .line 2
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    const-string v3, "int"

    .line 3
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 4
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 5
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v4, "LUNAR_INDEX"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getMoonAngle"

    .line 7
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    const-string v2, "float"

    .line 8
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 9
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 10
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v4, "LUNAR_ANGLE"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    const-string v4, "com.heytap.wearable.support.watchface.data.time.WFSolarTimeData"

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 11
    iput-object v5, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v5, "getDoubleDigitsHourStr"

    .line 12
    iput-object v5, v1, Ll0/a;->b:Ljava/lang/String;

    const-string v5, "java.lang.String"

    .line 13
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 14
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "HOUR"

    .line 15
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 16
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 17
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighHourStr"

    .line 18
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 19
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 20
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "HOUR_HIGH"

    .line 21
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 22
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 23
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowHourStr"

    .line 24
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 25
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 26
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "HOUR_LOW"

    .line 27
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 28
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 29
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDoubleDigitsMinuteStr"

    .line 30
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 31
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 32
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MINUTE"

    .line 33
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 34
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 35
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighMinuteStr"

    .line 36
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 37
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 38
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MINUTE_HIGH"

    .line 39
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 40
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 41
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowMinuteStr"

    .line 42
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 43
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 44
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MINUTE_LOW"

    .line 45
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 46
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 47
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDoubleDigitsSecondStr"

    .line 48
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 49
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 50
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "SECOND"

    .line 51
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 52
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 53
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighSecondStr"

    .line 54
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 55
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 56
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "SECOND_HIGH"

    .line 57
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 58
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 59
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowSecondStr"

    .line 60
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 61
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 62
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "SECOND_LOW"

    .line 63
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 64
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 65
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getYearStr"

    .line 66
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 67
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 68
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "YEAR"

    .line 69
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 70
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 71
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getMonth0Str"

    .line 72
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 74
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MONTH_0"

    .line 75
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 76
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 77
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getMonth1Str"

    .line 78
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 79
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 80
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MONTH_1"

    .line 81
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 82
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 83
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getMonth2Str"

    .line 84
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 85
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 86
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "MONTH_2"

    .line 87
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 88
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 89
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDay0Str"

    .line 90
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 91
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 92
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "DAY_0"

    .line 93
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 94
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 95
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDay1Str"

    .line 96
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 97
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 98
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "DAY_1"

    .line 99
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 100
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 101
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDay2Str"

    .line 102
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 103
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 104
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "DAY_2"

    .line 105
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 106
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 107
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getWeek0Str"

    .line 108
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 109
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 110
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "WEEK_0"

    .line 111
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 112
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 113
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getWeek1Str"

    .line 114
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 115
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 116
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "WEEK_1"

    .line 117
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 118
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 119
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getWeek2Str"

    .line 120
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 121
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 122
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "WEEK_2"

    .line 123
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 124
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 125
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDate0Str"

    .line 126
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 127
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 128
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "DATE_0"

    .line 129
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 130
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 131
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getDate1Str"

    .line 132
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 133
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 134
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "DATE_1"

    .line 135
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 136
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 137
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHourMinuteStr"

    .line 138
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 139
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 140
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "HOUR_MINUTE"

    .line 141
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 142
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 143
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTimeStr"

    .line 144
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 145
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 146
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "TIME"

    .line 147
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 148
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 149
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighHour"

    .line 150
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 151
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 152
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 153
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "HOUR_HIGH_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 154
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowHour"

    .line 155
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 156
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 157
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 158
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "HOUR_LOW_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 159
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighMinute"

    .line 160
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 161
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 162
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 163
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "MINUTE_HIGH_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 164
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowMinute"

    .line 165
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 166
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 167
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 168
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "MINUTE_LOW_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 169
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHighSecond"

    .line 170
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 171
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 172
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 173
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "SECOND_HIGH_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 174
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getLowSecond"

    .line 175
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 176
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 177
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 178
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "SECOND_LOW_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 179
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getWeek"

    .line 180
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 181
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 182
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 183
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "WEEK_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 184
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getAmPm"

    .line 185
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 186
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 187
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 188
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "AMPM_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 189
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getWeekAngle"

    .line 190
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 191
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 192
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 193
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "WEEK_ANGLE"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 194
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getHourAngle"

    .line 195
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 197
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 198
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "HOUR_ANGLE"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 199
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getMinuteAngle"

    .line 200
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 201
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 202
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 203
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "MINUTE_ANGLE"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 204
    iput-object v4, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v4, "getSecondAngle"

    .line 205
    iput-object v4, v1, Ll0/a;->b:Ljava/lang/String;

    .line 206
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 207
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 208
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v4, "SECOND_ANGLE"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    const-string v4, "com.heytap.wearable.support.watchface.data.widget.WFBatteryData"

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 209
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getBatteryLevelStr"

    .line 210
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 211
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 212
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "BAT"

    .line 213
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 214
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 215
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getBitmapIndex"

    .line 216
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 217
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 218
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 219
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "BAT_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 220
    iput-object v4, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v4, "getBatteryAngle"

    .line 221
    iput-object v4, v1, Ll0/a;->b:Ljava/lang/String;

    .line 222
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 223
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 224
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v4, "BAT_ANGLE"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    const-string v4, "com.heytap.wearable.support.watchface.data.widget.WFCalendarData"

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 225
    iput-object v4, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v4, "getDataList"

    .line 226
    iput-object v4, v1, Ll0/a;->b:Ljava/lang/String;

    const-string v4, "java.util.ArrayList"

    .line 227
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 228
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v4, "CALENDARLIST"

    .line 229
    invoke-static {v0, v4, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v4, "com.heytap.wearable.support.watchface.data.widget.WFCountdownData"

    .line 230
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 231
    iput-object v4, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v4, "getParcelData"

    .line 232
    iput-object v4, v1, Ll0/a;->b:Ljava/lang/String;

    const-string v4, "com.heytap.wearable.support.watchface.complications.proto.CountdownData"

    .line 233
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 234
    iput-object v4, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v4, "COUNTDOWN_PAR"

    .line 235
    invoke-static {v0, v4, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v4, "com.heytap.wearable.support.watchface.data.widget.WFDailyActivityData"

    .line 236
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 237
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTargetCaloriesStrPre"

    .line 238
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 239
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 240
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "KACL_TARGET"

    .line 241
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 242
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 243
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTargetCaloriesStr"

    .line 244
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 245
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 246
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "KCAL_TARGET"

    .line 247
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 248
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 249
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTargetStepsStr"

    .line 250
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 251
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 252
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "STEP_TARGET"

    .line 253
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 254
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 255
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTargetActivityTimesStr"

    .line 256
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 257
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 258
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "ACTIVITY_TARGET"

    .line 259
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 260
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 261
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getTargetExerciseStr"

    .line 262
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 263
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 264
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "WORKOUT_TARGET"

    .line 265
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 266
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 267
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCurrentCaloriesStrPre"

    .line 268
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 269
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 270
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "KACL_CUR"

    .line 271
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 272
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 273
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCurrentCaloriesStr"

    .line 274
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 275
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 276
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "KCAL_CUR"

    .line 277
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 278
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 279
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCurrentStepsStr"

    .line 280
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 281
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 282
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "STEP_CUR"

    .line 283
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 284
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 285
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCurrentActivityTimesStr"

    .line 286
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 287
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 288
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "ACTIVITY_CUR"

    .line 289
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 290
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 291
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCurrentExerciseStr"

    .line 292
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 293
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 294
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v6, "WORKOUT_CUR"

    .line 295
    invoke-static {v0, v6, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 296
    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 297
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getCaloriesBitmapIndex"

    .line 298
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 299
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 300
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 301
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "KCAL_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 302
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getStepsBitmapIndex"

    .line 303
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 304
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 305
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 306
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "STEP_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 307
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getActivityTimesBitmapIndex"

    .line 308
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 309
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 310
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 311
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v6, "ACTIVITY_INDEX"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 312
    iput-object v6, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v6, "getExerciseBitmapIndex"

    .line 313
    iput-object v6, v1, Ll0/a;->b:Ljava/lang/String;

    .line 314
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 315
    iput-object v6, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 316
    invoke-static {v3}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v3, "WORKOUT_INDEX"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 317
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getCaloriesAngle"

    .line 318
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 319
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 320
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 321
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v3, "KCAL_ANGLE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 322
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getStepsAngle"

    .line 323
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 324
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 325
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 326
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v3, "STEP_ANGLE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 327
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getActivityTimesAngle"

    .line 328
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 329
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 330
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 331
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v3, "ACTIVITY_ANGLE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-static {v4}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 332
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getExerciseAngle"

    .line 333
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 334
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 335
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    .line 336
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll0/a;->a(Ljava/lang/Class;)V

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll0/a;->a(Ljava/lang/Class;)V

    const-string v2, "WORKOUT_ANGLE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFGoldenTimeData"

    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 337
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getGoldenTime"

    .line 338
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 339
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 340
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "GOLDEN_TIME"

    .line 341
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFHealthPressureData"

    .line 342
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 343
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getLatestPressureStr"

    .line 344
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 345
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 346
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "STRESS"

    .line 347
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFHealthSPOData"

    .line 348
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 349
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getSPOStr"

    .line 350
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 351
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 352
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "SPO"

    .line 353
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFHeartRateData"

    .line 354
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 355
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getHeartRateStr"

    .line 356
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 357
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 358
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "BPM"

    .line 359
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFRainProbabilityData"

    .line 360
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 361
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getRainProbability"

    .line 362
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 363
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 364
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "RAIN_PROBABILITY"

    .line 365
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFSunriseData"

    .line 366
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 367
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getSunriseStr"

    .line 368
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 369
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 370
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "SUNRISE"

    .line 371
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFSunsetData"

    .line 372
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 373
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getSunsetStr"

    .line 374
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 375
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 376
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "SUNSET"

    .line 377
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFWeatherAQData"

    .line 378
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 379
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getPm25Str"

    .line 380
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 381
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 382
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "PM25"

    .line 383
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFWeatherAQIData"

    .line 384
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 385
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getAQI"

    .line 386
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 387
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 388
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "AQI"

    .line 389
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFWeatherData"

    .line 390
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 391
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getTemperature1Str"

    .line 392
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 393
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 394
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v3, "TEMP"

    .line 395
    invoke-static {v0, v3, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 396
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 397
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getWeatherStr"

    .line 398
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 399
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 400
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "WEATHER"

    .line 401
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFWeatherOBWData"

    .line 402
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 403
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getHumidityStr"

    .line 404
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 405
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 406
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v3, "HUMIDITY"

    .line 407
    invoke-static {v0, v3, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 408
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 409
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getPressureStr"

    .line 410
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 411
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 412
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v3, "PRESSURE"

    .line 413
    invoke-static {v0, v3, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 414
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 415
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getUvIndexStr"

    .line 416
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 417
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 418
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v3, "UV"

    .line 419
    invoke-static {v0, v3, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 420
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 421
    iput-object v3, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v3, "getWindPowerStr"

    .line 422
    iput-object v3, v1, Ll0/a;->b:Ljava/lang/String;

    .line 423
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 424
    iput-object v3, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v3, "WIND_POWER"

    .line 425
    invoke-static {v0, v3, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    .line 426
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 427
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getWindSpeedStr"

    .line 428
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 429
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 430
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "WIND_SPEED"

    .line 431
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->f(Ljava/util/HashMap;Ljava/lang/String;Ll0/a;)Ll0/a;

    move-result-object v1

    const-string v2, "com.heytap.wearable.support.watchface.data.widget.WFWindPathData"

    .line 432
    invoke-static {v2}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 433
    iput-object v2, v1, Ll0/a;->a:Ljava/lang/Class;

    const-string v2, "getWindPath"

    .line 434
    iput-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    .line 435
    invoke-static {v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 436
    iput-object v2, v1, Ll0/a;->c:Ljava/lang/Class;

    const-string v2, "WIND_DIRECTION"

    .line 437
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_1
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_4
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_5
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_6
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_7
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_8
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
