.class  Lcom/twidroid/activity/SendTweet$62$1;
.super Lcom/twidroid/net/a/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet$62;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$62;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$62$1;->a:Lcom/twidroid/activity/SendTweet$62;
invoke-direct {p0}, Lcom/twidroid/net/a/a/a;-><init>()V
return-void
.end method
.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
.registers 7
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "name"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/net/a/a/c;
iget-object v3, p0, Lcom/twidroid/activity/SendTweet$62$1;->a:Lcom/twidroid/activity/SendTweet$62;
iget-object v3, v3, Lcom/twidroid/activity/SendTweet$62;->a:Lcom/facebook/a/e;
invoke-direct {v2, v3, v0, v1}, Lcom/twidroid/net/a/a/c;-><init>(Lcom/facebook/a/e;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$62$1;->a:Lcom/twidroid/activity/SendTweet$62;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$62;->b:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v2, v0}, Lcom/twidroid/net/a/a/c;->a(Landroid/content/Context;)Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$62$1;->a:Lcom/twidroid/activity/SendTweet$62;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$62;->b:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$62$1;->a:Lcom/twidroid/activity/SendTweet$62;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet$62;->b:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/activity/SendTweet;->af:Lcom/twidroid/net/a/a/c;
return-void
.end method