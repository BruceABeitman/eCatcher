.class  Lcom/twidroid/activity/SendTweet$13;
.super Lcom/twidroid/net/c/h;
.source "SourceFile"
.field final synthetic a:Z
.field final synthetic b:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Z)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$13;->b:Lcom/twidroid/activity/SendTweet;
iput-boolean p2, p0, Lcom/twidroid/activity/SendTweet$13;->a:Z
invoke-direct {p0}, Lcom/twidroid/net/c/h;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/j;)V
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$13;->b:Lcom/twidroid/activity/SendTweet;
iput-boolean v3, v0, Lcom/twidroid/activity/SendTweet;->ai:Z
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet$13;->a:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$13;->b:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$13;->b:Lcom/twidroid/activity/SendTweet;
iget-boolean v1, v1, Lcom/twidroid/activity/SendTweet;->ai:Z
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V
:cond_13
return-void
.end method