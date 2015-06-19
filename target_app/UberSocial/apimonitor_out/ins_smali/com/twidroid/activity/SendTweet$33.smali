.class  Lcom/twidroid/activity/SendTweet$33;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/SendTweet$33; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;
new-instance v1, Lcom/twidroid/activity/t;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {v1, v2, v3}, Lcom/twidroid/activity/t;-><init>(Lcom/twidroid/activity/SendTweet;Z)V
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/t;)Lcom/twidroid/activity/t;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/activity/t;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/SendTweet$33; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method