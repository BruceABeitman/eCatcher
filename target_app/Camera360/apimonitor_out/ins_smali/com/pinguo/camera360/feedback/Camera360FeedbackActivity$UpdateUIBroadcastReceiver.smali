.class  Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Camera360FeedbackActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
.method private constructor <init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;-><init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->start()V
return-void
.end method