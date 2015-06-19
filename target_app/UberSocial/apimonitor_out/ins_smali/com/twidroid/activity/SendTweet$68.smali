.class  Lcom/twidroid/activity/SendTweet$68;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$68;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/SendTweet$68; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$68;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->a()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$68;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ch()Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$68;->a:Lcom/twidroid/activity/SendTweet;
const/16 v1, 0x2b3
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:goto_1d
const-string v1, " - Lcom/twidroid/activity/SendTweet$68; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$68;->a:Lcom/twidroid/activity/SendTweet;
const-string v1, ".video"
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->b(Ljava/lang/String;)V
goto :goto_1d
.end method