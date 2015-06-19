.class public abstract Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "BaseTiltShiftFilter.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private c:Landroid/graphics/PointF;

.field private d:F

.field private e:Landroid/graphics/PointF;

.field private f:F

.field private g:F

.field private h:Ljava/nio/IntBuffer;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    invoke-virtual {p0, v1, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    invoke-virtual {p0, v1, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a(I)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    return-void
.end method

.method protected static c(FF)F
    .registers 3

    const/high16 v0, 0x3f80

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private c(F)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_16

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    :cond_16
    return-void
.end method

.method private d(F)V
    .registers 5

    const v0, 0x3dcccccd

    invoke-static {p1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v1, v2, :cond_21

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    :goto_f
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3fc0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    :cond_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v1, v2, :cond_20

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    goto :goto_f
.end method


# virtual methods
.method public final a(F)V
    .registers 3

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    return-void
.end method

.method public final a(FF)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_17
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_17
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    goto :goto_27
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .registers 6

    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    const-string v0, "blurMode"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    const-string v0, "origin"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    const-string v0, "outerRadius"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    const-string v0, "theta"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V

    return-void
.end method

.method protected abstract a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V
.end method

.method protected abstract b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.end method

.method public final b(F)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    :goto_8
    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    return-void

    :cond_d
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    goto :goto_8
.end method

.method public final b(FF)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    goto :goto_13
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
