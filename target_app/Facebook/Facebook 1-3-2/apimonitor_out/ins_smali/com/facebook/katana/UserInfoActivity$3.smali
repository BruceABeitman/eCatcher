.class  Lcom/facebook/katana/UserInfoActivity$3;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$3;->this$0:Lcom/facebook/katana/UserInfoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UserInfoActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$3;->this$0:Lcom/facebook/katana/UserInfoActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V
const-string v1, " - Lcom/facebook/katana/UserInfoActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method