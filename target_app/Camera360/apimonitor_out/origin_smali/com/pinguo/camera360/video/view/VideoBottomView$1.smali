.class Lcom/pinguo/camera360/video/view/VideoBottomView$1;
.super Ljava/lang/Object;
.source "VideoBottomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/view/VideoBottomView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/view/VideoBottomView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/view/VideoBottomView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView$1;->this$0:Lcom/pinguo/camera360/video/view/VideoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView$1;->this$0:Lcom/pinguo/camera360/video/view/VideoBottomView;

    #getter for: Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
    invoke-static {v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->access$0(Lcom/pinguo/camera360/video/view/VideoBottomView;)Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    return-void
.end method
