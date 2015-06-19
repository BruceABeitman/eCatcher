.class  Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;
.super Ljava/lang/Object;
.source "EditTextWithLineAndPrompt.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
.method constructor <init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 12
const/4 v7, 0x1
const/4 v9, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v6
if-eqz v6, :cond_1c
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v6
invoke-interface {v6, v7}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->hideErrorPromptTextView(I)V
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
invoke-static {v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
move-result-object v6
invoke-interface {v6, v7}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V
:cond_1c
invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_2c
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
:goto_2b
:cond_2b
return-void
:cond_2c
const-string/jumbo v6, "@"
invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-lez v1, :cond_9a
const/4 v6, 0x0
invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
add-int/lit8 v6, v1, 0x1
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v7
if-eq v6, v7, :cond_49
add-int/lit8 v6, v1, 0x1
invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
:cond_49
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_55
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
goto :goto_2b
:cond_55
const/4 v2, 0x0
const/4 v0, 0x0
:goto_57
invoke-static {}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$2()[Ljava/lang/String;
move-result-object v6
array-length v6, v6
if-lt v0, v6, :cond_66
:goto_5e
if-nez v2, :cond_2b
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
goto :goto_2b
:cond_66
invoke-static {}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$2()[Ljava/lang/String;
move-result-object v6
aget-object v6, v6, v0
invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_97
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "@"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$2()[Ljava/lang/String;
move-result-object v8
aget-object v8, v8, v0
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6, v7}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
const/4 v2, 0x1
goto :goto_5e
:cond_97
add-int/lit8 v0, v0, 0x1
goto :goto_57
:cond_9a
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
#setter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v6, v9}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
goto :goto_2b
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method