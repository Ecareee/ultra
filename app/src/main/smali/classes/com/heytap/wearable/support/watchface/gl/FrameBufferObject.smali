.class public Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;
.super Lcom/heytap/wearable/support/watchface/gl/material/Texture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;
    }
.end annotation


# instance fields
.field public mDepthRenderBuffers:[I

.field public mFrameBuffers:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/Texture;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mDepthRenderBuffers:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mFrameBuffers:[I

    return-void
.end method


# virtual methods
.method public BeginRenderToTarget()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mFrameBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public EndRenderToTarget()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public init(II)Z
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->FBO_SHORT565:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->init(IILcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;)Z

    move-result p1

    return p1
.end method

.method public init(IILcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;)Z
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    move/from16 v1, p2

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mFrameBuffers:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_0
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mFrameBuffers:[I

    aget v1, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aget v5, v1, v2

    if-nez v5, :cond_1

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_1
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mTexture:[I

    aget v1, v1, v2

    const/16 v5, 0xde1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0x2801

    const/high16 v7, 0x46180000    # 9728.0f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2800

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v7, 0x47037000    # 33648.0f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    sget-object v6, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$1;->$SwitchMap$com$heytap$wearable$support$watchface$gl$FrameBufferObject$FboBufferType:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const v10, 0x881b

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v12, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    const/4 v13, 0x0

    const/16 v14, 0x1907

    const/16 v15, 0x140b

    goto :goto_0

    :cond_3
    const/16 v17, 0xde1

    const/16 v18, 0x0

    const/16 v19, 0x1907

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    const/16 v22, 0x0

    const/16 v23, 0x1907

    const/16 v24, 0x1401

    const/16 v25, 0x0

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v17 .. v25}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_4
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1907

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v12, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    const/4 v13, 0x0

    const/16 v14, 0x1907

    const v15, 0x8363

    :goto_0
    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    const v6, 0x8ce0

    invoke-static {v3, v6, v5, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mDepthRenderBuffers:[I

    aget v5, v1, v2

    if-nez v5, :cond_5

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    :cond_5
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;->mDepthRenderBuffers:[I

    aget v1, v1, v2

    const v5, 0x8d41

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v6, 0x81a5

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v8, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v6, 0x8d00

    invoke-static {v3, v6, v5, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v3, 0x8cd5

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    return v4
.end method
