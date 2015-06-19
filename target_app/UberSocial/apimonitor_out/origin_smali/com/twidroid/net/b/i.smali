.class public abstract Lcom/twidroid/net/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ImageWorker"

.field private static final b:I = 0xc8

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3


# instance fields
.field protected c:Z

.field protected d:Z

.field protected e:Landroid/content/res/Resources;

.field private f:Lcom/twidroid/net/b/a;

.field private g:Lcom/twidroid/net/b/b;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/twidroid/net/b/i;->i:Z

    iput-boolean v0, p0, Lcom/twidroid/net/b/i;->j:Z

    iput-boolean v0, p0, Lcom/twidroid/net/b/i;->c:Z

    iput-boolean v1, p0, Lcom/twidroid/net/b/i;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/b/i;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/b/i;->e:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/b/i;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {p0}, Lcom/twidroid/net/b/i;->c(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/k;->a(Z)Z

    :cond_a
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 8

    iget-boolean v0, p0, Lcom/twidroid/net/b/i;->i:Z

    if-eqz v0, :cond_36

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/twidroid/net/b/i;->e:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/twidroid/net/b/i;->e:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/twidroid/net/b/i;->h:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_35
    return-void

    :cond_36
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_35
.end method

.method static synthetic a(Lcom/twidroid/net/b/i;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/net/b/i;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/net/b/i;)Lcom/twidroid/net/b/a;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    return-object v0
.end method

.method static synthetic b(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;
    .registers 2

    invoke-static {p0}, Lcom/twidroid/net/b/i;->c(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/twidroid/net/b/i;->c(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/twidroid/net/b/k;->a(Lcom/twidroid/net/b/k;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_13
    invoke-virtual {v1, v0}, Lcom/twidroid/net/b/k;->a(Z)Z

    :cond_16
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static c(Landroid/widget/ImageView;)Lcom/twidroid/net/b/k;
    .registers 3

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/twidroid/net/b/j;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/twidroid/net/b/j;

    invoke-virtual {v0}, Lcom/twidroid/net/b/j;->a()Lcom/twidroid/net/b/k;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic c(Lcom/twidroid/net/b/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/net/b/i;->j:Z

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->a()V

    :cond_9
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/b/i;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;Lcom/twidroid/net/b/b;)V
    .registers 4

    iput-object p2, p0, Lcom/twidroid/net/b/i;->g:Lcom/twidroid/net/b/b;

    iget-object v0, p0, Lcom/twidroid/net/b/i;->g:Lcom/twidroid/net/b/b;

    invoke-static {p1, v0}, Lcom/twidroid/net/b/a;->a(Landroid/support/v4/app/FragmentManager;Lcom/twidroid/net/b/b;)Lcom/twidroid/net/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/b/i;->a(Lcom/twidroid/net/b/a;)V

    return-void
.end method

.method public a(Lcom/twidroid/net/b/a;)V
    .registers 6

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    new-instance v0, Lcom/twidroid/net/b/l;

    invoke-direct {v0, p0}, Lcom/twidroid/net/b/l;-><init>(Lcom/twidroid/net/b/i;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/l;->d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x0

    instance-of v0, p1, Lcom/twidroid/net/b/c;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/twidroid/net/b/c;

    :goto_a
    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0, p1}, Lcom/twidroid/net/b/a;->a(Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_1a
    const-string v0, "ImageWorker"

    const-string v2, "creating def params"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/net/b/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;I)V

    move-object p1, v0

    goto :goto_a

    :cond_2d
    invoke-static {p1, p2}, Lcom/twidroid/net/b/i;->b(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/twidroid/net/b/k;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/net/b/k;-><init>(Lcom/twidroid/net/b/i;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/twidroid/net/b/j;

    iget-object v2, p0, Lcom/twidroid/net/b/i;->e:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/twidroid/net/b/i;->h:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v0}, Lcom/twidroid/net/b/j;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/twidroid/net/b/k;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/twidroid/net/b/a/f;->d:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/b/k;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    goto :goto_2

    :cond_50
    move-object v0, v1

    goto :goto_14
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/b/i;->i:Z

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->b()V

    :cond_9
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/i;->e:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/b/i;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/b/i;->j:Z

    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->d()V

    :cond_9
    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v1, p0, Lcom/twidroid/net/b/i;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/twidroid/net/b/i;->c:Z

    iget-boolean v0, p0, Lcom/twidroid/net/b/i;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/net/b/i;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected d()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    :cond_c
    return-void
.end method

.method public f()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/twidroid/net/b/l;

    invoke-direct {v0, p0}, Lcom/twidroid/net/b/l;-><init>(Lcom/twidroid/net/b/i;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/l;->d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/b/i;->f:Lcom/twidroid/net/b/a;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->c()V

    :cond_9
    return-void
.end method

.method public h()V
    .registers 5

    new-instance v0, Lcom/twidroid/net/b/l;

    invoke-direct {v0, p0}, Lcom/twidroid/net/b/l;-><init>(Lcom/twidroid/net/b/i;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/l;->d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    return-void
.end method

.method public i()V
    .registers 5

    new-instance v0, Lcom/twidroid/net/b/l;

    invoke-direct {v0, p0}, Lcom/twidroid/net/b/l;-><init>(Lcom/twidroid/net/b/i;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/l;->d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    return-void
.end method
