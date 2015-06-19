.class public Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "GaussianBlurFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private final c:Ljava/nio/FloatBuffer;

.field private final d:Ljava/nio/FloatBuffer;

.field private final e:Ljava/nio/IntBuffer;

.field private final f:Ljava/nio/IntBuffer;

.field private final g:Ljava/nio/IntBuffer;

.field private h:Lcom/instagram/filterkit/b/b;

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/h;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/h;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .registers 14

    const v9, 0x8d40

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "GaussianBlur"

    invoke-static {v1}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "GaussianBlurFixed"

    invoke-static {v1}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    :cond_1b
    if-nez v1, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v2, Lcom/instagram/filterkit/b/b;

    invoke-direct {v2, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    :cond_28
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "kernelSize"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "initialGaussian"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "width"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->d()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "height"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "position"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "transformedTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "staticTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    const-string v1, "GaussianBlurFilter.blurX:setCoordinates"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v3

    sget-object v4, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "blurAlongX"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v3

    invoke-static {v6, v6, v1, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v1, "GaussianBlurFilter.blurX:glViewport"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v1

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "GaussianBlurFilter.blurX:glBindFramebuffer"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/b;->b()V

    const-string v1, "GaussianBlurFilter.blurX:prepareToRender"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v1, "GaussianBlurFilter.blurX:glDrawArrays"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "image"

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v4

    sget-object v5, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v1, v3, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v6, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "blurAlongX"

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v3

    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v4

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v3, "GaussianBlurFilter.blur:glViewport"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v3

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v3, "GaussianBlurFilter.blur:glBindFramebuffer"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v3}, Lcom/instagram/filterkit/b/b;->b()V

    const-string v3, "GaussianBlurFilter.blur:prepareToRender"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v3, "GaussianBlurFilter.blur:glDrawArrays"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-virtual {p1, v2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    invoke-virtual {p1, p2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    iput-boolean v6, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->b:Z

    move-object v0, v1

    goto/16 :goto_1d
.end method

.method public final a(F)V
    .registers 10

    const/4 v7, 0x0

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    const-wide/high16 v0, -0x4020

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    const-wide/high16 v3, 0x3ff0

    const-wide v5, 0x401921fb54442d18L

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    iget v5, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    mul-double/2addr v0, v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->w_()V

    return-void
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    :cond_16
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
    .registers 4

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
