.class  Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;
.super Ljava/lang/Object;
.source "MainPage_Activity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
#getter for: Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->context:Landroid/content/Context;
invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->access$0(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/tencent/weibo/sdk/android/api/util/Util;->clearSharePersistent(Landroid/content/Context;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
const-string/jumbo v1, "\u6ce8\u9500\u6210\u529f"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method