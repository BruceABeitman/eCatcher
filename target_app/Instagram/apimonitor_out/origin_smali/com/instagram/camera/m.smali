.class public final Lcom/instagram/camera/m;
.super Ljava/lang/Object;
.source "FocusManager.java"


# instance fields
.field a:Lcom/instagram/camera/n;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Matrix;

.field private h:Lcom/instagram/camera/s;

.field private i:Landroid/view/View;

.field private j:Lcom/instagram/camera/ui/FocusIndicatorView;

.field private k:Landroid/view/View;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/hardware/Camera$Parameters;

.field private r:Lcom/instagram/camera/k;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/camera/k;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/instagram/camera/m;->b:I

    iput-object p1, p0, Lcom/instagram/camera/m;->r:Lcom/instagram/camera/k;

    iput-object p2, p0, Lcom/instagram/camera/m;->o:Ljava/lang/String;

    new-instance v0, Lcom/instagram/camera/o;

    invoke-direct {v0, p0, v1}, Lcom/instagram/camera/o;-><init>(Lcom/instagram/camera/m;B)V

    iput-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/m;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method private a(IIFIIIILandroid/graphics/Rect;)V
    .registers 16

    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v3}, Lcom/instagram/camera/h;->b(II)I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v4}, Lcom/instagram/camera/h;->b(II)I

    move-result v3

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/instagram/camera/m;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v4, p8}, Lcom/instagram/camera/h;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/camera/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/camera/m;->s()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    if-eq v0, v10, :cond_14

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    :cond_14
    invoke-direct {p0}, Lcom/instagram/camera/m;->s()V

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    if-nez v0, :cond_6f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/m;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/camera/m;->m:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/instagram/camera/m;->a(IIFIIIILandroid/graphics/Rect;)V

    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/instagram/camera/m;->m:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/instagram/camera/m;->a(IIFIIIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v1, v6, v1

    invoke-static {v3, v1}, Lcom/instagram/camera/h;->b(II)I

    move-result v1

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v5, v3

    sub-int v2, v7, v2

    invoke-static {v3, v2}, Lcom/instagram/camera/h;->b(II)I

    move-result v2

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0xd

    aput v9, v0, v1

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->e()V

    iget-boolean v0, p0, Lcom/instagram/camera/m;->d:Z

    if-eqz v0, :cond_ce

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_ce

    invoke-direct {p0}, Lcom/instagram/camera/m;->r()V

    :goto_cd
    return v10

    :cond_ce
    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_cd
.end method

.method private p()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/instagram/camera/m;->e:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private q()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    return v0
.end method

.method private r()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->b()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/camera/m;->b:I

    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8
.end method

.method private s()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/camera/m;->v()V

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->c()V

    iput v1, p0, Lcom/instagram/camera/m;->b:I

    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private t()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iput v1, p0, Lcom/instagram/camera/m;->b:I

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method private u()V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/instagram/camera/m;->j:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/camera/m;->j:Lcom/instagram/camera/ui/FocusIndicatorView;

    iget v1, p0, Lcom/instagram/camera/m;->b:I

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    if-nez v1, :cond_2f

    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->d()V

    goto :goto_4

    :cond_2f
    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->a()V

    goto :goto_4

    :cond_33
    iget v1, p0, Lcom/instagram/camera/m;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3d

    iget v1, p0, Lcom/instagram/camera/m;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    :cond_3d
    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->a()V

    goto :goto_4

    :cond_41
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->a()V

    goto :goto_4

    :cond_4f
    iget v1, p0, Lcom/instagram/camera/m;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_58

    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->b()V

    goto :goto_4

    :cond_58
    iget v1, p0, Lcom/instagram/camera/m;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lcom/instagram/camera/ui/a;->c()V

    goto :goto_4
.end method

.method private v()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/instagram/camera/m;->j:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0xd

    aput v4, v0, v1

    iget-object v0, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-object v5, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    iput-object v5, p0, Lcom/instagram/camera/m;->m:Ljava/util/List;

    goto :goto_6
.end method

.method private w()Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/camera/m;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/instagram/camera/m;->e:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->e()V

    :cond_15
    invoke-direct {p0}, Lcom/instagram/camera/m;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/instagram/camera/m;->r()V

    goto :goto_4
.end method

.method public final a(Landroid/content/res/AssetFileDescriptor;)V
    .registers 3

    new-instance v0, Lcom/instagram/camera/s;

    invoke-direct {v0, p1}, Lcom/instagram/camera/s;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    return-void
.end method

.method public final a(Landroid/hardware/Camera$Parameters;)V
    .registers 6

    const/16 v3, 0xe

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_28

    invoke-direct {p0}, Lcom/instagram/camera/m;->q()I

    move-result v1

    :goto_d
    if-lez v1, :cond_1e

    const-string v1, "auto"

    iget-object v2, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/camera/m;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    iput-boolean v0, p0, Lcom/instagram/camera/m;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_27

    invoke-direct {p0}, Lcom/instagram/camera/m;->p()V

    :cond_27
    return-void

    :cond_28
    move v1, v0

    goto :goto_d
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Lcom/instagram/camera/n;ZI)V
    .registers 9

    iput-object p1, p0, Lcom/instagram/camera/m;->i:Landroid/view/View;

    sget v0, Lcom/facebook/av;->focus_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    iput-object v0, p0, Lcom/instagram/camera/m;->j:Lcom/instagram/camera/ui/FocusIndicatorView;

    iput-object p2, p0, Lcom/instagram/camera/m;->k:Landroid/view/View;

    iput-object p3, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p4, p5, v1, v2}, Lcom/instagram/camera/h;->a(Landroid/graphics/Matrix;ZIII)V

    iget-object v1, p0, Lcom/instagram/camera/m;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    :goto_2c
    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    invoke-direct {p0}, Lcom/instagram/camera/m;->v()V

    return-void

    :cond_33
    const-string v0, "FocusManager"

    const-string v1, "mParameters is not initialized."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/camera/m;->p:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x3

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    if-eqz p1, :cond_12

    iput v2, p0, Lcom/instagram/camera/m;->b:I

    :goto_b
    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    invoke-direct {p0}, Lcom/instagram/camera/m;->t()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iput v3, p0, Lcom/instagram/camera/m;->b:I

    goto :goto_b

    :cond_15
    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    if-eqz p1, :cond_47

    iput v2, p0, Lcom/instagram/camera/m;->b:I

    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    invoke-virtual {v0}, Lcom/instagram/camera/s;->a()V

    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    if-nez v0, :cond_3e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_11

    :cond_3e
    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11

    :cond_47
    iput v3, p0, Lcom/instagram/camera/m;->b:I

    goto :goto_31

    :cond_4a
    iget v0, p0, Lcom/instagram/camera/m;->b:I

    goto :goto_11
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_16

    invoke-direct {p0}, Lcom/instagram/camera/m;->r()V

    const/4 v0, 0x1

    goto :goto_a

    :cond_16
    invoke-direct {p0, p1}, Lcom/instagram/camera/m;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/instagram/camera/m;->w()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    :cond_1a
    invoke-direct {p0}, Lcom/instagram/camera/m;->s()V

    :cond_1d
    iget-boolean v0, p0, Lcom/instagram/camera/m;->e:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    iget-object v0, p0, Lcom/instagram/camera/m;->a:Lcom/instagram/camera/n;

    invoke-interface {v0}, Lcom/instagram/camera/n;->e()V

    goto :goto_4
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/camera/m;->c:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/instagram/camera/m;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    :cond_15
    invoke-direct {p0}, Lcom/instagram/camera/m;->t()V

    goto :goto_4

    :cond_19
    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/camera/m;->b:I

    goto :goto_4

    :cond_22
    iget v0, p0, Lcom/instagram/camera/m;->b:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/instagram/camera/m;->t()V

    goto :goto_4
.end method

.method public final d()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/camera/m;->v()V

    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/m;->b:I

    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/m;->b:I

    invoke-direct {p0}, Lcom/instagram/camera/m;->v()V

    invoke-direct {p0}, Lcom/instagram/camera/m;->u()V

    return-void
.end method

.method public final g()V
    .registers 1

    invoke-virtual {p0}, Lcom/instagram/camera/m;->f()V

    return-void
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    invoke-virtual {v0}, Lcom/instagram/camera/s;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/m;->h:Lcom/instagram/camera/s;

    :cond_c
    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/instagram/camera/m;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/camera/m;->p:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/instagram/camera/m;->d:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    if-eqz v0, :cond_36

    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    :goto_13
    iget-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/m;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/m;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    goto :goto_6

    :cond_36
    iget-object v0, p0, Lcom/instagram/camera/m;->r:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_focusmode_key"

    iget-object v2, p0, Lcom/instagram/camera/m;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    goto :goto_13

    :cond_43
    iget-object v0, p0, Lcom/instagram/camera/m;->q:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/m;->n:Ljava/lang/String;

    goto :goto_33
.end method

.method public final j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/camera/m;->l:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/camera/m;->m:Ljava/util/List;

    return-object v0
.end method

.method public final l()Z
    .registers 3

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/instagram/camera/m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/camera/m;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    return-void
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/camera/m;->f:Z

    return v0
.end method
