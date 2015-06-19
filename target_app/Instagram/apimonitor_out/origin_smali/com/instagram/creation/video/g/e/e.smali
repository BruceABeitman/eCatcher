.class final Lcom/instagram/creation/video/g/e/e;
.super Ljava/lang/Object;
.source "TranscodeTextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:Lcom/instagram/creation/video/gl/i;

.field protected b:Lcom/instagram/creation/video/j/l;

.field private final c:[F

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/instagram/creation/video/e/b;

.field private h:Lcom/instagram/creation/video/j/h;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/e;->c:[F

    const/16 v0, -0x3039

    iput v0, p0, Lcom/instagram/creation/video/g/e/e;->e:I

    invoke-static {}, Lcom/instagram/creation/video/e/e;->c()Lcom/instagram/creation/video/j/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/e;->b:Lcom/instagram/creation/video/j/l;

    new-instance v0, Lcom/instagram/creation/video/e/b;

    invoke-direct {v0}, Lcom/instagram/creation/video/e/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/e;->g:Lcom/instagram/creation/video/e/b;

    new-instance v0, Lcom/instagram/creation/video/j/h;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/h;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/e;->h:Lcom/instagram/creation/video/j/h;

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->h:Lcom/instagram/creation/video/j/h;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/h;->a(Lcom/instagram/creation/b/a/a;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->h:Lcom/instagram/creation/video/j/h;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/h;->b(Lcom/instagram/creation/b/a/a;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->c:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/g/e/e;->e:I

    return v0
.end method

.method public final a(Landroid/graphics/SurfaceTexture;Lcom/instagram/creation/video/e/c;)V
    .registers 8

    const v4, 0x8d40

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const-string v0, "onDrawFrame start"

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->c:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-static {v1, v2, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/instagram/creation/video/g/e/e;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->a:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->a()I

    move-result v0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->g:Lcom/instagram/creation/video/e/b;

    iget v1, p0, Lcom/instagram/creation/video/g/e/e;->e:I

    iget-object v2, p0, Lcom/instagram/creation/video/g/e/e;->h:Lcom/instagram/creation/video/j/h;

    invoke-virtual {v2}, Lcom/instagram/creation/video/j/h;->a()Lcom/instagram/creation/video/j/l;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/creation/video/g/e/e;->c:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/creation/video/e/b;->a(ILcom/instagram/creation/video/j/l;[F)V

    const/4 v0, 0x0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->a:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/e;->b:Lcom/instagram/creation/video/j/l;

    invoke-virtual {p2, v0, v1}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/e/c;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/g/e/e;->g:Lcom/instagram/creation/video/e/b;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/b;->e()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/g/e/e;->d:I

    new-instance v0, Lcom/instagram/creation/video/gl/i;

    const/16 v1, 0x280

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/e;->a:Lcom/instagram/creation/video/gl/i;

    const v0, 0x8d65

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/g/e/e;->e:I

    iget v0, p0, Lcom/instagram/creation/video/g/e/e;->d:I

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/g/e/e;->f:I

    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/instagram/creation/video/g/e/e;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {p1}, Lcom/instagram/creation/video/e/c;->e()I

    return-void
.end method
