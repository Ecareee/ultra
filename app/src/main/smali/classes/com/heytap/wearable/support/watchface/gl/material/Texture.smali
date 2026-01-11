.class public Lcom/heytap/wearable/support/watchface/gl/material/Texture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/gl/Disposable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final TEXTURE_INVALID_ID:I


# instance fields
.field public mHeight:I

.field public mTexture:[I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method public activeTexture(I)V
    .locals 1

    const v0, 0x84c0

    add-int/2addr p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aput v2, v0, v2

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    return v0
.end method

.method public getTextureId()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public updateData(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "Texture"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-lez v3, :cond_0

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aget v1, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v4, 0x46240400    # 10497.0f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string p1, "updateData"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "updateData: bitmap is empty"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateSubData(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "Texture"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v2, v2, v2, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    const-string p1, "updateSubData"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "updateSubData: bitmap is empty"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
