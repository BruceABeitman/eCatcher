.class  Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;
.super Ljava/lang/Object;
.source "GeneralInterfaceActivity.java"
.implements Landroid/os/MessageQueue$IdleHandler;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public queueIdle()Z
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;
invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/PopupWindow;
move-result-object v0
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/ScrollView;
move-result-object v1
const/16 v2, 0x11
const/16 v3, 0x50
invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
return v4
.end method