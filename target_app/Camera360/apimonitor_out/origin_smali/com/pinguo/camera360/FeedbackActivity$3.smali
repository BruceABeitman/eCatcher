.class Lcom/pinguo/camera360/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/FeedbackActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/FeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;

    #getter for: Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/camera360/FeedbackActivity;->access$4(Lcom/pinguo/camera360/FeedbackActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->deleteLogFileByKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity$3;->this$0:Lcom/pinguo/camera360/FeedbackActivity;

    #getter for: Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/FeedbackActivity;->access$5(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
