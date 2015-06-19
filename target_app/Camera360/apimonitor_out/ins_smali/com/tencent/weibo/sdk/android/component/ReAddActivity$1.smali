.class  Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;
.super Ljava/lang/Object;
.source "ReAddActivity.java"
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResult(Ljava/lang/Object;)V
.registers 6
const/4 v3, 0x0
move-object v0, p1
check-cast v0, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires()Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getError_message()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_17
return-void
:cond_18
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isSuccess()Z
move-result v1
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
const-string/jumbo v2, "\u8f6c\u64ad\u6210\u529f"
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->finish()V
goto :goto_17
:cond_30
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getError_message()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->finish()V
goto :goto_17
.end method