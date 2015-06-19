.class Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;
.super Ljava/lang/Object;
.source "GeneralInterfaceActivity.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/tencent/weibo/sdk/android/model/ModelResult;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_21
    if-eqz v1, :cond_4c

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    const-string/jumbo v3, "\u6210\u529f"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    const-class v3, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    invoke-virtual {v2, v0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_4b
    return-void

    :cond_4c
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;

    const-string/jumbo v3, "\u53d1\u751f\u5f02\u5e38"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4b
.end method
