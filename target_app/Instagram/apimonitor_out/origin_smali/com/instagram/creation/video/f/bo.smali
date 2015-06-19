.class final Lcom/instagram/creation/video/f/bo;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoTrimFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bi;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/bi;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bo;-><init>(Lcom/instagram/creation/video/f/bi;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->k()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return v6

    :cond_19
    iget-object v1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/video/l/h;->f()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_68

    float-to-double v2, p4

    div-double v0, v2, v0

    :goto_39
    const-wide/high16 v2, 0x3ff0

    iget-object v4, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v4}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    double-to-float v3, v0

    invoke-static {v2, v3}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;F)V

    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    goto :goto_18

    :cond_68
    float-to-double v2, p3

    div-double v0, v2, v0

    goto :goto_39
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->r(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->performClick()Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
