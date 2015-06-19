.class public Lcom/pinguo/camera360/camera/view/PreviewFrameView;
.super Landroid/view/View;
.source "PreviewFrameView.java"
.field private backPaint:Landroid/graphics/Paint;
.field private cRect:Landroid/graphics/Rect;
.field private previewFrame:I
.field private previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->init()V
return-void
.end method
.method private init()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 9
iget v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
if-eqz v1, :cond_8
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
if-nez v1, :cond_c
:cond_8
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
:goto_b
return-void
:cond_c
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
invoke-interface {v1}, Lcom/pinguo/camera360/photoedit/PreviewRectInterface;->getFrameRect()Landroid/graphics/Rect;
move-result-object v6
if-nez v6, :cond_18
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
goto :goto_b
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
int-to-float v1, v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
int-to-float v3, v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->cRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v4
sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V
iget v1, v6, Landroid/graphics/Rect;->left:I
int-to-float v1, v1
iget v2, v6, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
iget v3, v6, Landroid/graphics/Rect;->right:I
int-to-float v3, v3
iget v4, v6, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v4
sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->backPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
goto :goto_b
.end method
.method public setPreviewFrame(IZ)V
.registers 4
iput p1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
if-eqz p2, :cond_17
iget v0, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewFrame:I
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->getVisibility()I
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->invalidate()V
:goto_11
return-void
:cond_12
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setVisibility(I)V
goto :goto_11
:cond_17
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setVisibility(I)V
goto :goto_11
.end method
.method public setPreviewRectInterface(Lcom/pinguo/camera360/photoedit/PreviewRectInterface;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
return-void
.end method