.class Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$3;
.super Ljava/lang/Object;
.source "Camera360CommonProblemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$3;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$3;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    #getter for: Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->access$0(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
