.class  Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4;
.super Ljava/lang/Object;
.source "ReAddActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->reAddWeibo()V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method