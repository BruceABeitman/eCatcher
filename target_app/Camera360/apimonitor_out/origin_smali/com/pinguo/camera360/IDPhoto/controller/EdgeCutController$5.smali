.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;
.super Ljava/lang/Object;
.source "EdgeCutController.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchBegin()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public onTouchEnd()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_12
    return-void
.end method
