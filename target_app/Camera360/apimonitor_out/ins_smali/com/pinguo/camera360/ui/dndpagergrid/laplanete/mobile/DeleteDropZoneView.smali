.class public Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
.super Landroid/view/View;
.source "DeleteDropZoneView.java"
.field private bitmapPaint:Landroid/graphics/Paint;
.field private bitmapPaintRed:Landroid/graphics/Paint;
.field private bounds:Landroid/graphics/Rect;
.field private straight:Z
.field private textPaintRed:Landroid/graphics/Paint;
.field private textPaintStraight:Landroid/graphics/Paint;
.field private trash:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x1
const/high16 v3, -0x1
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput-boolean v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->straight:Z
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bounds:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->createTextPaint()Landroid/graphics/Paint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->textPaintStraight:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->textPaintStraight:Landroid/graphics/Paint;
const/4 v2, -0x1
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->createTextPaint()Landroid/graphics/Paint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->textPaintRed:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->textPaintRed:Landroid/graphics/Paint;
invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->createBaseBitmapPaint()Landroid/graphics/Paint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bitmapPaint:Landroid/graphics/Paint;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->createBaseBitmapPaint()Landroid/graphics/Paint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bitmapPaintRed:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/LightingColorFilter;
invoke-direct {v0, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bitmapPaintRed:Landroid/graphics/Paint;
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
const/high16 v1, -0x100
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
const/16 v2, 0xc8
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method private createBaseBitmapPaint()Landroid/graphics/Paint;
.registers 3
const/4 v1, 0x1
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V
return-object v0
.end method
.method private createTextPaint()Landroid/graphics/Paint;
.registers 3
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
return-object v0
.end method
.method private getImage(III)Landroid/graphics/Bitmap;
.registers 7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
const/4 v2, 0x1
invoke-static {v0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v0, :cond_18
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->isInEditMode()Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_18
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->invalidate()V
return-object v1
.end method
.method private initTrashIcon()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->trash:Landroid/graphics/Bitmap;
if-nez v0, :cond_15
const v0, 0x7f0201f2
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v2
invoke-direct {p0, v0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getImage(III)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->trash:Landroid/graphics/Bitmap;
:cond_15
return-void
.end method
.method public highlight()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->straight:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->invalidate()V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 5
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredWidth()I
move-result v1
const-string/jumbo v2, ""
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->initTrashIcon()V
return-void
.end method
.method public smother()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->straight:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->invalidate()V
return-void
.end method