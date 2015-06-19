.class public abstract Lcom/instagram/creation/video/gl/aa;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/instagram/creation/video/ui/k;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation


# instance fields
.field protected a:Lcom/instagram/creation/video/gl/b;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:I

.field private d:I

.field private e:[F

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/aa;->e:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/aa;->f:Z

    return-void
.end method

.method private static a(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->e:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_b
    return-void
.end method

.method private static a(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->d:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/aa;->c:I

    return v0
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/instagram/creation/video/gl/aa;->c:I

    iput p2, p0, Lcom/instagram/creation/video/gl/aa;->d:I

    return-void
.end method

.method protected a([F)V
    .registers 2

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/aa;->d:I

    return v0
.end method

.method public b(Lcom/instagram/creation/video/gl/c;IIII)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/aa;->f:Z

    if-nez v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/aa;->e:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/instagram/creation/video/gl/c;->a(I)V

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-interface {p1, v2, v3}, Lcom/instagram/creation/video/gl/c;->b(FF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    const/4 v0, 0x0

    div-int/lit8 v1, p5, 0x2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->e:[F

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/aa;->a([F)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/aa;->e:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/instagram/creation/video/gl/c;->a(Lcom/instagram/creation/video/gl/a;[FIIII)V

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->c()V

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_50

    goto :goto_6

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 4

    new-instance v0, Lcom/instagram/creation/video/gl/b;

    invoke-direct {v0}, Lcom/instagram/creation/video/gl/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    iget v1, p0, Lcom/instagram/creation/video/gl/aa;->c:I

    iget v2, p0, Lcom/instagram/creation/video/gl/aa;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/gl/b;->a(II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/instagram/creation/video/gl/aa;->c:I

    iget v2, p0, Lcom/instagram/creation/video/gl/aa;->d:I

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/gl/aa;->a(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/aa;->f:Z

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/aa;->f:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_15

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/b;->i()V

    iput-object v1, p0, Lcom/instagram/creation/video/gl/aa;->a:Lcom/instagram/creation/video/gl/b;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/instagram/creation/video/gl/aa;->a(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/aa;->b:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
