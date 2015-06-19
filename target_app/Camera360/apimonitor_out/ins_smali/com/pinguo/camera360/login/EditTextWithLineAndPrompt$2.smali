.class  Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;
.super Ljava/lang/Object;
.source "EditTextWithLineAndPrompt.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
.method constructor <init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x4
const/4 v8, 0x1
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
invoke-static {v5, p2}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$3(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Z)V
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$4(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_1a
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$4(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setText(Ljava/lang/CharSequence;)V
:cond_1a
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v5
if-eqz v5, :cond_53
if-nez p2, :cond_53
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-virtual {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;
move-result-object v5
invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_54
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-virtual {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f08019f
invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v5, v6, v8}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showErrorPromptTextView(Ljava/lang/String;I)V
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v5
invoke-interface {v5, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V
:cond_53
:goto_53
const-string v1, " - Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_54
const-string/jumbo v4, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"
const/4 v5, 0x2
invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-nez v0, :cond_86
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-virtual {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0801a1
invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v5, v6, v8}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showErrorPromptTextView(Ljava/lang/String;I)V
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v5
invoke-interface {v5, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V
goto :goto_53
:cond_86
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
invoke-static {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$5(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Z
move-result v5
if-eqz v5, :cond_53
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#calls: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->checkEmailValidate(Ljava/lang/String;)V
invoke-static {v5, v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$6(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
goto :goto_53
.end method