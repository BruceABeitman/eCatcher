.class Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;
.super Ljava/util/TimerTask;
.source "PublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/PublishActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$4(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
