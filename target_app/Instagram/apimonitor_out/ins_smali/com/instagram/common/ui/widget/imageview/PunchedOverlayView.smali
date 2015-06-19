.class public Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;
.super Landroid/view/View;
.source "PunchedOverlayView.java"
.field private final a:I
.field private b:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/16 v0, 0xc0
invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/16 v0, 0xc0
invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/16 v0, 0xc0
invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a:I
return-void
.end method
.method public final a(IIF)V
.registers 8
const/4 v0, 0x0
cmpg-float v0, p3, v0
if-gtz v0, :cond_15
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
:goto_11
:cond_11
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->invalidate()V
return-void
:cond_15
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v1, Landroid/graphics/PorterDuffXfermode;
sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->getWidth()I
move-result v2
if-ne v1, v2, :cond_4a
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->getHeight()I
move-result v2
if-eq v1, v2, :cond_60
:cond_4a
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->getHeight()I
move-result v2
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V
:cond_60
new-instance v1, Landroid/graphics/Canvas;
iget-object v2, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iget v2, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a:I
invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V
int-to-float v2, p1
int-to-float v3, p2
invoke-virtual {v1, v2, v3, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
goto :goto_11
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
const/4 v1, 0x0
invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
:goto_b
return-void
:cond_c
iget v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a:I
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
goto :goto_b
.end method
.method protected onWindowVisibilityChanged(I)V
.registers 3
invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->b:Landroid/graphics/Bitmap;
:cond_11
return-void
.end method