.class  Lcom/pinguo/camera360/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/FeedbackActivity;
.method constructor <init>(Lcom/pinguo/camera360/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/FeedbackActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
#getter for: Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/FeedbackActivity;->access$4(Lcom/pinguo/camera360/FeedbackActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->deleteLogFileByKey(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
#getter for: Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
invoke-static {v1}, Lcom/pinguo/camera360/FeedbackActivity;->access$5(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/TextView;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/pinguo/camera360/FeedbackActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method