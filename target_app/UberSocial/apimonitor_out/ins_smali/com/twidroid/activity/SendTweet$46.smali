.class  Lcom/twidroid/activity/SendTweet$46;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ubermedia/b/k;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$46;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$46;->a:Lcom/twidroid/activity/SendTweet;
const-string v1, "Can\'t process an image"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public a(Landroid/net/Uri;Ljava/lang/String;IIZ)V
.registers 12
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$46;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0, p2}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$46;->a:Lcom/twidroid/activity/SendTweet;
move-object v1, p1
move v2, p3
move-object v3, p2
move v4, p4
move v5, p5
invoke-static/range {v0 .. v5}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Landroid/net/Uri;ILjava/lang/String;IZ)V
return-void
.end method