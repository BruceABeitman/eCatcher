.class  Lcom/twidroid/activity/SendTweet$52;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$52;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
sget-object v1, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$52;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v1}, Lcom/twidroid/activity/SendTweet;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Switched on/off very fast? View was not visible any more"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_17
.end method