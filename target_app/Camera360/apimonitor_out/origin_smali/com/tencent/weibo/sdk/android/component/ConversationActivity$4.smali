.class Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->click(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

.field private final synthetic val$li:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

    iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->val$li:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

    const-class v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "conversation"

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->val$li:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

    invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->finish()V

    return-void
.end method
