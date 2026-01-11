.class public Lcom/android/calendar/LunarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARMY_BUILD_DAY_INDEX:I = 0x5

.field public static final INDEX_DAY:I = 0x2

.field public static final INDEX_LEAP_MONTH:I = 0x3

.field public static final INDEX_MONTH:I = 0x1

.field public static final INDEX_YEAR:I = 0x0

.field private static final LUNAR_CODE:[J

.field private static LUNAR_MONTH_DAYS:[I = null

.field private static final MAX_MONTHS:I = 0xc

.field private static final MAX_YEAR:I = 0x833

.field private static final MIN_YEAR:I = 0x76c

.field private static final MOON_PHASE_CYCLE:F = 29.53059f

.field private static final MOON_PHASE_DELTA:F = 4.867f

.field private static final NATIONAL_DAY_INDEX:I = 0x8

.field private static final PARTY_BUILD_DAY_INDEX:I = 0x4

.field private static SOLAR:[I = null

.field private static final YEAR_BEGIN:I = 0x79d

.field private static final YEAR_BEGIN_1933:I = 0x78d

.field private static final YEAR_BEGIN_1938:I = 0x792

.field private static volatile sLunarHelper:Lcom/android/calendar/LunarHelper;


# instance fields
.field private mAnimals:[Ljava/lang/String;

.field private mChineseDayTable:[Ljava/lang/String;

.field private mChineseMonthTable:[Ljava/lang/String;

.field private mEnglishMonth:[Ljava/lang/String;

.field private mGan:[Ljava/lang/String;

.field private mLeapMonth:[Ljava/lang/String;

.field private mLunarFeastTable:[Ljava/lang/String;

.field private mLunarInfo:[I

.field private mOtherFeastTable:[Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private mSolarFeastTable:[Ljava/lang/String;

.field private mSolarTermTable:[Ljava/lang/String;

.field private mZhi:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/LunarHelper;->LUNAR_CODE:[J

    const/16 v0, 0xe1

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/calendar/LunarHelper;->LUNAR_MONTH_DAYS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/calendar/LunarHelper;->SOLAR:[I

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x16a95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6b20
        0x1a6c4
        0xaae0
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
    .end array-data

    :array_1
    .array-data 4
        0x75f
        0x1694
        0x16aa
        0x4ad5
        0xab6
        0xc4b7
        0x4ae
        0xa56
        0xb52a
        0x1d2a
        0xd54
        0x75aa
        0x156a
        0x1096d
        0x95c
        0x14ae
        0xaa4d
        0x1a4c
        0x1b2a
        0x8d55
        0xad4
        0x135a
        0x495d
        0x95c
        0xd49b
        0x149a
        0x1a4a
        0xbaa5
        0x16a8
        0x1ad4
        0x52da
        0x12b6
        0xe937
        0x92e
        0x1496
        0xb64b
        0xd4a
        0xda8
        0x95b5
        0x56c
        0x12ae
        0x492f
        0x92e
        0xcc96
        0x1a94
        0x1d4a
        0xada9
        0xb5a
        0x56c
        0x726e
        0x125c
        0xf92d
        0x192a
        0x1a94
        0xdb4a
        0x16aa
        0xad4
        0x955b
        0x4ba
        0x125a
        0x592b
        0x152a
        0xf695
        0xd94
        0x16aa
        0xaab5
        0x9b4
        0x14b6
        0x6a57
        0xa56
        0x1152a
        0x1d2a
        0xd54
        0xd5aa
        0x156a
        0x96c
        0x94ae
        0x14ae
        0xa4c
        0x7d26
        0x1b2a
        0xeb55
        0xad4
        0x12da
        0xa95d
        0x95a
        0x149a
        0x9a4d
        0x1a4a
        0x11aa5
        0x16a8
        0x16d4
        0xd2da
        0x12b6
        0x936
        0x9497
        0x1496
        0x1564b
        0xd4a
        0xda8
        0xd5b4
        0x156c
        0x12ae
        0xa92f
        0x92e
        0xc96
        0x6d4a
        0x1d4a
        0x10d65
        0xb58
        0x156c
        0xb26d
        0x125c
        0x192c
        0x9a95
        0x1a94
        0x1b4a
        0x4b55
        0xad4
        0xf55b
        0x4ba
        0x125a
        0xb92b
        0x152a
        0x1694
        0x96aa
        0x15aa
        0x12ab5
        0x974
        0x14b6
        0xca57
        0xa56
        0x1526
        0x8e95
        0xd54
        0x15aa
        0x49b5
        0x96c
        0xd4ae
        0x149c
        0x1a4c
        0xbd26
        0x1aa6
        0xb54
        0x6d6a
        0x12da
        0x1695d
        0x95a
        0x149a
        0xda4b
        0x1a4a
        0x1aa4
        0xbb54
        0x16b4
        0xada
        0x495b
        0x936
        0xf497
        0x1496
        0x154a
        0xb6a5
        0xda4
        0x15b4
        0x6ab6
        0x126e
        0x1092f
        0x92e
        0xc96
        0xcd4a
        0x1d4a
        0xd64
        0x956c
        0x155c
        0x125c
        0x792e
        0x192c
        0xfa95
        0x1a94
        0x1b4a
        0xab55
        0xad4
        0x14da
        0x8a5d
        0xa5a
        0x1152b
        0x152a
        0x1694
        0xd6aa
        0x15aa
        0xab4
        0x94ba
        0x14b6
        0xa56
        0x7527
        0xd26
        0xee53
        0xd54
        0x15aa
        0xa9b5
        0x96c
        0x14ae
        0x8a4e
        0x1a4c
        0x11d26
        0x1aa4
        0x1b54
        0xcd6a
        0xada
        0x95c
        0x949d
        0x149a
        0x1a2a
        0x5b25
        0x1aa4
        0xfb52
        0x16b4
        0xaba
        0xa95b
        0x936
        0x1496
        0x9a4b
        0x154a
        0x136a5
        0xda4
        0x15ac
    .end array-data

    :array_2
    .array-data 4
        0x75f
        0xec04c
        0xec23f
        0xec435
        0xec649
        0xec83e
        0xeca51
        0xecc46
        0xece3a
        0xed04d
        0xed242
        0xed436
        0xed64a
        0xed83f
        0xeda53
        0xedc48
        0xede3d
        0xee050
        0xee244
        0xee439
        0xee64d
        0xee842
        0xeea36
        0xeec4a
        0xeee3e
        0xef052
        0xef246
        0xef43a
        0xef64e
        0xef843
        0xefa37
        0xefc4b
        0xefe41
        0xf0054
        0xf0248
        0xf043c
        0xf0650
        0xf0845
        0xf0a38
        0xf0c4d
        0xf0e42
        0xf1037
        0xf124a
        0xf143e
        0xf1651
        0xf1846
        0xf1a3a
        0xf1c4e
        0xf1e44
        0xf2038
        0xf224b
        0xf243f
        0xf2653
        0xf2848
        0xf2a3b
        0xf2c4f
        0xf2e45
        0xf3039
        0xf324d
        0xf3442
        0xf3636
        0xf384a
        0xf3a3d
        0xf3c51
        0xf3e46
        0xf403b
        0xf424e
        0xf4443
        0xf4638
        0xf484c
        0xf4a3f
        0xf4c52
        0xf4e48
        0xf503c
        0xf524f
        0xf5445
        0xf5639
        0xf584d
        0xf5a42
        0xf5c35
        0xf5e49
        0xf603e
        0xf6251
        0xf6446
        0xf663b
        0xf684f
        0xf6a43
        0xf6c37
        0xf6e4b
        0xf703f
        0xf7252
        0xf7447
        0xf763c
        0xf7850
        0xf7a45
        0xf7c39
        0xf7e4d
        0xf8042
        0xf8254
        0xf8449
        0xf863d
        0xf8851
        0xf8a46
        0xf8c3b
        0xf8e4f
        0xf9044
        0xf9237
        0xf944a
        0xf963f
        0xf9853
        0xf9a47
        0xf9c3c
        0xf9e50
        0xfa045
        0xfa238
        0xfa44c
        0xfa641
        0xfa836
        0xfaa49
        0xfac3d
        0xfae52
        0xfb047
        0xfb23a
        0xfb44e
        0xfb643
        0xfb837
        0xfba4a
        0xfbc3f
        0xfbe53
        0xfc048
        0xfc23c
        0xfc450
        0xfc645
        0xfc839
        0xfca4c
        0xfcc41
        0xfce36
        0xfd04a
        0xfd23d
        0xfd451
        0xfd646
        0xfd83a
        0xfda4d
        0xfdc43
        0xfde37
        0xfe04b
        0xfe23f
        0xfe453
        0xfe648
        0xfe83c
        0xfea4f
        0xfec44
        0xfee38
        0xff04c
        0xff241
        0xff436
        0xff64a
        0xff83e
        0xffa51
        0xffc46
        0xffe3a
        0x10004e
        0x100242
        0x100437
        0x10064b
        0x100841
        0x100a53
        0x100c48
        0x100e3c
        0x10104f
        0x101244
        0x101438
        0x10164c
        0x101842
        0x101a35
        0x101c49
        0x101e3d
        0x102051
        0x102245
        0x10243a
        0x10264e
        0x102843
        0x102a37
        0x102c4b
        0x102e3f
        0x103053
        0x103247
        0x10343b
        0x10364f
        0x103845
        0x103a38
        0x103c4c
        0x103e42
        0x104036
        0x104249
        0x10443d
        0x104651
        0x104846
        0x104a3a
        0x104c4e
        0x104e43
        0x105038
        0x10524a
        0x10543e
        0x105652
        0x105847
        0x105a3b
        0x105c4f
        0x105e45
        0x106039
        0x10624c
        0x106441
        0x106635
        0x106849
        0x106a3d
        0x106c51
        0x106e47
        0x10703c
        0x10724f
        0x107444
        0x107638
        0x10784c
        0x107a3f
        0x107c53
        0x107e48
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/LunarHelper;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_leap_month:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_animal_year:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mAnimals:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_tiangan:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mGan:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_dizhi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mZhi:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_month_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_day_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mChineseDayTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->english_month_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mEnglishMonth:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->lunar_info:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mLunarInfo:[I

    invoke-direct {p0, p1}, Lcom/android/calendar/LunarHelper;->loadCHS(Landroid/content/res/Resources;)V

    return-void
.end method

.method private adjustLunarMonth(II)I
    .locals 1

    if-lez p2, :cond_1

    const/16 v0, 0xd

    if-ge p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    add-int/lit8 p1, p2, 0xc

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    return p1
.end method

.method private daysInLunarYear(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/calendar/LunarHelper;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x179

    goto :goto_0

    :cond_0
    const/16 v0, 0x15c

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/LunarHelper;->mLunarInfo:[I

    add-int/lit16 p1, p1, -0x76c

    aget p1, v1, p1

    const v1, 0xfff80

    and-int/2addr p1, v1

    const/high16 v1, 0x80000

    :goto_1
    const/4 v2, 0x7

    if-le v1, v2, :cond_2

    and-int v2, p1, v1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method private getAnimals(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/LunarHelper;->mAnimals:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x4

    rem-int/lit8 p1, p1, 0xc

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static getBitInt(III)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    shl-int/2addr p1, p2

    and-int/2addr p0, p1

    shr-int/2addr p0, p2

    return p0
.end method

.method private getChineseLunarDayString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/LunarHelper;->mChineseDayTable:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getChineseLunarMonthString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGanZhi(I)Ljava/lang/String;
    .locals 3

    add-int/lit16 p1, p1, -0x76c

    add-int/lit8 p1, p1, 0x24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/LunarHelper;->mGan:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/LunarHelper;->mZhi:[Ljava/lang/String;

    rem-int/lit8 p1, p1, 0xc

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/LunarHelper;
    .locals 2

    sget-object v0, Lcom/android/calendar/LunarHelper;->sLunarHelper:Lcom/android/calendar/LunarHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/calendar/LunarHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/calendar/LunarHelper;->sLunarHelper:Lcom/android/calendar/LunarHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/calendar/LunarHelper;

    invoke-direct {v1, p0}, Lcom/android/calendar/LunarHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/calendar/LunarHelper;->sLunarHelper:Lcom/android/calendar/LunarHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/calendar/LunarHelper;->sLunarHelper:Lcom/android/calendar/LunarHelper;

    return-object p0
.end method

.method private getJulianDate(III)I
    .locals 5

    rsub-int/lit8 v0, p2, 0xc

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x9

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0xc

    :cond_0
    const-wide v0, 0x4076d40000000000L    # 365.25

    add-int/lit16 v2, p3, 0x1268

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    const-wide v1, 0x403e99a027525461L    # 30.6001

    int-to-double v3, p2

    mul-double/2addr v3, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v1

    double-to-int p2, v3

    div-int/lit8 p3, p3, 0x64

    add-int/lit8 p3, p3, 0x31

    int-to-double v1, p3

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int p3, v1

    add-int/lit8 p3, p3, -0x26

    add-int/2addr v0, p2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3b

    const p1, 0x231518

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p3

    :cond_1
    return v0
.end method

.method private getLeapLunarMonthString(II)Ljava/lang/String;
    .locals 2

    if-lez p2, :cond_0

    const/16 v0, 0xd

    if-ge p2, v0, :cond_0

    add-int/lit8 v0, p1, -0xc

    if-ne v0, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/calendar/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLeapMonth(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/LunarHelper;->mLunarInfo:[I

    add-int/lit16 p1, p1, -0x76c

    aget p1, v0, p1

    const/high16 v0, 0xf00000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private getLunarFeast(III)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/calendar/CalendarFeast;->getLunarFeast(III)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 p2, 0xb

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/calendar/LunarHelper;->mLunarFeastTable:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMoonAgeByJulian(I)I
    .locals 4

    int-to-float p1, p1

    const v0, 0x41ec3ea6

    div-float v1, p1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    float-to-double v0, p1

    const-wide v2, 0x401377cee0000000L    # 4.867000102996826

    add-double/2addr v0, v2

    const-wide v2, 0x402d87d4c0000000L    # 14.765295028686523

    add-double/2addr v0, v2

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    const v0, 0x2d0f63

    rem-int/2addr p1, v0

    int-to-float p1, p1

    const v0, 0x47c35000    # 100000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    const/16 v0, 0x1d

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getOriginMoonAge(III)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getJulianDate(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/calendar/LunarHelper;->getMoonAgeByJulian(I)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-direct {p0, p1}, Lcom/android/calendar/LunarHelper;->getMoonAgeByJulian(I)I

    move-result p1

    if-eqz p2, :cond_0

    if-ne p1, p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private getOtherSolarFeast(III)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/calendar/CalendarFeast;->getOtherSolarFeast(III)I

    move-result p2

    if-ltz p2, :cond_2

    const/4 p3, 0x6

    if-ge p2, p3, :cond_2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    const/16 p3, 0x792

    if-gt p3, p1, :cond_2

    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mOtherFeastTable:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    const/16 p3, 0x78d

    if-gt p3, p1, :cond_2

    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mOtherFeastTable:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mOtherFeastTable:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSolarFeast(III)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/calendar/CalendarFeast;->getSolarFeast(III)I

    move-result p2

    const/4 p3, 0x0

    if-ltz p2, :cond_2

    const/16 v0, 0xb

    if-ge p2, v0, :cond_2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    const/16 v0, 0x79d

    if-gt v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mSolarFeastTable:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mSolarFeastTable:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    return-object p3
.end method

.method private getSolarTerm(III)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/calendar/CalendarFeast;->getSolarTerm(III)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 p2, 0x18

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/calendar/LunarHelper;->mSolarTermTable:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadCHS(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->solar_term:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mSolarTermTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->solar_feast:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mSolarFeastTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->lunar_feast:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mLunarFeastTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_other_feast:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/LunarHelper;->mOtherFeastTable:[Ljava/lang/String;

    return-void
.end method

.method private loadCHT(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->solar_term_tw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mSolarTermTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->solar_feast_tw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mSolarFeastTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->lunar_feast_tw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LunarHelper;->mLunarFeastTable:[Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/common/R$array;->chinese_other_feast_tw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/LunarHelper;->mOtherFeastTable:[Ljava/lang/String;

    return-void
.end method

.method private static solarFromInt(J)[I
    .locals 15

    const-wide/16 v0, 0x2710

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x39bc

    add-long/2addr v0, v2

    const-wide/32 v2, 0x37bb49

    div-long/2addr v0, v2

    const-wide/16 v2, 0x16d

    mul-long v4, v0, v2

    const-wide/16 v6, 0x4

    div-long v8, v0, v6

    add-long/2addr v8, v4

    const-wide/16 v4, 0x64

    div-long v10, v0, v4

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x190

    div-long v12, v0, v10

    add-long/2addr v12, v8

    sub-long v8, p0, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_0

    sub-long/2addr v0, v13

    mul-long/2addr v2, v0

    div-long v6, v0, v6

    add-long/2addr v6, v2

    div-long v2, v0, v4

    sub-long/2addr v6, v2

    div-long v2, v0, v10

    add-long/2addr v2, v6

    sub-long v8, p0, v2

    :cond_0
    mul-long/2addr v4, v8

    const-wide/16 v2, 0x34

    add-long/2addr v4, v2

    const-wide/16 v2, 0xbf4

    div-long/2addr v4, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, v4

    const-wide/16 v6, 0xc

    rem-long v10, v2, v6

    add-long/2addr v10, v13

    div-long/2addr v2, v6

    add-long/2addr v2, v0

    const-wide/16 v0, 0x132

    mul-long/2addr v4, v0

    const-wide/16 v0, 0x5

    add-long/2addr v4, v0

    const-wide/16 v0, 0xa

    div-long/2addr v4, v0

    sub-long/2addr v8, v4

    add-long/2addr v8, v13

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    long-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    long-to-int v2, v10

    aput v2, v0, v1

    const/4 v1, 0x2

    long-to-int v2, v8

    aput v2, v0, v1

    return-object v0
.end method

.method private static solarToInt(III)J
    .locals 4

    add-int/lit8 p1, p1, 0x9

    rem-int/lit8 p1, p1, 0xc

    div-int/lit8 v0, p1, 0xa

    sub-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/16 v2, 0x16d

    mul-long/2addr v0, v2

    div-int/lit8 v2, p0, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0x64

    int-to-long v2, v2

    sub-long/2addr v0, v2

    div-int/lit16 p0, p0, 0x190

    int-to-long v2, p0

    add-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, 0x132

    mul-long/2addr p0, v2

    const-wide/16 v2, 0x5

    add-long/2addr p0, v2

    const-wide/16 v2, 0xa

    div-long/2addr p0, v2

    add-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public daysInLunarMonth(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/LunarHelper;->mLunarInfo:[I

    add-int/lit16 p1, p1, -0x76c

    aget p1, v0, p1

    const/high16 v0, 0x100000

    shr-int p2, v0, p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/16 p1, 0x1d

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1
.end method

.method public getCurrentChineseStringArray(III)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/LunarHelper;->getFeastStrings(IIIZ)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 p3, 0x4

    if-ge v0, p3, :cond_1

    aget-object p3, p1, v0

    if-eqz p3, :cond_0

    aget-object p3, p1, v0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    aget-object p1, p1, p3

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getFeastStrings(III)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/LunarHelper;->getFeastStrings(IIIZ)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFeastStrings(IIIZ)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->solarToLunar(III)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/calendar/LunarHelper;->getLeapMonth(I)I

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-direct {p0, v5, v3}, Lcom/android/calendar/LunarHelper;->adjustLunarMonth(II)I

    move-result v5

    aput v5, v1, v4

    const/4 v5, 0x2

    aget v6, v1, v5

    if-ne v6, v4, :cond_0

    const/16 v6, 0x8

    const-string v7, "lunarFirstDay"

    aput-object v7, v0, v6

    :cond_0
    aget v6, v1, v2

    aget v7, v1, v4

    aget v8, v1, v5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/calendar/LunarHelper;->getLunarFeast(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getSolarFeast(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getOtherSolarFeast(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v6, 0x3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getSolarTerm(III)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    const/4 p1, 0x5

    const/4 p2, 0x4

    if-eqz p4, :cond_1

    aget p3, v1, v5

    invoke-direct {p0, p3}, Lcom/android/calendar/LunarHelper;->getChineseLunarDayString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    aget p2, v1, v4

    invoke-direct {p0, p2, v3}, Lcom/android/calendar/LunarHelper;->getLeapLunarMonthString(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    aget p2, v1, v2

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getAnimals(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aget p2, v1, v2

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getGanZhi(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_1

    :cond_1
    aget p3, v1, v5

    if-ne v4, p3, :cond_2

    aget p3, v1, v4

    invoke-direct {p0, p3, v3}, Lcom/android/calendar/LunarHelper;->getLeapLunarMonthString(II)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    goto :goto_0

    :cond_2
    aget p3, v1, v5

    invoke-direct {p0, p3}, Lcom/android/calendar/LunarHelper;->getChineseLunarDayString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    :goto_0
    aget p2, v1, v4

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    :goto_1
    return-object v0
.end method

.method public getFeastStringsForLauncher(IIIZ)[Ljava/lang/String;
    .locals 9

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->solarToLunar(III)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/calendar/LunarHelper;->getLeapMonth(I)I

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-direct {p0, v5, v3}, Lcom/android/calendar/LunarHelper;->adjustLunarMonth(II)I

    move-result v5

    aput v5, v1, v4

    aget v5, v1, v2

    aget v6, v1, v4

    const/4 v7, 0x2

    aget v8, v1, v7

    invoke-direct {p0, v5, v6, v8}, Lcom/android/calendar/LunarHelper;->getLunarFeast(III)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getSolarFeast(III)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getOtherSolarFeast(III)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getSolarTerm(III)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x5

    const/4 p2, 0x4

    if-eqz p4, :cond_0

    aget p3, v1, v7

    invoke-direct {p0, p3}, Lcom/android/calendar/LunarHelper;->getChineseLunarDayString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    aget p2, v1, v4

    invoke-direct {p0, p2, v3}, Lcom/android/calendar/LunarHelper;->getLeapLunarMonthString(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    aget p2, v1, v2

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getAnimals(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aget p2, v1, v2

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getGanZhi(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    aget p3, v1, v7

    invoke-direct {p0, p3}, Lcom/android/calendar/LunarHelper;->getChineseLunarDayString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    aget p2, v1, v4

    invoke-direct {p0, p2}, Lcom/android/calendar/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    :goto_0
    return-object v0
.end method

.method public getLunarMonthDayEnglisgString(III)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/LunarHelper;->getFeastStrings(IIIZ)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p2, p1, p2

    const/4 p3, 0x5

    aget-object p1, p1, p3

    iget-object p3, p0, Lcom/android/calendar/LunarHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/common/R$string;->lunar_month:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/calendar/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/calendar/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/android/calendar/LunarHelper;->mEnglishMonth:[Ljava/lang/String;

    sub-int/2addr v2, v0

    aget-object p1, p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/android/calendar/LunarHelper;->mChineseDayTable:[Ljava/lang/String;

    array-length v2, p3

    if-ge v1, v2, :cond_3

    aget-object p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLunarMonthDayString(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/LunarHelper;->getFeastStrings(IIIZ)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p2, p1, p2

    const/4 p3, 0x5

    aget-object p1, p1, p3

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMoonAge(III)I
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getOriginMoonAge(III)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-virtual {v1, p3, p2, p1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 p3, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/2addr p3, v0

    int-to-long v0, v0

    const-wide/16 v3, 0xe10

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x18

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    sub-long/2addr p1, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v1, v3, v0}, Lcom/android/calendar/LunarHelper;->getOriginMoonAge(III)I

    move-result v0

    goto :goto_0

    :cond_0
    return p3
.end method

.method public getMoonAgePicIndex(III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getMoonAge(III)I

    move-result p1

    const/16 p2, 0x1d

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getMoonAngle(III)F
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/LunarHelper;->getMoonAge(III)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x401861a9cd9c4efdL    # 6.09537431017429

    mul-double/2addr p1, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    sub-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public lunarToSolar(IIIZ)[I
    .locals 8

    sget-object v0, Lcom/android/calendar/LunarHelper;->LUNAR_MONTH_DAYS:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    sub-int v2, p1, v2

    aget v0, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0xd

    invoke-static {v0, v2, v3}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v3

    if-nez p4, :cond_2

    if-le p2, v3, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v3, p2, -0x1

    :cond_2
    :goto_1
    move v4, v1

    move v5, v4

    :goto_2
    const/4 v6, 0x1

    if-ge v4, v3, :cond_4

    rsub-int/lit8 v7, v4, 0xc

    invoke-static {v0, v6, v7}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v7

    if-ne v7, v6, :cond_3

    const/16 v6, 0x1e

    goto :goto_3

    :cond_3
    const/16 v6, 0x1d

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v5, p3

    sget-object v0, Lcom/android/calendar/LunarHelper;->SOLAR:[I

    aget v3, v0, v1

    sub-int v3, p1, v3

    aget v0, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0xc

    invoke-static {v0, v4, v3}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v0, v2, v4}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v2

    invoke-static {v0, v4, v1}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v0

    invoke-static {v3, v2, v0}, Lcom/android/calendar/LunarHelper;->solarToInt(III)J

    move-result-wide v2

    int-to-long v4, v5

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/calendar/LunarHelper;->solarFromInt(J)[I

    move-result-object v0

    aget v2, v0, v1

    aget v3, v0, v6

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/calendar/LunarHelper;->solarToLunar(III)[I

    move-result-object v2

    aget v1, v2, v1

    if-ne v1, p1, :cond_5

    aget p1, v2, v6

    if-ne p1, p2, :cond_5

    aget p1, v2, v4

    if-ne p1, p3, :cond_5

    const/4 p1, 0x3

    aget p1, v2, p1

    if-ne p1, p4, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    throw p1
.end method

.method public solarToLunar(III)[I
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget-object v2, Lcom/android/calendar/LunarHelper;->SOLAR:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    sub-int v4, p1, v4

    shl-int/lit8 v5, p1, 0x9

    shl-int/lit8 v6, p2, 0x5

    or-int/2addr v5, v6

    or-int/2addr v5, p3

    aget v6, v2, v4

    if-le v6, v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    aget v2, v2, v4

    const/16 v5, 0xc

    const/16 v6, 0x9

    invoke-static {v2, v5, v6}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v2, v0, v6}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v7

    invoke-static {v2, v6, v3}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v2

    invoke-static {p1, p2, p3}, Lcom/android/calendar/LunarHelper;->solarToInt(III)J

    move-result-wide p1

    invoke-static {v5, v7, v2}, Lcom/android/calendar/LunarHelper;->solarToInt(III)J

    move-result-wide v5

    sub-long/2addr p1, v5

    sget-object p3, Lcom/android/calendar/LunarHelper;->LUNAR_MONTH_DAYS:[I

    aget p3, p3, v4

    const/16 v2, 0xd

    invoke-static {p3, v0, v2}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v0

    sget-object v5, Lcom/android/calendar/LunarHelper;->SOLAR:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    const-wide/16 v5, 0x1

    add-long/2addr p1, v5

    const/4 v5, 0x1

    move v6, v3

    move v7, v5

    :goto_0
    if-ge v6, v2, :cond_2

    rsub-int/lit8 v8, v6, 0xc

    invoke-static {p3, v5, v8}, Lcom/android/calendar/LunarHelper;->getBitInt(III)I

    move-result v8

    if-ne v8, v5, :cond_1

    const/16 v8, 0x1e

    goto :goto_1

    :cond_1
    const/16 v8, 0x1d

    :goto_1
    int-to-long v8, v8

    cmp-long v10, p1, v8

    if-lez v10, :cond_2

    add-int/lit8 v7, v7, 0x1

    sub-long/2addr p1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    long-to-int p1, p1

    aput v4, v1, v3

    aput v7, v1, v5

    const/4 p2, 0x3

    aput v3, v1, p2

    if-eqz v0, :cond_3

    if-le v7, v0, :cond_3

    add-int/lit8 p3, v7, -0x1

    aput p3, v1, v5

    add-int/2addr v0, v5

    if-ne v7, v0, :cond_3

    aput v5, v1, p2

    :cond_3
    const/4 p2, 0x2

    aput p1, v1, p2

    return-object v1
.end method
