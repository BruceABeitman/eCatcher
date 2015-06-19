.class  Lcom/facebook/katana/PickFriendsActivity$1;
.super Ljava/lang/Object;
.source "PickFriendsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsActivity;
.method constructor <init>(Lcom/facebook/katana/PickFriendsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PickFriendsActivity$1;->this$0:Lcom/facebook/katana/PickFriendsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PickFriendsActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity$1;->this$0:Lcom/facebook/katana/PickFriendsActivity;
#getter for: Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-static {v2}, Lcom/facebook/katana/PickFriendsActivity;->access$12(Lcom/facebook/katana/PickFriendsActivity;)Lcom/facebook/katana/PickFriendsAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/PickFriendsAdapter;->getMarkedFriends()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_20
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "com.facebook.katana.PickFriendsActivity.result_friends"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity$1;->this$0:Lcom/facebook/katana/PickFriendsActivity;
const/4 v3, -0x1
invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/PickFriendsActivity;->setResult(ILandroid/content/Intent;)V
:cond_20
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity$1;->this$0:Lcom/facebook/katana/PickFriendsActivity;
invoke-virtual {v2}, Lcom/facebook/katana/PickFriendsActivity;->finish()V
const-string v1, " - Lcom/facebook/katana/PickFriendsActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method