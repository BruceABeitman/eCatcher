.class  Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;
.super Ljava/lang/Object;
.source "PublishActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
invoke-static {}, Landroid/os/Looper;->prepare()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v0
const/16 v1, 0xf
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$9(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/location/Location;
move-result-object v1
if-nez v1, :cond_34
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->context:Landroid/content/Context;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$10(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;
move-result-object v2
#setter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;
invoke-static {v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$11(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Landroid/location/Location;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$9(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_34
const/16 v1, 0xa
iput v1, v0, Landroid/os/Message;->what:I
:cond_34
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
invoke-static {}, Landroid/os/Looper;->loop()V
return-void
.end method