.class  Lcom/facebook/katana/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/HomeActivity$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->authLogout(Landroid/content/Context;)Ljava/lang/String;
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/facebook/katana/HomeActivity;->showDialog(I)V
:cond_19
const-string v1, " - Lcom/facebook/katana/HomeActivity$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method