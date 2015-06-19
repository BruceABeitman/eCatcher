.class  Lcom/pinguo/camera360/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/FeedbackActivity;
.method constructor <init>(Lcom/pinguo/camera360/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity$2;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/FeedbackActivity$2;)Lcom/pinguo/camera360/FeedbackActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity$2;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/FeedbackActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v8, Ljava/util/Random;
invoke-direct {v8}, Ljava/util/Random;-><init>()V
const/4 v7, 0x0
:goto_6
const/16 v9, 0x32
if-lt v7, v9, :cond_23
const-wide/16 v9, 0x3e8
:try_start_c
invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
:goto_f
:try_end_f
.catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_4e
iget-object v9, p0, Lcom/pinguo/camera360/FeedbackActivity$2;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
#calls: Lcom/pinguo/camera360/FeedbackActivity;->refreshLog()V
invoke-static {v9}, Lcom/pinguo/camera360/FeedbackActivity;->access$2(Lcom/pinguo/camera360/FeedbackActivity;)V
iget-object v9, p0, Lcom/pinguo/camera360/FeedbackActivity$2;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
#getter for: Lcom/pinguo/camera360/FeedbackActivity;->msvLog:Landroid/widget/ScrollView;
invoke-static {v9}, Lcom/pinguo/camera360/FeedbackActivity;->access$3(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/ScrollView;
move-result-object v9
new-instance v10, Lcom/pinguo/camera360/FeedbackActivity$2$1;
invoke-direct {v10, p0}, Lcom/pinguo/camera360/FeedbackActivity$2$1;-><init>(Lcom/pinguo/camera360/FeedbackActivity$2;)V
invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z
const-string v1, " - Lcom/pinguo/camera360/FeedbackActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
invoke-static {}, Lcom/pinguo/camera360/lib/feedback/F$activity;->values()[Lcom/pinguo/camera360/lib/feedback/F$activity;
move-result-object v2
array-length v9, v2
invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I
move-result v9
aget-object v3, v2, v9
invoke-static {}, Lcom/pinguo/camera360/lib/feedback/F$action;->values()[Lcom/pinguo/camera360/lib/feedback/F$action;
move-result-object v1
array-length v9, v1
invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I
move-result v9
aget-object v0, v1, v9
invoke-static {}, Lcom/pinguo/camera360/lib/feedback/F$effect;->values()[Lcom/pinguo/camera360/lib/feedback/F$effect;
move-result-object v6
array-length v9, v6
invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I
move-result v9
aget-object v5, v6, v9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
add-int/lit8 v7, v7, 0x1
goto :goto_6
:catch_4e
move-exception v4
invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_f
.end method