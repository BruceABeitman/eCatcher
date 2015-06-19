.class public final Lcom/instagram/creation/video/f/a;
.super Lcom/instagram/base/a/b;
.source "CamcorderFragment.java"

# interfaces
.implements Lcom/instagram/common/p/a;
.implements Lcom/instagram/creation/video/a/b;
.implements Lcom/instagram/creation/video/a/f;
.implements Lcom/instagram/creation/video/c;
.implements Lcom/instagram/creation/video/h/b;
.implements Lcom/instagram/creation/video/h/c;
.implements Lcom/instagram/creation/video/ui/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:Landroid/media/CamcorderProfile;

.field private aA:Ljava/lang/String;

.field private aB:Lcom/instagram/creation/video/i/a;

.field private aC:I

.field private volatile aD:Z

.field private aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

.field private aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

.field private aG:Landroid/view/SurfaceHolder$Callback;

.field private aH:Lcom/instagram/creation/video/a;

.field private aI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:I

.field private aK:Z

.field private aL:Z

.field private aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private aN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private aO:Lcom/instagram/camera/ui/RotateLayout;

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:I

.field private aT:Landroid/os/Handler;

.field private aa:I

.field private ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

.field private ac:Lcom/instagram/creation/video/ui/f;

.field private ad:Lcom/instagram/creation/video/gl/GLRootView;

.field private ae:Landroid/view/View;

.field private af:Lcom/instagram/creation/video/ui/VideoCancelButton;

.field private ag:Landroid/view/View;

.field private ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

.field private ai:Lcom/instagram/creation/video/ui/ClipStackView;

.field private aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Landroid/widget/ViewSwitcher;

.field private an:Lcom/instagram/creation/video/ui/VideoShutterButton;

.field private ao:Landroid/widget/ImageView;

.field private ap:Landroid/graphics/Bitmap;

.field private aq:Lcom/instagram/ui/dialog/f;

.field private ar:Lcom/instagram/creation/video/ui/r;

.field private as:Z

.field private at:Z

.field private au:J

.field private av:Z

.field private final aw:Lcom/instagram/camera/c;

.field private ax:Lcom/instagram/creation/b/a/b;

.field private ay:Landroid/content/SharedPreferences;

.field private az:I

.field protected b:Lcom/instagram/creation/video/a/a;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/hardware/Camera$Parameters;

.field private e:Lcom/instagram/creation/video/h/a;

.field private f:Landroid/graphics/Matrix;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/f/a;->g:I

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->av:Z

    new-instance v0, Lcom/instagram/camera/c;

    invoke-direct {v0}, Lcom/instagram/camera/c;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    iput v1, p0, Lcom/instagram/creation/video/f/a;->aC:I

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    new-instance v0, Lcom/instagram/creation/video/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    new-instance v0, Lcom/instagram/creation/video/f/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/f/b;-><init>(Lcom/instagram/creation/video/f/a;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/instagram/creation/video/f/a;)I
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v0

    return v0
.end method

.method static synthetic B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aM:Ljava/util/List;

    return-object v0
.end method

.method static synthetic C(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aN:Ljava/util/List;

    return-object v0
.end method

.method static synthetic D(Lcom/instagram/creation/video/f/a;)Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic E(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    return-object v0
.end method

.method static synthetic F(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera$Parameters;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic G(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    return v0
.end method

.method static synthetic H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    return-object v0
.end method

.method private Z()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aS:I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Lcom/instagram/ui/dialog/f;)Lcom/instagram/ui/dialog/f;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aM:Ljava/util/List;

    return-object p1
.end method

.method private a(II)V
    .registers 6

    iget v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_31

    :goto_6
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a/a;->b()I

    move-result v1

    if-ne v0, p2, :cond_16

    if-eq v1, p1, :cond_23

    :cond_16
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0, p2, p1}, Lcom/instagram/creation/video/a/a;->a(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->c()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->d()V

    :cond_23
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->d()V

    :cond_30
    return-void

    :cond_31
    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_6
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

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v4, p8}, Lcom/instagram/camera/h;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;IIFIIIILandroid/graphics/Rect;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/instagram/creation/video/f/a;->a(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/a;->d(Z)V

    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->a()Lcom/instagram/creation/video/ui/s;

    move-result-object v0

    if-eq v0, p1, :cond_1f

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    :cond_1f
    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;III)V
    .registers 9

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    :cond_f
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    sget v1, Lcom/facebook/ba;->Tooltip_Popup:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_33
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 3

    sget v0, Lcom/facebook/az;->video_failed_to_start:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/video/f/i;-><init>(Lcom/instagram/creation/video/f/a;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private aA()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget v2, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->a(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->b(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aB()V

    :cond_2b
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget v0, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/a;->a(II)V

    return-void
.end method

.method private aB()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_14
    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private aC()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    return-void
.end method

.method private aD()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v0

    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    :goto_11
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aE()V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "smdk4x12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "DB85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_28
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    const/4 v1, 0x2

    iput v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    :cond_2d
    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/instagram/creation/video/l/b;->b()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    :cond_3e
    return-void

    :cond_3f
    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->a(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    goto :goto_11
.end method

.method private aE()V
    .registers 7

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aa:I

    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDesiredPreviewWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". mDesiredPreviewHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_35
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/b;->a(Landroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4a

    :cond_61
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/video/l/b;->a(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aa:I

    goto :goto_1c
.end method

.method private aF()Lcom/instagram/creation/video/gl/q;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    return-object v0
.end method

.method private aG()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->e()V

    :cond_d
    return-void
.end method

.method private aH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    invoke-static {p0}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private aI()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private aJ()V
    .registers 4

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget v1, p0, Lcom/instagram/creation/video/f/a;->az:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2}, Lcom/instagram/creation/video/a;->o()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e
.end method

.method private aK()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->g()Z

    move-result v0

    if-eqz v0, :cond_36

    sget v0, Lcom/facebook/au;->video_delete_button:I

    :goto_16
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :goto_1e
    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v4, Lcom/instagram/creation/video/a/e;->d:I

    if-ne v0, v4, :cond_3f

    move v0, v1

    :goto_27
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iget v3, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v4, Lcom/instagram/creation/video/a/e;->d:I

    if-ne v3, v4, :cond_41

    :goto_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_36
    sget v0, Lcom/facebook/au;->video_soft_delete_button:I

    goto :goto_16

    :cond_39
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_1e

    :cond_3f
    move v0, v2

    goto :goto_27

    :cond_41
    move v1, v2

    goto :goto_32
.end method

.method private aL()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->o()I

    move-result v0

    if-lez v0, :cond_14

    const/16 v0, 0x8

    :goto_10
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private aM()V
    .registers 5

    sget-object v0, Lcom/instagram/creation/video/ui/s;->d:Lcom/instagram/creation/video/ui/s;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-nez v1, :cond_11

    new-instance v1, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    :cond_11
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x35

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    return-void
.end method

.method private aN()I
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private aO()V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    if-nez v0, :cond_15

    :cond_d
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t set up tap to focus, missing view"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    invoke-static {}, Lcom/instagram/creation/video/l/b;->a()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "CamcorderFragment"

    const-string v1, "Couldnt set up tap to focus, not supported"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_23
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/av;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/j;

    invoke-direct {v2, p0, v0}, Lcom/instagram/creation/video/f/j;-><init>(Lcom/instagram/creation/video/f/a;Lcom/instagram/camera/ui/FocusIndicatorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    goto :goto_4
.end method

.method private aP()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/av;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->d()V

    :cond_1f
    return-void
.end method

.method private aa()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->surfaceview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/instagram/creation/video/f/x;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/x;-><init>(Lcom/instagram/creation/video/f/a;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    :cond_1a
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setVisibility(I)V

    return-void
.end method

.method private ab()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ac()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/instagram/creation/video/l/j;->a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    goto :goto_a
.end method

.method private ac()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-static {v1}, Lcom/instagram/creation/video/l/j;->d(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_b} :catch_d

    const/4 v0, 0x1

    goto :goto_7

    :catch_d
    move-exception v1

    invoke-direct {p0, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private ad()V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/b;

    sget v1, Lcom/instagram/creation/base/c;->a:I

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aI()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/b;->a(IZ)V

    :cond_13
    return-void
.end method

.method private ae()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    :cond_1a
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->an()V

    :goto_27
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->onPause()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aG()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->black_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ai()V

    invoke-direct {p0, v2}, Lcom/instagram/creation/video/f/a;->c(Z)V

    return-void

    :cond_43
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    goto :goto_27
.end method

.method private af()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aC:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->c(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->onResume()V

    return-void
.end method

.method private ag()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/e;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/e;-><init>(Lcom/instagram/creation/video/f/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aJ()V

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->av()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aD()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aC()V

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()V

    :goto_23
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aj()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()V

    return-void

    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    goto :goto_23

    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/a;->au:J

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23
.end method

.method private ah()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method private ai()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private aj()V
    .registers 5

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private ak()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private al()V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->d(Z)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->am()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-nez v0, :cond_13

    const-string v0, "CamcorderFragment"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->as()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->at()V

    :try_start_19
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_21} :catch_25

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ak()V

    goto :goto_12

    :catch_25
    move-exception v0

    const-string v1, "CamcorderFragment"

    const-string v2, "Could not filter media recorder. "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ar()V

    :try_start_30
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_12

    :catch_36
    move-exception v0

    const-string v1, "CamcorderFragment"

    const-string v2, "Could not reconnect camera."

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method private am()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    invoke-static {}, Lcom/instagram/creation/video/h/d;->a()Lcom/instagram/creation/video/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    :try_start_11
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_16} :catch_57

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->b(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/media/CamcorderProfile;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/j;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Ljava/lang/String;)V

    :try_start_47
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->a()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_60

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0, p0}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/b;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0, p0}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/c;)V

    goto :goto_4

    :catch_57
    move-exception v0

    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t unlock camera"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_60
    move-exception v0

    const-string v1, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ar()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private an()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ao()Z

    return-void
.end method

.method private ao()Z
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-eqz v0, :cond_8f

    :try_start_9
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/b;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0, v2}, Lcom/instagram/creation/video/l/b;->a(ILandroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->d(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopVideoRecording: Setting current video filename: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/a;->a(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_83

    move v0, v1

    :goto_47
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->as:Z

    if-nez v0, :cond_56

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->n()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aq()V

    :cond_56
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    :cond_5d
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aj()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ar()V

    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    :cond_6c
    :goto_6c
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    :cond_78
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->i()V

    sget v1, Lcom/instagram/creation/video/a/e;->d:I

    invoke-direct {p0, v1}, Lcom/instagram/creation/video/f/a;->h(I)V

    return v0

    :catch_83
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;)Z

    :cond_8d
    const/4 v0, 0x1

    goto :goto_47

    :cond_8f
    move v0, v1

    goto :goto_6c
.end method

.method private ap()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->j()V

    return-void
.end method

.method private aq()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->l()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/video/i/a;->a()J

    move-result-wide v2

    int-to-long v4, v1

    sub-int v6, v1, v0

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-gtz v4, :cond_33

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    int-to-long v4, v1

    add-long v1, v4, v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/i/a;->b(J)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/instagram/creation/video/i/a;->b(J)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_32

    :catch_3e
    move-exception v0

    sget v0, Lcom/facebook/az;->unknown_error_occured:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ap()V

    goto :goto_32
.end method

.method private ar()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/common/u/a;->b(Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->d()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->e()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    :cond_1a
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    return-void
.end method

.method private as()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private at()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    return-void
.end method

.method private au()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method private av()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;I)V

    goto :goto_a
.end method

.method private aw()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    goto :goto_5
.end method

.method private ax()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    if-ne v0, v3, :cond_f

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ay()V

    :cond_f
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->Z()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :try_start_19
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aA()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_36

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aP()V

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-eqz v0, :cond_43

    :try_start_23
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2e} :catch_3b

    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_66

    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->av:Z

    :goto_35
    return-void

    :catch_36
    move-exception v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_3b
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4e} :catch_5e

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aS:I

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/creation/video/l/b;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2e

    :catch_5e
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_66
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method private ay()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    return-void
.end method

.method private az()V
    .registers 3

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ay()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/view/Surface;)V

    :cond_19
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aN:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_1c

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_1c
    invoke-virtual {v0, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    return-void

    :cond_20
    iget v1, p0, Lcom/instagram/creation/video/f/a;->aC:I

    goto :goto_13
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/r;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    return-object v0
.end method

.method private d(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/instagram/creation/video/l/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1e
    return-void
.end method

.method static synthetic e(Lcom/instagram/creation/video/f/a;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    return v0
.end method

.method private f(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method static synthetic f(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    return v0
.end method

.method private g(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method static synthetic g(Lcom/instagram/creation/video/f/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()V

    return-void
.end method

.method static synthetic h(Lcom/instagram/creation/video/f/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/creation/video/f/a;->au:J

    return-wide v0
.end method

.method private h(I)V
    .registers 5

    iput p1, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/a/d;

    iget v2, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/a/d;->b(I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method static synthetic i(Lcom/instagram/creation/video/f/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ad()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/creation/video/f/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    return v0
.end method

.method static synthetic m(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    return v0
.end method

.method static synthetic n(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    return v0
.end method

.method static synthetic o(Lcom/instagram/creation/video/f/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aH()V

    return-void
.end method

.method static synthetic p(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ao()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic r(Lcom/instagram/creation/video/f/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ab()V

    return-void
.end method

.method static synthetic s(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    return v0
.end method

.method static synthetic t(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    return v0
.end method

.method static synthetic u(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/i/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method static synthetic v(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aI()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    return-object v0
.end method

.method static synthetic x(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderBlinker;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    return-object v0
.end method

.method static synthetic y(Lcom/instagram/creation/video/f/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    return v0
.end method

.method static synthetic z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->af()V

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ag()V

    return-void
.end method

.method public final F()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ae()V

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    return-void
.end method

.method public final G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    return-void
.end method

.method public final U()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    return v0
.end method

.method public final V()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v2

    if-ne v2, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    invoke-static {v1, v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;I)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->av()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aD()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aC()V

    return-void
.end method

.method public final W()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a/a;->a(Z)V

    :cond_a
    return-void
.end method

.method public final X()V
    .registers 5

    sget-object v0, Lcom/instagram/creation/video/ui/s;->a:Lcom/instagram/creation/video/ui/s;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->u()Z

    return-void
.end method

.method public final Y()V
    .registers 6

    sget-object v0, Lcom/instagram/creation/video/ui/s;->b:Lcom/instagram/creation/video/ui/s;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x53

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()I

    move-result v4

    sub-int v1, v4, v1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->x()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_109

    sget v0, Lcom/facebook/aw;->fragment_camcorder:I

    :goto_10
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/GLRootView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    sget v0, Lcom/facebook/av;->black_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/facebook/av;->non_ics_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    sget v0, Lcom/facebook/av;->ics_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    sget v0, Lcom/facebook/av;->preview_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    sget v0, Lcom/facebook/av;->fragment_camera_shutter_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoShutterButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    new-instance v2, Lcom/instagram/creation/video/a/g;

    invoke-direct {v2, p0, p0}, Lcom/instagram/creation/video/a/g;-><init>(Lcom/instagram/creation/video/a/f;Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setClipStackManager(Lcom/instagram/creation/video/a;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    sget v0, Lcom/facebook/av;->blinker:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setClipStackManager(Lcom/instagram/creation/video/a;)V

    sget v0, Lcom/facebook/av;->button_remove_actual:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/n;

    invoke-direct {v2, p0, v1}, Lcom/instagram/creation/video/f/n;-><init>(Lcom/instagram/creation/video/f/a;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->button_remove:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/o;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/o;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->gallery_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->backspace_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    if-nez v0, :cond_e1

    new-instance v0, Lcom/instagram/creation/video/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/a/a;-><init>(Lcom/instagram/creation/video/a/b;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    new-instance v0, Lcom/instagram/creation/video/ui/f;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/creation/video/ui/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/g;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/k;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/GLRootView;->setContentPane(Lcom/instagram/creation/video/gl/v;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    new-instance v2, Lcom/instagram/creation/video/f/p;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/p;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/GLRootView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_e1
    sget v0, Lcom/facebook/av;->focus_indicator_rotate_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aO()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->Z()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ah()V

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    sget-object v0, Lcom/instagram/creation/video/f/l;->a:[I

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_144

    :goto_108
    return-object v1

    :cond_109
    sget v0, Lcom/facebook/aw;->fragment_camcorder_small:I

    goto/16 :goto_10

    :pswitch_10d
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_shutter_button_size_large_condensed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->f(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    sget v2, Lcom/facebook/au;->camcorder_shutter_button_condensed_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    goto :goto_108

    :pswitch_122
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_shutter_button_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->f(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    sget v2, Lcom/facebook/au;->camcorder_shutter_button_condensed_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_bottom_button_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->g(I)V

    goto :goto_108

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_122
        :pswitch_122
    .end packed-switch
.end method

.method public final a(I)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    if-nez p3, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    if-nez p1, :cond_1d

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_invalid_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-static {v0}, Lcom/instagram/creation/video/i/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Lcom/instagram/creation/video/i/a;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    if-nez v1, :cond_48

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    goto :goto_1d

    :cond_48
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aI()Z

    move-result v3

    invoke-static {v1, v2, v0, v4, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V

    goto :goto_1d

    :cond_5a
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/app/Activity;)V

    goto :goto_1d
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/a;->b(Landroid/os/Bundle;)V

    :cond_a
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "camcorder_fragment"

    const-string v1, "external_dir_unavailable_and_failed_to_start_camera"

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/creation/video/f/m;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/m;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    sget v0, Lcom/instagram/creation/video/a/e;->d:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->az:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/instagram/creation/video/f/u;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/u;-><init>(Lcom/instagram/creation/video/f/a;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/u;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;

    :cond_18
    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aa()V

    :cond_1f
    sget v0, Lcom/facebook/av;->clip_stack_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/ClipStackView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->b()Lcom/instagram/creation/video/i/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/ClipStackView;->setClipStack(Lcom/instagram/creation/video/i/d;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/c;->a(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/creation/video/f/r;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/r;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoCancelButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    new-instance v1, Lcom/instagram/creation/video/f/s;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/s;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoCancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/facebook/av;->button_accept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoAcceptButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    new-instance v1, Lcom/instagram/creation/video/f/t;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/t;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoAcceptButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->switch_camera_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    new-instance v1, Lcom/instagram/creation/video/f/c;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/c;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->minimum_clip_length_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/q;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/q;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aJ()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()I

    move-result v5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_20
    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Ljava/io/File;)J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_54

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_49

    int-to-long v7, v1

    cmp-long v7, v2, v7

    if-gtz v7, :cond_49

    int-to-long v7, v1

    sub-long/2addr v7, v2

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-gtz v7, :cond_38

    int-to-long v2, v1

    :cond_38
    new-instance v7, Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v5, v2, v3, v0}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v0, v1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    goto :goto_14

    :cond_49
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/d;

    invoke-direct {v1, p0, v4}, Lcom/instagram/creation/video/f/d;-><init>(Lcom/instagram/creation/video/f/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_54
    move-exception v0

    goto :goto_14
.end method

.method public final b(Lcom/instagram/creation/video/i/a;)V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aJ()V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()V

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->b()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->d:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->X()V

    :cond_11
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    return-void
.end method

.method public final b()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->b()Lcom/instagram/creation/video/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->b()I

    move-result v0

    if-lez v0, :cond_40

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->discard_video:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_close:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_discard_button:I

    new-instance v2, Lcom/instagram/creation/video/f/g;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/g;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_keep_button:I

    new-instance v2, Lcom/instagram/creation/video/f/f;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/f;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/j;->f(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public final c()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aM()V

    return-void
.end method

.method public final c(Lcom/instagram/creation/video/i/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->b()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->a:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->n()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->f()V

    :cond_13
    return-void
.end method

.method public final d()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aF()Lcom/instagram/creation/video/gl/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/q;->a()V

    return-void
.end method

.method public final e()V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/instagram/camera/g;->e(Landroid/content/SharedPreferences;)I

    move-result v0

    rsub-int v0, v0, 0x320

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CAMERA_SETTINGS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/a;->a(II)Lcom/instagram/creation/video/i/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/instagram/creation/video/a/e;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v1, Lcom/instagram/creation/video/a/e;->b:I

    if-ne v0, v1, :cond_33

    :goto_32
    return-void

    :cond_33
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->al()V

    sget v0, Lcom/instagram/creation/video/a/e;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_32
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget v0, Lcom/instagram/creation/video/a/e;->c:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->f()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/h;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/h;-><init>(Lcom/instagram/creation/video/f/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "camcorder"

    return-object v0
.end method

.method public final l_()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/ClipStackView;->a()V

    :cond_2b
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_42
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    :cond_4f
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    return-void
.end method
