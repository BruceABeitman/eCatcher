.class public abstract Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;
.super Ljava/lang/Object;
.source "AbsEdgeCutEraser.java"
.implements Ljava/lang/Cloneable;
.field protected brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
.field protected center:Landroid/graphics/PointF;
.field protected isSelected:Z
.field protected radius:I
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->center:Landroid/graphics/PointF;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected:Z
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setRadius(I)V
return-void
.end method
.method public copyFrom(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V
.registers 4
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getBrush()Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->radius:I
invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected:Z
invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;
move-result-object v0
iget v0, v0, Landroid/graphics/PointF;->x:F
invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;
move-result-object v1
iget v1, v1, Landroid/graphics/PointF;->y:F
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setCenter(FF)V
goto :goto_2
.end method
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method
.method public abstract drawWithCenter(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
.end method
.method public getBrush()Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
return-object v0
.end method
.method public getCenter()Landroid/graphics/PointF;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->center:Landroid/graphics/PointF;
return-object v0
.end method
.method public getRadius()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->radius:I
return v0
.end method
.method public isSelected()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected:Z
return v0
.end method
.method public abstract onTouch(Landroid/view/MotionEvent;)V
.end method
.method public setBrush(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
return-void
.end method
.method public setCenter(FF)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->center:Landroid/graphics/PointF;
invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V
return-void
.end method
.method public setRadius(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->radius:I
return-void
.end method
.method public setSelected(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected:Z
return-void
.end method