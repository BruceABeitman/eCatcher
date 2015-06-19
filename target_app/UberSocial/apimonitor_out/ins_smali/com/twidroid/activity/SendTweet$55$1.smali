.class  Lcom/twidroid/activity/SendTweet$55$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/d/d;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$55;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$55;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$55$1;->a:Lcom/twidroid/activity/SendTweet$55;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/User;)V
.registers 4
:try_start_0
iget-boolean v0, p1, Lcom/twidroid/model/twitter/User;->q:Z
if-nez v0, :cond_c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55$1;->a:Lcom/twidroid/activity/SendTweet$55;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->w(Lcom/twidroid/activity/SendTweet;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55$1;->a:Lcom/twidroid/activity/SendTweet$55;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->f()V
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
goto :goto_b
:catch_14
move-exception v0
const-string v0, "com.twidroid.SendTweet"
const-string v1, "SendTweet activity is closed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public a(Ljava/lang/Exception;Ljava/lang/String;)V
.registers 3
return-void
.end method