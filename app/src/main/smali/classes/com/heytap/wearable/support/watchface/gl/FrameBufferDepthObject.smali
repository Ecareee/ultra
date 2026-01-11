.class public Lcom/heytap/wearable/support/watchface/gl/FrameBufferDepthObject;
.super Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;-><init>()V

    return-void
.end method


# virtual methods
.method public init(II)Z
    .locals 17

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

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1902

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mWidth:I

    iget v12, v0, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->mHeight:I

    const/4 v13, 0x0

    const/16 v14, 0x1902

    const/16 v15, 0x1403

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v6, 0x8d00

    invoke-static {v3, v6, v5, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v3, 0x8cd5

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    return v4
.end method
