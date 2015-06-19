.class  Lcom/twidroid/activity/SendTweet$49$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/activity/SendTweet$49;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$49;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$49$1;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 6
const/4 v3, 0x1
iget v0, p1, Landroid/os/Message;->arg2:I
if-ne v0, v3, :cond_f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$49$1;->a:Landroid/view/View;
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
:cond_e
:goto_e
return v3
:cond_f
iget v0, p1, Landroid/os/Message;->arg1:I
if-ne v0, v3, :cond_e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;
new-instance v2, Lcom/twidroid/activity/SendTweet$49$1$1;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$49$1$1;-><init>(Lcom/twidroid/activity/SendTweet$49$1;)V
invoke-static {v0, v1, v2}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
goto :goto_e
.end method