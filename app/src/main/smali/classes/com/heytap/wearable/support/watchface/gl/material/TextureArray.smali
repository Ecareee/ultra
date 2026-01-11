.class public Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;
.super Lcom/heytap/wearable/support/watchface/gl/material/Texture;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureArray"


# instance fields
.field public mBitMapList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mDepth:I

.field private mListLock:Ljava/util/concurrent/locks/Lock;

.field private mLoadNum:I

.field private mReady:Z

.field private mUpdateState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/Texture;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mDepth:I

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mBitMapList:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mReady:Z

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mLoadNum:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mUpdateState:I

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mBitMapList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->updateArrayData(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mBitMapList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mLoadNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mLoadNum:I

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public activeTexture(I)V
    .locals 2

    const v0, 0x84c0

    add-int/2addr p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    const v0, 0x8c1a

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mReady:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->update()V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGLError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureArray"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(III)V
    .locals 6

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mDepth:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aget p1, p1, p3

    const p2, 0x8c1a

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const p3, 0x461c0c00    # 9987.0f

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const p3, 0x47012f00    # 33071.0f

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v4, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    iget v5, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mDepth:I

    const v0, 0x8c1a

    const/4 v1, 0x3

    const v2, 0x8058

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glTexStorage3D(IIIIII)V

    return-void
.end method

.method public isElementReady(I)Z
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mUpdateState:I

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mLoadNum:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mDepth:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mReady:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->update()V

    :goto_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mReady:Z

    return v0
.end method

.method public reSet()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mReady:Z

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mLoadNum:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mBitMapList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mUpdateState:I

    return-void
.end method

.method public updateArrayData(Landroid/graphics/Bitmap;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mUpdateState:I

    const/4 v3, 0x1

    shl-int v3, v3, p2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mUpdateState:I

    move/from16 v2, p3

    int-to-double v3, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    div-int v9, v4, v3

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    div-int v10, v4, v3

    mul-int v3, v9, v10

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    if-eqz v1, :cond_0

    invoke-virtual {v1, v14}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const v15, 0x8c1a

    const-string v13, "TextureArray"

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v4, 0x8c1a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x1908

    const/16 v1, 0x1401

    move/from16 v5, p3

    move/from16 v8, p2

    move-object v2, v13

    move v13, v1

    invoke-static/range {v4 .. v14}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    const-string v1, "updateSubData"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v13

    const-string v1, "updateSubData: bitmap is empty"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v15}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGLError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;II)V
    .locals 0

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mBitMapList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/TextureArray;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkGLError"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextureArray"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
