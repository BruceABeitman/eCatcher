.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/HashSet;

.field private static c:Lcom/google/android/gms/common/images/ImageManager;

.field private static d:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/google/android/gms/common/images/c;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->e:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->f:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_3e

    new-instance v0, Lcom/google/android/gms/common/images/c;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    invoke-static {}, Lcom/google/android/gms/internal/jo;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/google/android/gms/common/images/ImageManager;->c()V

    :cond_2f
    :goto_2f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->j:Ljava/util/Map;

    return-void

    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    goto :goto_2f
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/i;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/images/i;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .registers 4

    if-eqz p1, :cond_11

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->d:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->d:Lcom/google/android/gms/common/images/ImageManager;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->d:Lcom/google/android/gms/common/images/ImageManager;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->c:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->c:Lcom/google/android/gms/common/images/ImageManager;

    :cond_1d
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->c:Lcom/google/android/gms/common/images/ImageManager;

    goto :goto_10
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/h;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/h;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->j:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/images/h;)Z
    .registers 5

    const/4 v1, 0x1

    const-string v0, "ImageManager.cleanupHashMaps() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/String;)V

    iget v0, p1, Lcom/google/android/gms/common/images/h;->b:I

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_b

    :cond_18
    iget-boolean v2, v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Z

    if-eqz v2, :cond_1e

    const/4 v0, 0x0

    goto :goto_b

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b(Lcom/google/android/gms/common/images/h;)V

    move v0, v1

    goto :goto_b
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->i:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->e:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/common/images/f;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/f;-><init>(Lcom/google/android/gms/common/images/c;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Lcom/google/android/gms/common/images/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;I)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/h;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/images/h;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/h;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/h;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/h;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/images/h;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/h;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/h;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/h;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/images/h;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/h;->a(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/h;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/h;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/images/a;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/h;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/images/h;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/h;->a(Lcom/google/android/gms/common/images/a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/h;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/images/a;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/h;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/images/h;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/h;->a(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/h;->a(Lcom/google/android/gms/common/images/a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/h;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/images/h;)V
    .registers 4

    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/h;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/common/images/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/images/e;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/h;)V

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method
