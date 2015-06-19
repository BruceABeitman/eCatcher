.class  Lcom/facebook/katana/MessageComposeActivity$5;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MessageComposeActivity;
.method constructor <init>(Lcom/facebook/katana/MessageComposeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$5;->this$0:Lcom/facebook/katana/MessageComposeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MessageComposeActivity$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$5;->this$0:Lcom/facebook/katana/MessageComposeActivity;
const-class v2, Lcom/facebook/katana/PickFriendsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "android.intent.action.PICK"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.facebook.katana.PickFriendsActivity.initial_friends"
iget-object v2, p0, Lcom/facebook/katana/MessageComposeActivity$5;->this$0:Lcom/facebook/katana/MessageComposeActivity;
#getter for: Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/facebook/katana/MessageComposeActivity;->access$14(Lcom/facebook/katana/MessageComposeActivity;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$5;->this$0:Lcom/facebook/katana/MessageComposeActivity;
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/MessageComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method