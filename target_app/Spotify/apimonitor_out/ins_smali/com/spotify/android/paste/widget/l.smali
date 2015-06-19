.class final Lcom/spotify/android/paste/widget/l;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:I
.field private final b:Landroid/graphics/Paint;
.field private final c:I
.field private final d:Landroid/graphics/Paint;
.field private final e:Z
.field private final f:I
.field private final g:Landroid/graphics/Paint;
.field private final h:F
.field private i:I
.field private j:F
.field private k:Lcom/spotify/android/paste/widget/k;
.field private final l:Lcom/spotify/android/paste/widget/m;
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 14
const/4 v7, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, v8}, Lcom/spotify/android/paste/widget/l;->setWillNotDraw(Z)V
invoke-virtual {p0, v8}, Lcom/spotify/android/paste/widget/l;->setId(I)V
sget-object v0, Lcom/spotify/android/paste/e;->w:[I
invoke-virtual {p1, p2, v0, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/high16 v1, -0x100
invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v2
invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
const/4 v4, 0x3
const/4 v5, -0x1
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v4
const/4 v5, 0x4
const v6, -0xff0100
invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v5
const/4 v6, 0x5
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
const/16 v0, 0x26
invoke-static {v4, v0}, Lcom/spotify/android/paste/widget/l;->a(IB)I
move-result v0
iput v0, p0, Lcom/spotify/android/paste/widget/l;->f:I
new-instance v0, Lcom/spotify/android/paste/widget/m;
invoke-direct {v0, v8}, Lcom/spotify/android/paste/widget/m;-><init>(B)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/l;->l:Lcom/spotify/android/paste/widget/m;
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->l:Lcom/spotify/android/paste/widget/m;
new-array v7, v9, [I
aput v5, v7, v8
invoke-virtual {v0, v7}, Lcom/spotify/android/paste/widget/m;->a([I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->l:Lcom/spotify/android/paste/widget/m;
new-array v5, v9, [I
const/16 v7, 0x20
invoke-static {v4, v7}, Lcom/spotify/android/paste/widget/l;->a(IB)I
move-result v4
aput v4, v5, v8
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/m;->b([I)V
iput v2, p0, Lcom/spotify/android/paste/widget/l;->a:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/l;->b:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->b:Landroid/graphics/Paint;
iget v2, p0, Lcom/spotify/android/paste/widget/l;->f:I
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iput v6, p0, Lcom/spotify/android/paste/widget/l;->c:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/l;->d:Landroid/graphics/Paint;
iput-boolean v9, p0, Lcom/spotify/android/paste/widget/l;->e:Z
const/high16 v0, 0x3f00
iput v0, p0, Lcom/spotify/android/paste/widget/l;->h:F
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/l;->g:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->g:Landroid/graphics/Paint;
int-to-float v2, v3
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/l;->setBackgroundColor(I)V
return-void
.end method
.method private static a(IB)I
.registers 5
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
return v0
.end method
.method final a(IF)V
.registers 5
iget v0, p0, Lcom/spotify/android/paste/widget/l;->i:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
iput p1, p0, Lcom/spotify/android/paste/widget/l;->i:I
iput p2, p0, Lcom/spotify/android/paste/widget/l;->j:F
iget v0, p0, Lcom/spotify/android/paste/widget/l;->i:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/l;->invalidate()V
return-void
.end method
.method protected final onDraw(Landroid/graphics/Canvas;)V
.registers 16
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/l;->getHeight()I
move-result v6
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/l;->getChildCount()I
move-result v8
const/4 v0, 0x0
iget v1, p0, Lcom/spotify/android/paste/widget/l;->h:F
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
const/high16 v1, 0x3f80
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
int-to-float v1, v6
mul-float/2addr v0, v1
float-to-int v9, v0
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->k:Lcom/spotify/android/paste/widget/k;
if-eqz v0, :cond_139
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->k:Lcom/spotify/android/paste/widget/k;
move-object v7, v0
:goto_1f
if-lez v8, :cond_e9
iget v0, p0, Lcom/spotify/android/paste/widget/l;->i:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v2
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/l;->e:Z
if-eqz v0, :cond_13e
invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I
move-result v0
:goto_33
add-int v3, v2, v0
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v2
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/l;->e:Z
if-eqz v0, :cond_141
invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I
move-result v0
:goto_41
sub-int/2addr v2, v0
iget v0, p0, Lcom/spotify/android/paste/widget/l;->i:I
invoke-interface {v7, v0}, Lcom/spotify/android/paste/widget/k;->a(I)I
move-result v0
iget v1, p0, Lcom/spotify/android/paste/widget/l;->j:F
const/4 v4, 0x0
cmpl-float v1, v1, v4
if-lez v1, :cond_14b
iget v1, p0, Lcom/spotify/android/paste/widget/l;->i:I
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/l;->getChildCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-ge v1, v4, :cond_14b
iget v1, p0, Lcom/spotify/android/paste/widget/l;->i:I
add-int/lit8 v1, v1, 0x1
invoke-interface {v7, v1}, Lcom/spotify/android/paste/widget/k;->a(I)I
move-result v1
if-eq v0, v1, :cond_96
iget v4, p0, Lcom/spotify/android/paste/widget/l;->j:F
const/high16 v5, 0x3f80
sub-float/2addr v5, v4
invoke-static {v1}, Landroid/graphics/Color;->red(I)I
move-result v10
int-to-float v10, v10
mul-float/2addr v10, v4
invoke-static {v0}, Landroid/graphics/Color;->red(I)I
move-result v11
int-to-float v11, v11
mul-float/2addr v11, v5
add-float/2addr v10, v11
invoke-static {v1}, Landroid/graphics/Color;->green(I)I
move-result v11
int-to-float v11, v11
mul-float/2addr v11, v4
invoke-static {v0}, Landroid/graphics/Color;->green(I)I
move-result v12
int-to-float v12, v12
mul-float/2addr v12, v5
add-float/2addr v11, v12
invoke-static {v1}, Landroid/graphics/Color;->blue(I)I
move-result v1
int-to-float v1, v1
mul-float/2addr v1, v4
invoke-static {v0}, Landroid/graphics/Color;->blue(I)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v5
add-float/2addr v0, v1
float-to-int v1, v10
float-to-int v4, v11
float-to-int v0, v0
invoke-static {v1, v4, v0}, Landroid/graphics/Color;->rgb(III)I
move-result v0
:cond_96
iget v1, p0, Lcom/spotify/android/paste/widget/l;->i:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v4
iget v5, p0, Lcom/spotify/android/paste/widget/l;->j:F
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v10
iget-boolean v1, p0, Lcom/spotify/android/paste/widget/l;->e:Z
if-eqz v1, :cond_144
invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I
move-result v1
:goto_ac
add-int/2addr v1, v10
int-to-float v1, v1
mul-float/2addr v1, v5
const/high16 v5, 0x3f80
iget v10, p0, Lcom/spotify/android/paste/widget/l;->j:F
sub-float/2addr v5, v10
int-to-float v3, v3
mul-float/2addr v3, v5
add-float/2addr v1, v3
float-to-int v3, v1
iget v5, p0, Lcom/spotify/android/paste/widget/l;->j:F
invoke-virtual {v4}, Landroid/view/View;->getRight()I
move-result v10
iget-boolean v1, p0, Lcom/spotify/android/paste/widget/l;->e:Z
if-eqz v1, :cond_147
invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I
move-result v1
:goto_c6
sub-int v1, v10, v1
int-to-float v1, v1
mul-float/2addr v1, v5
const/high16 v4, 0x3f80
iget v5, p0, Lcom/spotify/android/paste/widget/l;->j:F
sub-float/2addr v4, v5
int-to-float v2, v2
mul-float/2addr v2, v4
add-float/2addr v1, v2
float-to-int v1, v1
move v13, v1
move v1, v3
move v3, v13
:goto_d6
iget-object v2, p0, Lcom/spotify/android/paste/widget/l;->d:Landroid/graphics/Paint;
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v1, v1
iget v0, p0, Lcom/spotify/android/paste/widget/l;->c:I
sub-int v0, v6, v0
int-to-float v2, v0
int-to-float v3, v3
int-to-float v4, v6
iget-object v5, p0, Lcom/spotify/android/paste/widget/l;->d:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_e9
iget v0, p0, Lcom/spotify/android/paste/widget/l;->a:I
if-lez v0, :cond_ff
const/4 v1, 0x0
iget v0, p0, Lcom/spotify/android/paste/widget/l;->a:I
sub-int v0, v6, v0
int-to-float v2, v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/l;->getWidth()I
move-result v0
int-to-float v3, v0
int-to-float v4, v6
iget-object v5, p0, Lcom/spotify/android/paste/widget/l;->b:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_ff
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->g:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v0
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-lez v0, :cond_14a
sub-int v0, v6, v9
div-int/lit8 v10, v0, 0x2
const/4 v0, 0x0
move v6, v0
:goto_110
add-int/lit8 v0, v8, -0x1
if-ge v6, v0, :cond_14a
invoke-virtual {p0, v6}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/android/paste/widget/l;->g:Landroid/graphics/Paint;
invoke-interface {v7, v6}, Lcom/spotify/android/paste/widget/k;->b(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
int-to-float v1, v1
int-to-float v2, v10
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
int-to-float v3, v0
add-int v0, v10, v9
int-to-float v4, v0
iget-object v5, p0, Lcom/spotify/android/paste/widget/l;->g:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-int/lit8 v0, v6, 0x1
move v6, v0
goto :goto_110
:cond_139
iget-object v0, p0, Lcom/spotify/android/paste/widget/l;->l:Lcom/spotify/android/paste/widget/m;
move-object v7, v0
goto/16 :goto_1f
:cond_13e
const/4 v0, 0x0
goto/16 :goto_33
:cond_141
const/4 v0, 0x0
goto/16 :goto_41
:cond_144
const/4 v1, 0x0
goto/16 :goto_ac
:cond_147
const/4 v1, 0x0
goto/16 :goto_c6
:cond_14a
return-void
:cond_14b
move v1, v3
move v3, v2
goto :goto_d6
.end method