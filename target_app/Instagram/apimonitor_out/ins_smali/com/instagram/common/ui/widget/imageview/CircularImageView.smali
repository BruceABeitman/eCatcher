.class public Lcom/instagram/common/ui/widget/imageview/CircularImageView;
.super Lcom/instagram/common/ui/widget/imageview/IgImageView;
.source "CircularImageView.java"
.field private b:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method private static a(I)Landroid/graphics/drawable/GradientDrawable;
.registers 3
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
return-object v0
.end method
.method private a(Landroid/util/AttributeSet;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/facebook/bb;->CircularImageView:[I
invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Lcom/facebook/bb;->CircularImageView_strokeColor:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
sget v2, Lcom/facebook/bb;->CircularImageView_strokeWidth:I
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v2
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
if-eqz v2, :cond_23
new-instance v0, Lcom/instagram/common/ui/widget/imageview/b;
invoke-direct {v0, v2, v1}, Lcom/instagram/common/ui/widget/imageview/b;-><init>(II)V
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
:cond_23
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->onDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_c
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 9
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3, p4}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->onSizeChanged(IIII)V
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->getHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_15
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
if-eqz p1, :cond_b
new-instance v0, Lcom/instagram/common/ui/widget/imageview/a;
invoke-direct {v0, p1}, Lcom/instagram/common/ui/widget/imageview/a;-><init>(Landroid/graphics/Bitmap;)V
:goto_7
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 5
instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_e
check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_d
return-void
:cond_e
instance-of v0, p1, Lcom/instagram/common/ui/widget/imageview/c;
if-eqz v0, :cond_20
check-cast p1, Lcom/instagram/common/ui/widget/imageview/c;
invoke-virtual {p1}, Lcom/instagram/common/ui/widget/imageview/c;->a()I
move-result v0
invoke-static {v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->a(I)Landroid/graphics/drawable/GradientDrawable;
move-result-object v0
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_d
:cond_20
instance-of v0, p1, Lcom/instagram/common/ui/widget/imageview/a;
if-nez v0, :cond_2a
instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;
if-nez v0, :cond_2a
if-nez p1, :cond_2e
:cond_2a
invoke-super {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_d
:cond_2e
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "This view doesn\'t support drawable type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setImageResource(I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Use setImageDrawable or setImageBitmap"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setImageURI(Landroid/net/Uri;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Use setImageDrawable or setImageBitmap"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setStrokeAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_9
return-void
.end method