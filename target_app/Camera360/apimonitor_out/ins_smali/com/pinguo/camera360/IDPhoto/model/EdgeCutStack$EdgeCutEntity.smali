.class public Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
.super Ljava/lang/Object;
.source "EdgeCutStack.java"
.field public brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
.field public paintBlurRadius:I
.field public paintStrokeWidth:F
.field public path:Landroid/graphics/Path;
.field public pointf:Landroid/graphics/PointF;
.method constructor <init>(Landroid/graphics/Path;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->path:Landroid/graphics/Path;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintStrokeWidth:F
iput p4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintBlurRadius:I
return-void
.end method
.method constructor <init>(Landroid/graphics/PointF;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->pointf:Landroid/graphics/PointF;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintStrokeWidth:F
iput p4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintBlurRadius:I
return-void
.end method
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.registers 6
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintStrokeWidth:F
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintBlurRadius:I
if-lez v0, :cond_2b
new-instance v0, Landroid/graphics/BlurMaskFilter;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->paintBlurRadius:I
int-to-float v1, v1
sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;
invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
:goto_16
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
sget-object v1, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->erase:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
if-ne v0, v1, :cond_30
const/high16 v0, -0x100
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V
:goto_21
:cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->path:Landroid/graphics/Path;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->path:Landroid/graphics/Path;
invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
:goto_2a
return-void
:cond_2b
const/4 v0, 0x0
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
goto :goto_16
:cond_30
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->brush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
sget-object v1, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->recover:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;
if-ne v0, v1, :cond_21
const/4 v0, -0x1
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V
goto :goto_21
:cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->pointf:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->pointf:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->y:F
invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
goto :goto_2a
.end method