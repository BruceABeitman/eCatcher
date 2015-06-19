.class  Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;
.super Ljava/lang/Object;
.source "CheckEmailViewGroup.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
.method constructor <init>(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/CheckEmailViewGroup$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$2(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-static {v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$3(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setText(Ljava/lang/CharSequence;)V
:cond_15
const-string v1, " - Lcom/pinguo/camera360/login/CheckEmailViewGroup$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method