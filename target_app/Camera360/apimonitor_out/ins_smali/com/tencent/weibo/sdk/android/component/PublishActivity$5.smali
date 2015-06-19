.class  Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;
.super Ljava/util/TimerTask;
.source "PublishActivity.java"
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v0
const/4 v1, 0x0
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method