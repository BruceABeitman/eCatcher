.class  Lcom/pinguo/camera360/gallery/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"
.implements Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public invalidate()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
return-void
.end method
.method public isHoldingDelete()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isHoldingDown()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v0
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onAbsorb(II)V
.registers 3
return-void
.end method
.method public onPull(II)V
.registers 3
return-void
.end method
.method public onRelease()V
.registers 1
return-void
.end method