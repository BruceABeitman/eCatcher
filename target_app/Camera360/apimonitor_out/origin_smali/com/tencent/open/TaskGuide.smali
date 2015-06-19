.class public Lcom/tencent/open/TaskGuide;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/TaskGuide$1;,
        Lcom/tencent/open/TaskGuide$a;,
        Lcom/tencent/open/TaskGuide$g;,
        Lcom/tencent/open/TaskGuide$c;,
        Lcom/tencent/open/TaskGuide$e;,
        Lcom/tencent/open/TaskGuide$i;,
        Lcom/tencent/open/TaskGuide$k;,
        Lcom/tencent/open/TaskGuide$b;,
        Lcom/tencent/open/TaskGuide$j;,
        Lcom/tencent/open/TaskGuide$h;,
        Lcom/tencent/open/TaskGuide$f;,
        Lcom/tencent/open/TaskGuide$d;
    }
.end annotation


# static fields
.field private static K:I

.field static b:J

.field private static k:Landroid/graphics/drawable/Drawable;

.field private static l:Landroid/graphics/drawable/Drawable;

.field private static m:Landroid/graphics/drawable/Drawable;

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:Landroid/view/animation/Interpolator;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:J

.field private I:I

.field private J:I

.field private L:Ljava/lang/Runnable;

.field private M:Ljava/lang/Runnable;

.field a:Z

.field c:Lcom/tencent/tauth/IUiListener;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/os/Handler;

.field private h:Lcom/tencent/open/TaskGuide$i;

.field private i:Lcom/tencent/open/TaskGuide$d;

.field private j:Lcom/tencent/open/TaskGuide$d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x4b

    const/16 v2, 0x1e

    const/4 v1, 0x6

    sput v3, Lcom/tencent/open/TaskGuide;->n:I

    const/16 v0, 0x11c

    sput v0, Lcom/tencent/open/TaskGuide;->o:I

    sput v3, Lcom/tencent/open/TaskGuide;->p:I

    sput v2, Lcom/tencent/open/TaskGuide;->q:I

    const/16 v0, 0x1d

    sput v0, Lcom/tencent/open/TaskGuide;->r:I

    const/4 v0, 0x5

    sput v0, Lcom/tencent/open/TaskGuide;->s:I

    const/16 v0, 0x4a

    sput v0, Lcom/tencent/open/TaskGuide;->t:I

    const/4 v0, 0x0

    sput v0, Lcom/tencent/open/TaskGuide;->u:I

    sput v1, Lcom/tencent/open/TaskGuide;->v:I

    const/16 v0, 0x99

    sput v0, Lcom/tencent/open/TaskGuide;->w:I

    sput v2, Lcom/tencent/open/TaskGuide;->x:I

    sput v1, Lcom/tencent/open/TaskGuide;->y:I

    const/4 v0, 0x3

    sput v0, Lcom/tencent/open/TaskGuide;->z:I

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/tencent/open/TaskGuide;->b:J

    const/16 v0, 0xbb8

    sput v0, Lcom/tencent/open/TaskGuide;->K:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    sget-object v0, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    sget-object v0, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    iput v2, p0, Lcom/tencent/open/TaskGuide;->A:I

    iput v2, p0, Lcom/tencent/open/TaskGuide;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/TaskGuide;->C:F

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->D:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->E:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->a:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->F:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->G:Z

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    sget-object v0, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    sget-object v0, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    iput v2, p0, Lcom/tencent/open/TaskGuide;->A:I

    iput v2, p0, Lcom/tencent/open/TaskGuide;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/TaskGuide;->C:F

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->D:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->E:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->a:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->F:Z

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->G:Z

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->c()V

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/tencent/open/TaskGuide;->p:I

    return v0
.end method

.method private a(I)I
    .registers 4

    int-to-float v0, p1

    iget v1, p0, Lcom/tencent/open/TaskGuide;->C:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_9
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_11

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v0, ".9.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_33

    goto :goto_10

    :catch_33
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_37
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :cond_3b
    move-object v0, v1

    goto :goto_10

    :cond_3d
    :try_start_3d
    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_33

    move-result-object v0

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_10

    :catch_45
    move-exception v1

    goto :goto_37
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->b(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    sget v1, Lcom/tencent/open/TaskGuide;->o:I

    invoke-direct {p0, v1}, Lcom/tencent/open/TaskGuide;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget v1, Lcom/tencent/open/TaskGuide;->n:I

    invoke-direct {p0, v1}, Lcom/tencent/open/TaskGuide;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;I)Lcom/tencent/open/TaskGuide$d;
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->c(I)Lcom/tencent/open/TaskGuide$d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$i;)Lcom/tencent/open/TaskGuide$i;
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->h:Lcom/tencent/open/TaskGuide$i;

    return-object p1
.end method

.method private a(ILcom/tencent/open/TaskGuide$d;)V
    .registers 4

    if-nez p1, :cond_5

    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    goto :goto_4

    :cond_b
    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    goto :goto_4
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/open/TaskGuide;->a(ILcom/tencent/open/TaskGuide$d;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/open/TaskGuide$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/TaskGuide$2;-><init>(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/TaskGuide;->H:J

    if-eqz p1, :cond_29

    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->F:Z

    :goto_b
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/tencent/open/TaskGuide;->I:I

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/open/TaskGuide;->J:I

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_29
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->G:Z

    goto :goto_b
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->E:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/open/TaskGuide;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/open/TaskGuide;->E:Z

    return p1
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/tencent/open/TaskGuide;->q:I

    return v0
.end method

.method private b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 12

    const/16 v9, 0xe

    const/4 v8, -0x1

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/tencent/open/TaskGuide$j;

    invoke-direct {v0, p0, p1}, Lcom/tencent/open/TaskGuide$j;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->h:Lcom/tencent/open/TaskGuide$i;

    iget-object v1, v1, Lcom/tencent/open/TaskGuide$i;->c:[Lcom/tencent/open/TaskGuide$e;

    array-length v2, v1

    if-ne v2, v7, :cond_31

    new-instance v2, Lcom/tencent/open/TaskGuide$h;

    aget-object v1, v1, v6

    invoke-direct {v2, p0, p1, v1}, Lcom/tencent/open/TaskGuide$h;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$e;)V

    invoke-virtual {v2, v7}, Lcom/tencent/open/TaskGuide$h;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TaskGuide$j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_29
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_31
    new-instance v2, Lcom/tencent/open/TaskGuide$h;

    aget-object v3, v1, v6

    invoke-direct {v2, p0, p1, v3}, Lcom/tencent/open/TaskGuide$h;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$e;)V

    invoke-virtual {v2, v7}, Lcom/tencent/open/TaskGuide$h;->setId(I)V

    new-instance v3, Lcom/tencent/open/TaskGuide$h;

    aget-object v1, v1, v7

    invoke-direct {v3, p0, p1, v1}, Lcom/tencent/open/TaskGuide$h;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$e;)V

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lcom/tencent/open/TaskGuide$h;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/tencent/open/TaskGuide;->a(I)I

    move-result v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/tencent/open/TaskGuide;->a(I)I

    move-result v5

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TaskGuide$j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/open/TaskGuide$j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29
.end method

.method static synthetic b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->a(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/open/TaskGuide$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/TaskGuide$4;-><init>(Lcom/tencent/open/TaskGuide;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/tencent/open/TaskGuide;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->e(I)V

    return-void
.end method

.method private c(I)Lcom/tencent/open/TaskGuide$d;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/tencent/open/TaskGuide$d;->a:Lcom/tencent/open/TaskGuide$d;

    goto :goto_4
.end method

.method static synthetic c(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/tencent/open/TaskGuide;->A:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/tencent/open/TaskGuide;->B:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tencent/open/TaskGuide;->C:F

    return-void
.end method

.method static synthetic c(Lcom/tencent/open/TaskGuide;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/open/TaskGuide;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_d
    return-void
.end method

.method private d(I)V
    .registers 6

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->h()V

    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/open/TaskGuide$k;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-object v0, Lcom/tencent/open/TaskGuide;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    const-string/jumbo v0, "background.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->k:Landroid/graphics/drawable/Drawable;

    :cond_f
    sget-object v0, Lcom/tencent/open/TaskGuide;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v0, "action"

    const-string/jumbo v1, "get_gift"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "task_id"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->h:Lcom/tencent/open/TaskGuide$i;

    iget-object v1, v1, Lcom/tencent/open/TaskGuide$i;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "step_no"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appid"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/TaskGuide$a;

    invoke-direct {v5, p0, p1}, Lcom/tencent/open/TaskGuide$a;-><init>(Lcom/tencent/open/TaskGuide;I)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    sget-object v0, Lcom/tencent/open/TaskGuide$d;->c:Lcom/tencent/open/TaskGuide$d;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/TaskGuide;->a(ILcom/tencent/open/TaskGuide$d;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    const-string/jumbo v2, "TaskApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "getGift"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/open/TaskGuide;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->h()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/open/TaskGuide;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->d(I)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-object v0, Lcom/tencent/open/TaskGuide;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    const-string/jumbo v0, "button_green.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->l:Landroid/graphics/drawable/Drawable;

    :cond_f
    sget-object v0, Lcom/tencent/open/TaskGuide;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-object v0, Lcom/tencent/open/TaskGuide;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    const-string/jumbo v0, "button_red.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->m:Landroid/graphics/drawable/Drawable;

    :cond_f
    sget-object v0, Lcom/tencent/open/TaskGuide;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->j()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method static synthetic h(Lcom/tencent/open/TaskGuide;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->d()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->F:Z

    if-eqz v0, :cond_24

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/tencent/open/TaskGuide;->d(I)V

    :goto_a
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->F:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    iput-boolean v3, p0, Lcom/tencent/open/TaskGuide;->F:Z

    iput-boolean v3, p0, Lcom/tencent/open/TaskGuide;->G:Z

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->removeWindow()V

    goto :goto_a
.end method

.method static synthetic j(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->F:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->G:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic k(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private k()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->j()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/tencent/open/TaskGuide$b;

    invoke-direct {v0, p0, v2}, Lcom/tencent/open/TaskGuide$b;-><init>(Lcom/tencent/open/TaskGuide;Z)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/tencent/open/TaskGuide;->a(Z)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method private l()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->j()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/tencent/open/TaskGuide$b;

    invoke-direct {v0, p0, v2}, Lcom/tencent/open/TaskGuide$b;-><init>(Lcom/tencent/open/TaskGuide;Z)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/tencent/open/TaskGuide;->a(Z)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method static synthetic l(Lcom/tencent/open/TaskGuide;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->k()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/open/TaskGuide;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/open/TaskGuide;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/open/TaskGuide;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->l()V

    return-void
.end method

.method static synthetic r(Lcom/tencent/open/TaskGuide;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->D:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/open/TaskGuide;)I
    .registers 2

    iget v0, p0, Lcom/tencent/open/TaskGuide;->I:I

    return v0
.end method

.method static synthetic t(Lcom/tencent/open/TaskGuide;)I
    .registers 2

    iget v0, p0, Lcom/tencent/open/TaskGuide;->J:I

    return v0
.end method

.method static synthetic u(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/open/TaskGuide;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->i()V

    return-void
.end method

.method static synthetic w(Lcom/tencent/open/TaskGuide;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$i;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->h:Lcom/tencent/open/TaskGuide$i;

    return-object v0
.end method

.method static synthetic z(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public removeWindow()V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->E:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/TaskGuide;->E:Z

    :cond_e
    return-void
.end method

.method public showTaskGuideWindow(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 10

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->i:Lcom/tencent/open/TaskGuide$d;

    sget-object v1, Lcom/tencent/open/TaskGuide$d;->b:Lcom/tencent/open/TaskGuide$d;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->j:Lcom/tencent/open/TaskGuide$d;

    sget-object v1, Lcom/tencent/open/TaskGuide$d;->b:Lcom/tencent/open/TaskGuide$d;

    if-eq v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->E:Z

    if-eqz v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iput-object v2, p0, Lcom/tencent/open/TaskGuide;->h:Lcom/tencent/open/TaskGuide$i;

    if-eqz p2, :cond_5d

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_26
    new-instance v5, Lcom/tencent/open/TaskGuide$c;

    invoke-direct {v5, p0, v2}, Lcom/tencent/open/TaskGuide$c;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V

    const-string/jumbo v0, "action"

    const-string/jumbo v1, "task_list"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auth"

    const-string/jumbo v1, "mobile"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appid"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/tencent/open/TaskGuide$d;->b:Lcom/tencent/open/TaskGuide$d;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->a(ILcom/tencent/open/TaskGuide$d;)V

    goto :goto_15

    :cond_5d
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_26
.end method

.method public showWindow()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/open/TaskGuide$3;

    invoke-direct {v1, p0}, Lcom/tencent/open/TaskGuide$3;-><init>(Lcom/tencent/open/TaskGuide;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/connect/auth/QQToken;

    const-string/jumbo v2, "TaskApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "showTaskWindow"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
