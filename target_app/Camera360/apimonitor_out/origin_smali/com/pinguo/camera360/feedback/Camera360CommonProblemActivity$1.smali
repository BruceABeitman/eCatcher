.class Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;
.super Ljava/lang/Object;
.source "Camera360CommonProblemActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->finish()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    const-class v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
