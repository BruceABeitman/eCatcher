.class Lcom/twidroid/TwidroidClient$11;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->U()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->k(Lcom/twidroid/TwidroidClient;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->l(Lcom/twidroid/TwidroidClient;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->l(Lcom/twidroid/TwidroidClient;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_8

    :catch_21
    move-exception v0

    const-string v1, "admarvel"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$11$1;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$11$1;-><init>(Lcom/twidroid/TwidroidClient$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_44} :catch_21

    goto :goto_8
.end method
