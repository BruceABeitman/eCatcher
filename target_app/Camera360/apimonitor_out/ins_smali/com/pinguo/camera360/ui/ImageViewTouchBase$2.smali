.class  Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;
.field private final synthetic val$centerX:F
.field private final synthetic val$centerY:F
.field private final synthetic val$durationMs:F
.field private final synthetic val$incrementPerMs:F
.field private final synthetic val$oldScale:F
.field private final synthetic val$startTime:J
.method constructor <init>(Lcom/pinguo/camera360/ui/ImageViewTouchBase;FJFFFF)V
.registers 9
iput-object p1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;
iput p2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$durationMs:F
iput-wide p3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$startTime:J
iput p5, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$oldScale:F
iput p6, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$incrementPerMs:F
iput p7, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$centerX:F
iput p8, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$centerY:F
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$durationMs:F
iget-wide v5, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$startTime:J
sub-long v5, v1, v5
long-to-float v5, v5
invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F
move-result v0
iget v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$oldScale:F
iget v5, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$incrementPerMs:F
mul-float/2addr v5, v0
add-float v3, v4, v5
iget-object v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;
iget v5, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$centerX:F
iget v6, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$centerY:F
invoke-virtual {v4, v3, v5, v6}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomTo(FFF)V
iget v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->val$durationMs:F
cmpg-float v4, v0, v4
if-gez v4, :cond_2c
iget-object v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;->this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;
iget-object v4, v4, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mHandler:Landroid/os/Handler;
invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_2c
return-void
.end method