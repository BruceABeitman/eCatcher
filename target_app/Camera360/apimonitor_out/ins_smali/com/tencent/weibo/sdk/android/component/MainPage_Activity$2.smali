.class  Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;
.super Ljava/lang/Object;
.source "MainPage_Activity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
const-class v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
invoke-virtual {v1, v0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method