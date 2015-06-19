.class  Lcom/twidroid/activity/SendTweet$67;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/SharedPreferences;
.field final synthetic b:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Landroid/content/SharedPreferences;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$67;->b:Lcom/twidroid/activity/SendTweet;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$67;->a:Landroid/content/SharedPreferences;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$67;->b:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$67;->a:Landroid/content/SharedPreferences;
const-string v2, "accountId"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Selected account: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$67;->b:Lcom/twidroid/activity/SendTweet;
iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v0
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Switched on/off very fast? View was not visible any more"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_31
.end method