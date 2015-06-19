.class Lcom/admarvel/android/ads/ad$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/ad;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/ad;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/admarvel/android/ads/ad$b;->a:Lcom/admarvel/android/ads/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$b;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/ad$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/admarvel/android/ads/ad$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lcom/admarvel/android/ads/ad$a;

    iget-object v2, p0, Lcom/admarvel/android/ads/ad$b;->a:Lcom/admarvel/android/ads/ad;

    iget-object v0, p0, Lcom/admarvel/android/ads/ad$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v2, v0}, Lcom/admarvel/android/ads/ad$a;-><init>(Lcom/admarvel/android/ads/ad;Landroid/widget/ImageView;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/admarvel/android/ads/ad$b;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/admarvel/android/ads/ad$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_24
    return-void
.end method
