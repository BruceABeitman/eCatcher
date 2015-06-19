.class  Lcom/twidroid/activity/SendTweet$11$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$11;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$11;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$11$3;->a:Lcom/twidroid/activity/SendTweet$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$3;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/16 v1, 0x177
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_12
:goto_9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$3;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Z)Z
return-void
:catch_12
move-exception v0
goto :goto_9
.end method