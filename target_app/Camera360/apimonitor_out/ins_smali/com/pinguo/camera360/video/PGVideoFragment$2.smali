.class  Lcom/pinguo/camera360/video/PGVideoFragment$2;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"
.implements Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$2;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onZoomValueChanged(I)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->setZoom(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$2;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->setVideoParametersWhenIdle(I)V
return-void
.end method