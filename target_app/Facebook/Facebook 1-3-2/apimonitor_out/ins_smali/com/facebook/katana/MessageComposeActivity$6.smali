.class  Lcom/facebook/katana/MessageComposeActivity$6;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MessageComposeActivity;
.method constructor <init>(Lcom/facebook/katana/MessageComposeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$6;->this$0:Lcom/facebook/katana/MessageComposeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MessageComposeActivity$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$6;->this$0:Lcom/facebook/katana/MessageComposeActivity;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookUser;
#calls: Lcom/facebook/katana/MessageComposeActivity;->removeRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
invoke-static {v0, p0}, Lcom/facebook/katana/MessageComposeActivity;->access$15(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/service/api/FacebookUser;)V
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method