.class  Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
return-void
.end method
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F
move-result v1
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F
move-result v2
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F
move-result v3
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onScale(FFF)Z
move-result v0
return v0
.end method
.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F
move-result v1
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F
move-result v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onScaleBegin(FF)Z
move-result v0
return v0
.end method
.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onScaleEnd()V
return-void
.end method