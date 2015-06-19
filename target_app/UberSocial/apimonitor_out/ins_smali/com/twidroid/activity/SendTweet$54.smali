.class  Lcom/twidroid/activity/SendTweet$54;
.super Ljava/util/TimerTask;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$54;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$54;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$54$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$54$1;-><init>(Lcom/twidroid/activity/SendTweet$54;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method