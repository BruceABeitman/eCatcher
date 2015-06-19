.class Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$1;
.super Ljava/lang/Object;
.source "SonyCameraBottomMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$1;->this$0:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$1;->this$0:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;

    #getter for: Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->access$0(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;)Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onShowModeClick()V

    return-void
.end method
