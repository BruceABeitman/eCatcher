.class public final Lcom/instagram/creation/photo/camera/c;
.super Lcom/instagram/base/a/b;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/camera/n;
.implements Lcom/instagram/camera/r;


# static fields
.field private static aD:I


# instance fields
.field a:Landroid/hardware/Camera;

.field private aA:Landroid/view/View;

.field private aB:Lcom/instagram/camera/ui/RotateLayout;

.field private aC:I

.field private aE:Z

.field private aF:Z

.field private aG:J

.field private aH:Ljava/lang/String;

.field private final aI:Lcom/instagram/camera/c;

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:Lcom/instagram/creation/photo/camera/o;

.field private aN:Ljava/io/File;

.field private aO:Landroid/net/Uri;

.field private aP:F

.field private aQ:Landroid/graphics/Bitmap;

.field private final aR:Landroid/content/BroadcastReceiver;

.field private final aa:Lcom/instagram/creation/photo/camera/n;

.field private ab:J

.field private final ac:Landroid/os/Handler;

.field private ad:Lcom/instagram/creation/photo/camera/r;

.field private ae:I

.field private af:I

.field private ag:Lcom/instagram/camera/k;

.field private ah:Landroid/hardware/Camera;

.field private ai:Landroid/hardware/Camera$Parameters;

.field private aj:Landroid/hardware/Camera$Parameters;

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Lcom/instagram/camera/m;

.field private ar:Ljava/lang/String;

.field private as:Landroid/view/SurfaceHolder;

.field private at:Lcom/instagram/camera/ShutterButton;

.field private au:Landroid/widget/ImageView;

.field private av:Landroid/view/View;

.field private aw:Z

.field private ax:Z

.field private ay:Landroid/widget/ImageView;

.field private az:Lcom/instagram/camera/SquarePreviewFrameLayout;

.field b:I

.field c:Ljava/lang/Thread;

.field d:Ljava/lang/Thread;

.field private e:I

.field private f:I

.field private g:Landroid/content/ContentResolver;

.field private h:Z

.field private final i:Lcom/instagram/creation/photo/camera/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5a

    sput v0, Lcom/instagram/creation/photo/camera/c;->aD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    new-instance v0, Lcom/instagram/creation/photo/camera/u;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/u;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->i:Lcom/instagram/creation/photo/camera/u;

    new-instance v0, Lcom/instagram/creation/photo/camera/n;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/n;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aa:Lcom/instagram/creation/photo/camera/n;

    new-instance v0, Lcom/instagram/creation/photo/camera/q;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/q;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    new-instance v0, Lcom/instagram/camera/c;

    invoke-direct {v0}, Lcom/instagram/camera/c;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    new-instance v0, Lcom/instagram/creation/photo/camera/f;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/f;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    return v0
.end method

.method static synthetic B(Lcom/instagram/creation/photo/camera/c;)F
    .registers 3

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    const/high16 v1, 0x43b4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic C(Lcom/instagram/creation/photo/camera/c;)F
    .registers 3

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic D(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    return v0
.end method

.method static synthetic E(Lcom/instagram/creation/photo/camera/c;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->g:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private V()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return-void
.end method

.method private W()V
    .registers 8

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v0, Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/r;-><init>(Lcom/instagram/creation/photo/camera/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->a()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/c;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ar()V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->g:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->focus_indicator_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->c()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_88

    move v4, v6

    :goto_5c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    sget v5, Lcom/instagram/creation/photo/camera/c;->aD:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/camera/m;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/camera/n;ZI)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ay;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/content/res/AssetFileDescriptor;)V

    new-instance v0, Lcom/instagram/creation/photo/camera/o;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/o;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ag()V

    iput-boolean v6, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->X()V

    goto/16 :goto_5

    :cond_88
    const/4 v4, 0x0

    goto :goto_5c
.end method

.method private X()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/photo/camera/d;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/d;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private Y()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->a()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ag()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ay;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/content/res/AssetFileDescriptor;)V

    new-instance v0, Lcom/instagram/creation/photo/camera/o;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/o;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    return-void
.end method

.method private Z()V
    .registers 3

    new-instance v0, Lcom/instagram/camera/k;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/camera/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/g;->b(Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v0}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;F)F
    .registers 2

    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    return p1
.end method

.method private a(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide v5, 0x7fefffffffffffffL

    if-nez p1, :cond_9

    :cond_8
    return-object v4

    :cond_9
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_9e

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    :goto_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v5

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_3d

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_9c

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_72
    move-object v4, v0

    goto :goto_3d

    :cond_74
    if-nez v4, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v7, v3

    cmpg-double v3, v7, v5

    if-gez v3, :cond_7a

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    move-object v4, v0

    goto :goto_7a

    :cond_9c
    move-object v0, v4

    goto :goto_72

    :cond_9e
    move v1, v0

    goto :goto_38
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    return-object p1
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/instagram/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/instagram/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ai()V

    const-string v1, "setPreviewDisplay failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->W()V

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

.method private aa()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method private ab()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private ac()V
    .registers 5

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private ad()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private ae()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-static {p0, v0, v1}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    return-void
.end method

.method private af()V
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_25

    sget v0, Lcom/facebook/az;->no_storage:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_f
    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :cond_24
    return-void

    :cond_25
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_34

    sget v0, Lcom/facebook/az;->preparing_sd:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_34
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_43

    sget v0, Lcom/facebook/az;->access_sd_fail:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_43
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    sget v0, Lcom/facebook/az;->not_enough_space:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private ag()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/k;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    return-void
.end method

.method private ah()Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->as()Z

    move-result v0

    return v0
.end method

.method private ai()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->d()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->g()V

    :cond_1b
    return-void
.end method

.method private aj()V
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    sget v1, Lcom/instagram/creation/photo/camera/c;->aD:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    sget v1, Lcom/instagram/creation/photo/camera/c;->aD:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_11

    :catch_24
    move-exception v0

    const-string v0, "CameraFragment"

    const-string v1, "Error setting display orientation"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private ak()V
    .registers 4

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V

    :cond_1e
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(Landroid/view/SurfaceHolder;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->n()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_36
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_4a

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_41} :catch_4d

    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->e()V

    goto :goto_f

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_4d
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ai()V

    const-string v1, "startPreview failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f
.end method

.method private al()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->f()V

    return-void
.end method

.method private am()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->an()V

    :cond_20
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private an()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    return-void
.end method

.method private ao()V
    .registers 3

    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    :cond_19
    return-void
.end method

.method private ap()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aq()V

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_picturesize_key_V7"

    invoke-virtual {v0, v1, v8}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17e

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Landroid/hardware/Camera$Parameters;)V

    :goto_1c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preview size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/camera/SquarePreviewFrameLayout;->setAspectRatio(D)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_scenemode_key"

    sget v2, Lcom/facebook/az;->pref_camera_scenemode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    :cond_bd
    :goto_bd
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Lcom/instagram/camera/k;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    if-lt v0, v2, :cond_e4

    if-gt v0, v1, :cond_e4

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_e4
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_flashmode_key"

    sget v2, Lcom/facebook/az;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_19d

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_10d
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_whitebalance_key"

    sget v2, Lcom/facebook/az;->pref_camera_whitebalance_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0, v8}, Lcom/instagram/camera/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_13c
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->flash_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/CameraFlashButton;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e0

    :cond_15c
    invoke-virtual {v0, v6}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setVisibility(I)V

    :goto_15f
    new-instance v1, Lcom/instagram/creation/photo/camera/k;

    invoke-direct {v1, p0, v0}, Lcom/instagram/creation/photo/camera/k;-><init>(Lcom/instagram/creation/photo/camera/c;Lcom/instagram/creation/photo/camera/CameraFlashButton;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->switch_camera_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->b:I

    if-le v1, v7, :cond_21f

    new-instance v1, Lcom/instagram/creation/photo/camera/l;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/l;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_17d
    return-void

    :cond_17e
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/instagram/camera/g;->a(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1c

    :cond_18b
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    if-nez v0, :cond_bd

    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    goto/16 :goto_bd

    :cond_19d
    sget v0, Lcom/facebook/az;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_10d

    :cond_1b0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown flash mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10d

    :cond_1c2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12c

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_12c

    :cond_1d3
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Ljava/lang/String;)V

    goto/16 :goto_13c

    :cond_1e0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1fa

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    invoke-virtual {v0, v6}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setVisibility(I)V

    goto/16 :goto_15f

    :cond_1fa
    const-string v1, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_209

    sget v1, Lcom/instagram/creation/photo/camera/b;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_15f

    :cond_209
    const-string v1, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_218

    sget v1, Lcom/instagram/creation/photo/camera/b;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_15f

    :cond_218
    sget v1, Lcom/instagram/creation/photo/camera/b;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_15f

    :cond_21f
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_17d
.end method

.method private aq()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->an:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_f
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ao:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_1e
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_2d
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_3c
    return-void
.end method

.method private ar()V
    .registers 7

    const-wide/32 v4, 0x2faf080

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->x()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/instagram/creation/photo/b/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_28

    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    :cond_24
    :goto_24
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->af()V

    :cond_27
    return-void

    :cond_28
    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iput-wide v2, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    goto :goto_24
.end method

.method private as()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eq v1, v0, :cond_d

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->l()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private at()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/hardware/Camera$Parameters;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_19

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->au()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->am:Z

    goto :goto_18
.end method

.method private au()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_3f

    const-string v0, "auto"

    iget-object v3, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_41

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->an:Z

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/instagram/creation/photo/camera/c;->av()Z

    move-result v0

    if-nez v0, :cond_43

    :goto_3c
    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ao:Z

    return-void

    :cond_3f
    move v0, v2

    goto :goto_19

    :cond_41
    move v0, v2

    goto :goto_24

    :cond_43
    move v1, v2

    goto :goto_3c
.end method

.method private static av()Z
    .registers 3

    const/4 v2, -0x1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E617G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P708g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_71

    :cond_6f
    const/4 v0, 0x1

    :goto_70
    return v0

    :cond_71
    const/4 v0, 0x0

    goto :goto_70
.end method

.method static synthetic b(Lcom/instagram/creation/photo/camera/c;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    return p1
.end method

.method static synthetic b(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->g(I)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aC:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/photo/camera/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/c;->i(I)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/creation/photo/camera/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->aG:J

    return-wide v0
.end method

.method static synthetic f(Lcom/instagram/creation/photo/camera/c;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method static synthetic g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    return-object v0
.end method

.method private g(I)V
    .registers 6

    const/4 v3, 0x4

    const/4 v1, 0x0

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-nez v0, :cond_e

    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->as()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ao()V

    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    goto :goto_d

    :cond_1f
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d
.end method

.method private h(I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->am()V

    :cond_f
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ap()V

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string v1, "CameraFragment"

    const-string v2, "Failed to set parameters"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/camera/m;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/m;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d
.end method

.method static synthetic h(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ar()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/creation/photo/camera/c;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/instagram/camera/ui/RotateLayout;->setOrientation(I)V

    :cond_9
    return-void
.end method

.method static synthetic j(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    return v0
.end method

.method static synthetic k(Lcom/instagram/creation/photo/camera/c;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    return v0
.end method

.method static synthetic l(Lcom/instagram/creation/photo/camera/c;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    return v0
.end method

.method static synthetic m(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->at()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V

    return-void
.end method

.method static synthetic o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic p(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/k;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    return-void
.end method

.method static synthetic r(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aK:I

    return v0
.end method

.method static synthetic s(Lcom/instagram/creation/photo/camera/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aL:I

    return v0
.end method

.method static synthetic t(Lcom/instagram/creation/photo/camera/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    return v0
.end method

.method static synthetic u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    return-object v0
.end method

.method static synthetic v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic w(Lcom/instagram/creation/photo/camera/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->af()V

    return-void
.end method

.method static synthetic x(Lcom/instagram/creation/photo/camera/c;)F
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic y(Lcom/instagram/creation/photo/camera/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/instagram/creation/photo/camera/c;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ad()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final E()V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_29

    :try_start_14
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->at()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->V()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V
    :try_end_29
    .catch Lcom/instagram/camera/d; {:try_start_14 .. :try_end_29} :catch_4c
    .catch Lcom/instagram/camera/b; {:try_start_14 .. :try_end_29} :catch_57

    :cond_29
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ac()V

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-ne v0, v2, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->aG:J

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_f

    :catch_4c
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_f

    :catch_57
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_f

    :cond_62
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Y()V

    goto :goto_36
.end method

.method public final F()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ai()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ab()V

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->b()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/o;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    :cond_21
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    :cond_31
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->h()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->m()V

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    return-void
.end method

.method public final U()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v1}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v1

    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    if-eq v2, v1, :cond_4b

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/camera/e;->e()V

    :try_start_38
    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_38 .. :try_end_3b} :catch_42

    :goto_3b
    invoke-virtual {v0, v4, v4}, Landroid/support/v4/app/k;->overridePendingTransition(II)V

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    goto :goto_5

    :catch_42
    move-exception v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->startActivity(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_4b
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->g(I)V

    goto :goto_5
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget v0, Lcom/facebook/aw;->fragment_camera:I

    :goto_d
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    sget v0, Lcom/facebook/av;->fragment_camera_shutter_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ShutterButton;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/instagram/camera/ShutterButton;->setOnShutterButtonListener(Lcom/instagram/camera/r;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setVisibility(I)V

    sget v0, Lcom/facebook/av;->fragment_camera_gallery_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->fragment_camera_video_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    iget-object v3, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-static {}, Lcom/instagram/creation/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_d9

    move v0, v1

    :goto_5b
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_cancel:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/creation/photo/camera/g;

    invoke-direct {v3, p0}, Lcom/instagram/creation/photo/camera/g;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v3

    sget v0, Lcom/facebook/av;->grid_lines_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/facebook/av;->grid_lines_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/instagram/k/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_a9
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/creation/photo/camera/h;

    invoke-direct {v1, p0, v4, v3}, Lcom/instagram/creation/photo/camera/h;-><init>(Lcom/instagram/creation/photo/camera/c;Landroid/view/View;Lcom/instagram/k/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->creation_image_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/SquarePreviewFrameLayout;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    sget-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_112

    :goto_d1
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aa()V

    return-object v2

    :cond_d5
    sget v0, Lcom/facebook/aw;->fragment_camera_small:I

    goto/16 :goto_d

    :cond_d9
    const/4 v0, 0x4

    goto :goto_5b

    :pswitch_db
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_shutter_button_size_large_condensed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    sget v1, Lcom/facebook/au;->camera_shutter_button_condensed_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_d1

    :pswitch_f0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_shutter_button_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    sget v1, Lcom/facebook/au;->camera_shutter_button_condensed_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_bottom_button_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->f(I)V

    goto :goto_d1

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_db
        :pswitch_f0
        :pswitch_f0
    .end packed-switch
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    packed-switch p1, :pswitch_data_1e

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/s;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ad()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/creation/photo/camera/s;->a(Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Z()V

    new-instance v0, Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    sget v2, Lcom/facebook/az;->pref_camera_focusmode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/camera/m;-><init>(Lcom/instagram/camera/k;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    if-eqz p1, :cond_2e

    const-string v0, "tempFileGallery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    :cond_26
    const-string v0, "pendingMediaKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    :cond_2e
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    if-nez v0, :cond_4d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/a/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/a/a;->a(Lcom/instagram/creation/b/a/b;)V

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    :cond_4d
    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ah()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_12
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->a()V

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->b()V

    goto :goto_9
.end method

.method public final b()Z
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aa:Lcom/instagram/creation/photo/camera/n;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/creation/photo/camera/i;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/i;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/creation/photo/camera/j;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/j;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->b()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->b:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->V()V

    :try_start_45
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    :goto_5a
    return-void

    :cond_5b
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_68} :catch_69

    goto :goto_5a

    :catch_69
    move-exception v0

    :cond_6a
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->f()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aL:I

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->g()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aK:I

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_86
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_94
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_8b} :catch_99

    :goto_8b
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_94

    :try_start_8c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_91} :catch_97

    :goto_91
    iput-object v3, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    goto :goto_5a

    :catchall_94
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_97
    move-exception v0

    goto :goto_91

    :catch_99
    move-exception v0

    goto :goto_8b
.end method

.method public final d()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v0, 0x0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eq v1, v5, :cond_b

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    iget v3, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/instagram/camera/h;->a(Landroid/hardware/Camera$Parameters;IILcom/instagram/camera/e;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->i:Lcom/instagram/creation/photo/camera/u;

    new-instance v3, Lcom/instagram/creation/photo/camera/p;

    invoke-direct {v3, p0, v0}, Lcom/instagram/creation/photo/camera/p;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    iput v5, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    if-eqz v0, :cond_19

    const-string v0, "tempFileGallery"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public final f()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->c()V

    goto :goto_4
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "camera"

    return-object v0
.end method

.method public final k_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ai()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    return-void
.end method

.method public final l_()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/instagram/o/a;->g:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->c()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ae()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    if-ne p1, v0, :cond_d

    invoke-static {}, Lcom/instagram/creation/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_35

    sget v0, Lcom/facebook/az;->video_not_enough_space_for_recording:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    :cond_35
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/b;

    sget v1, Lcom/instagram/creation/base/c;->b:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ad()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/b;->a(IZ)V

    goto :goto_d
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->am:Z

    if-eqz v1, :cond_12

    :cond_1f
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0, p2}, Lcom/instagram/camera/m;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged. w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "camera_surface_init"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_53

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V

    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_49
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "camera_surface_init"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_53
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aC:I

    if-eq v0, v1, :cond_62

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    :cond_62
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/c;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_3f

    :cond_6c
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Y()V

    goto :goto_49
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    return-void
.end method
