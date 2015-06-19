.class public Lcom/bbm/ui/ea;
.super Landroid/text/style/DynamicDrawableSpan;
.source "MutableImageSpan.java"
.field private final a:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0, v3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V
iput-object p1, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
int-to-float v0, v0
div-float v0, p2, v0
iget-object v1, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
float-to-int v1, p2
iget-object v2, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
.registers 13
const v2, 0xfeff
iget-object v0, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
if-eq v0, v2, :cond_1e
add-int/lit8 v0, p3, 0x1
invoke-interface {p2}, Ljava/lang/CharSequence;->length()I
move-result v1
if-ge v0, v1, :cond_1e
add-int/lit8 v0, p3, 0x1
invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
if-eq v0, v2, :cond_1e
invoke-super/range {p0 .. p9}, Landroid/text/style/DynamicDrawableSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
:cond_1e
return-void
.end method
.method public getDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ea;->a:Landroid/graphics/drawable/Drawable;
return-object v0
.end method