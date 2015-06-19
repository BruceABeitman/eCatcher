.class Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;
.super Ljava/util/TimerTask;
.source "PublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/PublishActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

.field private final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_f
    return-void
.end method
