.class Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;
.super Ljava/util/TimerTask;
.source "PublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/PublishActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v2, "mks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
