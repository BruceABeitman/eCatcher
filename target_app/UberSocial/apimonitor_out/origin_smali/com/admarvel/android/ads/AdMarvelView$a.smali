.class Lcom/admarvel/android/ads/AdMarvelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView$a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_22

    new-instance v1, Lcom/admarvel/android/ads/d;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$a;->b:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/admarvel/android/ads/d;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/admarvel/android/ads/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_21
    :goto_21
    return-void

    :cond_22
    new-instance v1, Lcom/admarvel/android/ads/d;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$a;->b:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/admarvel/android/ads/d;-><init>(Landroid/content/Context;Ljava/io/File;)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_21
.end method
