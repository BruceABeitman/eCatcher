.class public final Lcom/instagram/creation/video/gl/i;
.super Ljava/lang/Object;
.source "GLOffscreenFramebuffer.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/g;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 12

    const v9, 0x8d40

    const/16 v2, 0x1908

    const/4 v4, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/creation/video/gl/i;->a:I

    new-array v3, v4, [I

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v3, v3, v1

    iput v3, p0, Lcom/instagram/creation/video/gl/i;->c:I

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(I)I

    move-result v3

    iput v3, p0, Lcom/instagram/creation/video/gl/i;->b:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, p0, Lcom/instagram/creation/video/gl/i;->c:I

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    iget v3, p0, Lcom/instagram/creation/video/gl/i;->b:I

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v1, v1, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/i;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 14

    const v11, 0x8d40

    const/16 v2, 0x1908

    const/4 v10, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v3, p0, Lcom/instagram/creation/video/gl/i;->a:I

    if-ne p1, v3, :cond_e

    :goto_d
    return-void

    :cond_e
    iput p1, p0, Lcom/instagram/creation/video/gl/i;->a:I

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(I)I

    move-result v9

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, p0, Lcom/instagram/creation/video/gl/i;->c:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    invoke-static {v11, v2, v0, v9, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    new-array v0, v10, [I

    iget v2, p0, Lcom/instagram/creation/video/gl/i;->b:I

    aput v2, v0, v1

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v9, p0, Lcom/instagram/creation/video/gl/i;->b:I

    goto :goto_d
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/i;->b:I

    return v0
.end method

.method public final c()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    new-array v0, v3, [I

    iget v1, p0, Lcom/instagram/creation/video/gl/i;->c:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iget v1, p0, Lcom/instagram/creation/video/gl/i;->b:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
