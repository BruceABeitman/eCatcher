.class  Lcom/twidroid/activity/SendTweet$45;
.super Lcom/twidroid/net/c/o;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/twidroid/net/c/o;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/n;)V
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
iget-object v1, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;
iput-object v1, v0, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
iget-boolean v1, v1, Lcom/twidroid/activity/SendTweet;->ai:Z
invoke-virtual {v0, v1, v2, v2}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V
return-void
.end method
.method public b(Lcom/twidroid/net/c/n;)V
.registers 5
new-instance v0, Lcom/twidroid/net/c/s;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
const v2, 0x7f0c00fd
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/c/s;-><init>(Landroid/content/Context;I)V
invoke-virtual {v0}, Lcom/twidroid/net/c/s;->show()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$45;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setEnabled(Z)V
return-void
.end method