.class  Lcom/twidroid/activity/SendTweet$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/ui/widgets/gesture/b;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->h(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->h(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_25
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->i(Lcom/twidroid/activity/SendTweet;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_25
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->j(Lcom/twidroid/activity/SendTweet;)V
:cond_25
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$4;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->k(Lcom/twidroid/activity/SendTweet;)V
return-void
.end method