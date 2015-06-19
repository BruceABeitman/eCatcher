.class Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;
.super Ljava/lang/Object;
.source "LoadingPictureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/view/LoadingPictureView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    #getter for: Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->access$0(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    #getter for: Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->access$0(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;->onReloadClick()V

    :cond_11
    return-void
.end method
