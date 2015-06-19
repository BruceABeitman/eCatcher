.class  Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"
.implements Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onDown(FF)V
return-void
.end method
.method public onUp(Landroid/view/MotionEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onUp()V
return-void
.end method