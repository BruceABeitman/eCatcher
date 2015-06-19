.class public Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "LanczosFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private final c:Ljava/nio/FloatBuffer;

.field private final d:Ljava/nio/FloatBuffer;

.field private final e:Ljava/nio/FloatBuffer;

.field private final f:Ljava/nio/FloatBuffer;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private final i:Ljava/nio/IntBuffer;

.field private final j:Ljava/nio/IntBuffer;

.field private k:Lcom/instagram/filterkit/b/b;

.field private l:Lcom/instagram/filterkit/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/c;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/c;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .registers 16

    const/high16 v11, 0x4000

    const/4 v3, 0x0

    const/16 v10, 0xde1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "LanczosX"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21c

    const-string v0, "LanczosXFixed"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    :goto_1f
    if-nez v4, :cond_23

    move-object v0, v3

    :goto_22
    return-object v0

    :cond_23
    const-string v0, "LanczosY"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "LanczosYFixed"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    :cond_31
    if-nez v0, :cond_35

    move-object v0, v3

    goto :goto_22

    :cond_35
    new-instance v5, Lcom/instagram/filterkit/b/b;

    invoke-direct {v5, v4}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    new-instance v4, Lcom/instagram/filterkit/b/b;

    invoke-direct {v4, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    :cond_46
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->d()I

    move-result v4

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v0

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v5

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v6

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v1, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "srcWidth"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    int-to-float v0, v0

    int-to-float v7, v6

    div-float/2addr v0, v7

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "scale"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v1, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "lanczosFactor"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    mul-float/2addr v0, v11

    invoke-virtual {v7, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "srcLanczosFactor"

    iget-object v8, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "position"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "transformedTextureCoordinate"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "staticTextureCoordinate"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v8

    sget-object v9, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v0, v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    invoke-virtual {p1, v6, v4}, Lcom/instagram/filterkit/d/c;->a(II)Lcom/instagram/filterkit/e/b;

    move-result-object v6

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v0

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v7

    invoke-static {v1, v1, v0, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "LanczosFilter.resizeX:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    const v7, 0x8d40

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v8

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-nez v0, :cond_e9

    const-string v0, "LanczosFilter.resizeX:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12a

    :cond_e9
    move v0, v2

    :goto_ea
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v7}, Lcom/instagram/filterkit/b/b;->b()V

    if-nez v0, :cond_f9

    const-string v0, "LanczosFilter.resizeX:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12c

    :cond_f9
    move v0, v2

    :goto_fa
    const/4 v7, 0x5

    const/4 v8, 0x4

    invoke-static {v7, v1, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    if-nez v0, :cond_109

    const-string v0, "LanczosFilter.resizeX:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    :cond_109
    move v0, v2

    :goto_10a
    if-eqz v0, :cond_130

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v1, 0x2601

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v6}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;)V

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/d/e;)V

    move-object v0, v3

    goto/16 :goto_22

    :cond_12a
    move v0, v1

    goto :goto_ea

    :cond_12c
    move v0, v1

    goto :goto_fa

    :cond_12e
    move v0, v1

    goto :goto_10a

    :cond_130
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v7, "srcHeight"

    iget-object v8, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    int-to-float v0, v4

    int-to-float v4, v5

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v5, "scale"

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v5, "lanczosFactor"

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    mul-float/2addr v0, v11

    invoke-virtual {v4, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "srcLanczosFactor"

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "position"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "transformedTextureCoordinate"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "staticTextureCoordinate"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "image"

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v5

    sget-object v7, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v0, v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v0

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2600

    invoke-static {v10, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v4, 0x2600

    invoke-static {v10, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v4

    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v5

    invoke-static {v1, v1, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "LanczosFilter.resizeY:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20f

    move v0, v2

    :goto_1ca
    const v5, 0x8d40

    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v7

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-nez v0, :cond_1de

    const-string v0, "LanczosFilter.resizeY:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    :cond_1de
    move v0, v2

    :goto_1df
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v5}, Lcom/instagram/filterkit/b/b;->b()V

    if-nez v0, :cond_1ee

    const-string v0, "LanczosFilter.resizeY:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_213

    :cond_1ee
    move v0, v2

    :goto_1ef
    const/4 v5, 0x5

    const/4 v7, 0x4

    invoke-static {v5, v1, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    if-nez v0, :cond_1fe

    const-string v0, "LanczosFilter.resizeY:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_215

    :cond_1fe
    :goto_1fe
    invoke-static {v6}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;)V

    invoke-virtual {p1, p2, v3}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    if-eqz v2, :cond_217

    invoke-virtual {p1, v4, v3}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/d/e;)V

    move-object v0, v3

    goto/16 :goto_22

    :cond_20f
    move v0, v1

    goto :goto_1ca

    :cond_211
    move v0, v1

    goto :goto_1df

    :cond_213
    move v0, v1

    goto :goto_1ef

    :cond_215
    move v2, v1

    goto :goto_1fe

    :cond_217
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->b:Z

    move-object v0, v4

    goto/16 :goto_22

    :cond_21c
    move v4, v0

    goto/16 :goto_1f
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    :cond_13
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    :cond_25
    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
