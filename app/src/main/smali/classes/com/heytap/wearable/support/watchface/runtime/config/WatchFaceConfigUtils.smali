.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLORS:Ljava/lang/String; = "mColors"

.field private static final COLOR_BLACK:Ljava/lang/String; = "#000000"

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final HEIGHT:I = 0x1dc

.field private static final INDEX_0:I = 0x0

.field private static final INDEX_1:I = 0x1

.field private static final INDEX_2:I = 0x2

.field private static final MAIN_COLOR:Ljava/lang/String; = "mainColor"

.field private static final PURE_B:Ljava/lang/String; = "pure_b"

.field private static final PURE_TAG:Ljava/lang/String; = "pure_"

.field private static final SECOND_COLOR:Ljava/lang/String; = "secondColor"

.field private static final TAG:Ljava/lang/String; = "WatchFaceConfigUtils"

.field private static final THIRD_COLOR:Ljava/lang/String; = "thirdColor"

.field private static final TIME_PRE_VIEW:Ljava/lang/String; = "mTimePreView"

.field private static final WIDTH:I = 0x192


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBackgroundVectorBitmap(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "WatchFaceConfigUtils"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object p0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "mColors"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->setAllowCaching(Z)V

    const-string v1, "mainColor"

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    const-string v2, "secondColor"

    invoke-virtual {p0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    const-string v3, "thirdColor"

    invoke-virtual {p0, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v4, v5, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v6, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    if-eqz v1, :cond_5

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_5
    if-eqz p1, :cond_8

    const-string v1, "pure_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->getConvertColor(I)I

    move-result v1

    const-string v4, "pure_b"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "[createBackgroundVectorBitmap] --> category = b or d"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->getBCategoryConvertColor(I)I

    move-result v1

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setFillColor(I)V

    :cond_8
    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "[createBackgroundVectorBitmap] --> return black bitmap ,message="

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x192

    const/16 v2, 0x1dc

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object v0
.end method

.method public static getEditBackgroundBitmap(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "WatchFaceConfigUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEditBackgroundBitmap] packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isFromSdcard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "drawable"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackgroundPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string p0, "[getEditBackgroundBitmap] load edit background from path"

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackgroundPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v5, "[getEditBackgroundBitmap] load edit background from resources"

    invoke-static {v0, v5}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[getEditBackgroundBitmap] --> "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static getEditBackgroundBitmapOsOne(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "WatchFaceConfigUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "drawable"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getExtraJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v3, v6, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEngineBackground()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEngineBackground()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6, v4}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->createBackgroundVectorBitmap(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "mTimePreView"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v3, p1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_2

    return-object p0

    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v3, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v2, "load edit background from path"

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackgroundPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "[getEditBackgroundBitmap] --> "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method public static getEditHandDrawable(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditHandDrawable()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "drawable"

    invoke-virtual {p0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[getEditHandDrawable] --> "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatchFaceConfigUtils"

    invoke-static {p1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getEngineBackgroundBitmap(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "WatchFaceConfigUtils"

    :try_start_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getCurrentStyleConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getEngineBackgroundBitmap] isFromSdcard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getEngineBackgroundBitmap] --> getEditBackgroundPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackgroundPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackgroundPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEngineBackground()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEngineBackgroundBitmap watchFaceBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[getEngineBackgroundBitmap] --> "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getPreviewBitmap(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "WatchFaceConfigUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->isFromSdcard()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "drawable"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResNamePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResNamePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string p0, "[getPreviewBitmap] load edit background from path"

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResNamePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v5, "[getPreviewBitmap] load edit background from resources"

    invoke-static {v0, v5}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getPreviewResName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[getPreviewBitmap] --> "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v3, v5, v5, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, p0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1

    :cond_1
    :goto_0
    const-string p0, "WatchFaceConfigUtils"

    const-string p1, "[mergeBitmap] --> error"

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
