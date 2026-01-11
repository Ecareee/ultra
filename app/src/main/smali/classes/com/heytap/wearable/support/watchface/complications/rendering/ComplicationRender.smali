.class public abstract Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BG_COLOR:I = 0x26ffffff

.field private static final TAG:Ljava/lang/String; = "ComplicationRender"


# instance fields
.field public isEnglishRegion:Z

.field public isSmallWidget:Z

.field private mBackgroundEnabled:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

.field public mComplicationDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

.field public mContext:Landroid/content/Context;

.field public mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mDefStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mType:I

.field private mUiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mUiMode:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->initDefStyle()V

    return-void
.end method

.method private initDefStyle()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mDefStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    const-string v3, "ComplicationRender"

    if-eqz v2, :cond_0

    const-string v2, "checkUpdate starttime:"

    .line 1
    invoke-static {v2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " endtime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " currentTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getExpiredAction()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[checkUpdate] expiredAction is null"

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "[checkUpdate] pendingIntent send error"

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mType:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v1, "sys-sans-en"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUiMode()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mUiMode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public isBackgroundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBackgroundEnabled:Z

    return v0
.end method

.method public isChineseChar(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "[\\u4e00-\\u9fa5]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChineseChar :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isChineseChar:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ComplicationRender"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isEnglishRegion()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationRender"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportInActiveReset()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isSupportInActiveReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportPrivacyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isSupportPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onBoundsChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onDataChanged()V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onLocaleChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isEnglishRegion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isEnglishRegion:Z

    return-void
.end method

.method public abstract onStyleChanged()V
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBackgroundEnabled:Z

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {v0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setComplicationData] isDataUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationRender"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public setComplicationDrawable(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    return-void
.end method

.method public final setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mDefStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    :cond_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->onStyleChanged()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mType:I

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mUiMode:I

    return-void
.end method
