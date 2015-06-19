.class public Lcom/facebook/katana/ActionMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuButton.java"
.field private static final CORNER_RADIUS:I = 0x8
.field private static final PADDING_H:I = 0x5
.field private static final PADDING_V:I = 0x1
.field private mPaint:Landroid/graphics/Paint;
.field private final mRect:Landroid/graphics/RectF;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ActionMenuButton;->mRect:Landroid/graphics/RectF;
invoke-direct {p0}, Lcom/facebook/katana/ActionMenuButton;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ActionMenuButton;->mRect:Landroid/graphics/RectF;
invoke-direct {p0}, Lcom/facebook/katana/ActionMenuButton;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ActionMenuButton;->mRect:Landroid/graphics/RectF;
invoke-direct {p0}, Lcom/facebook/katana/ActionMenuButton;->init()V
return-void
.end method
.method private init()V
.registers 4
const/4 v2, 0x5
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/facebook/katana/ActionMenuButton;->setFocusable(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v2, v0, v2, v1}, Lcom/facebook/katana/ActionMenuButton;->setPadding(IIII)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/facebook/katana/ActionMenuButton;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/facebook/katana/ActionMenuButton;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070006
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 13
const/high16 v10, 0x4100
const/high16 v8, 0x40a0
const/4 v9, 0x0
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getLayout()Landroid/text/Layout;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/ActionMenuButton;->mRect:Landroid/graphics/RectF;
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getCompoundPaddingLeft()I
move-result v1
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getExtendedPaddingTop()I
move-result v3
int-to-float v4, v1
invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineLeft(I)F
move-result v5
add-float/2addr v4, v5
sub-float/2addr v4, v8
invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I
move-result v5
add-int/2addr v5, v3
const/4 v6, 0x1
sub-int/2addr v5, v6
int-to-float v5, v5
int-to-float v6, v1
invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineRight(I)F
move-result v7
add-float/2addr v6, v7
add-float/2addr v6, v8
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getScrollX()I
move-result v7
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getRight()I
move-result v8
add-int/2addr v7, v8
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->getLeft()I
move-result v8
sub-int/2addr v7, v8
int-to-float v7, v7
invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F
move-result v6
invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBottom(I)I
move-result v7
add-int/2addr v7, v3
add-int/lit8 v7, v7, 0x1
int-to-float v7, v7
invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v4, p0, Lcom/facebook/katana/ActionMenuButton;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected drawableStateChanged()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/ActionMenuButton;->invalidate()V
invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V
return-void
.end method