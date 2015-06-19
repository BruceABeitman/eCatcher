.class  Lcom/pinguo/camera360/gallery/ui/StringTexture;
.super Lcom/pinguo/camera360/gallery/ui/CanvasTexture;
.source "StringTexture.java"
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;
.field private final mPaint:Landroid/text/TextPaint;
.field private final mText:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
.registers 6
invoke-direct {p0, p4, p5}, Lcom/pinguo/camera360/gallery/ui/CanvasTexture;-><init>(II)V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mText:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;
return-void
.end method
.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
.registers 6
const/4 v3, 0x0
new-instance v0, Landroid/text/TextPaint;
invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V
invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V
invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V
const/high16 v1, 0x4000
const/high16 v2, -0x100
invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V
return-object v0
.end method
.method public static newInstance(Ljava/lang/String;FI)Lcom/pinguo/camera360/gallery/ui/StringTexture;
.registers 4
invoke-static {p1, p2}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;
move-result-object v0
invoke-static {p0, v0}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/camera360/gallery/ui/StringTexture;
move-result-object v0
return-object v0
.end method
.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/pinguo/camera360/gallery/ui/StringTexture;
.registers 7
invoke-static {p1, p2}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;
move-result-object v0
if-eqz p4, :cond_e
const/4 v1, 0x1
invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
:cond_e
const/4 v1, 0x0
cmpl-float v1, p3, v1
if-lez v1, :cond_1d
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object p0
:cond_1d
invoke-static {p0, v0}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/camera360/gallery/ui/StringTexture;
move-result-object v1
return-object v1
.end method
.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/camera360/gallery/ui/StringTexture;
.registers 8
invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
move-result-object v3
invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
move-result v0
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v4, v0
iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I
sub-int v5, v0, v1
if-gtz v4, :cond_17
const/4 v4, 0x1
:cond_17
if-gtz v5, :cond_1a
const/4 v5, 0x1
:cond_1a
new-instance v0, Lcom/pinguo/camera360/gallery/ui/StringTexture;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
return-object v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;
iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
neg-int v0, v0
int-to-float v0, v0
invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mText:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;
invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-void
.end method