.class Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;
.super Ljava/lang/Object;
.source "PreviewAdjustDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    #setter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;->adjustPreview(I)V

    :cond_2d
    return-void
.end method
