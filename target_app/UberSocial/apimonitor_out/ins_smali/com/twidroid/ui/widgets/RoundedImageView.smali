.class public Lcom/twidroid/ui/widgets/RoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 7
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/RoundedImageView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0a0038
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
new-instance v2, Landroid/graphics/RectF;
invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;
move-result-object v3
invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
int-to-float v3, v1
int-to-float v1, v1
sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
invoke-virtual {v0}, Landroid/graphics/Path;->close()V
:try_start_23
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
:try_end_26
.catch Ljava/lang/UnsupportedOperationException; {:try_start_23 .. :try_end_26} :catch_2a
:goto_26
invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
return-void
:catch_2a
move-exception v0
goto :goto_26
.end method