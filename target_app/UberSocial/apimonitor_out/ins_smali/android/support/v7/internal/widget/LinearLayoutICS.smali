.class public Landroid/support/v7/internal/widget/LinearLayoutICS;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private static final a:I = 0x0
.field private static final b:I = 0x1
.field private static final c:I = 0x2
.field private static final d:I = 0x4
.field private final e:Landroid/graphics/drawable/Drawable;
.field private final f:I
.field private final g:I
.field private final h:I
.field private final i:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v2, Landroid/support/v7/a/n;->LinearLayoutICS:[I
invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_3d
iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
:goto_25
invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->h:I
const/4 v3, 0x2
invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->i:I
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
iget-object v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_42
:goto_39
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->setWillNotDraw(Z)V
return-void
:cond_3d
iput v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
iput v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
goto :goto_25
:cond_42
move v0, v1
goto :goto_39
.end method
.method  a(Landroid/graphics/Canvas;)V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_31
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_2d
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v4, 0x8
if-eq v0, v4, :cond_2d
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
sub-int v0, v3, v0
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(Landroid/graphics/Canvas;I)V
:cond_2d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_31
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v0
if-eqz v0, :cond_4e
add-int/lit8 v0, v2, -0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_4f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I
move-result v1
sub-int/2addr v0, v1
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
sub-int/2addr v0, v1
:goto_4b
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(Landroid/graphics/Canvas;I)V
:cond_4e
return-void
:cond_4f
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v0
goto :goto_4b
.end method
.method  a(Landroid/graphics/Canvas;I)V
.registers 7
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingLeft()I
move-result v1
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->i:I
add-int/2addr v1, v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->i:I
sub-int/2addr v2, v3
iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
add-int/2addr v3, p2
invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected a(I)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
if-nez p1, :cond_d
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->h:I
and-int/lit8 v2, v2, 0x1
if-eqz v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
move v0, v1
goto :goto_a
:cond_d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I
move-result v2
if-ne p1, v2, :cond_1b
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->h:I
and-int/lit8 v2, v2, 0x4
if-nez v2, :cond_a
move v0, v1
goto :goto_a
:cond_1b
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->h:I
and-int/lit8 v2, v2, 0x2
if-eqz v2, :cond_34
add-int/lit8 v2, p1, -0x1
:goto_23
if-ltz v2, :cond_36
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v4, 0x8
if-ne v3, v4, :cond_a
add-int/lit8 v2, v2, -0x1
goto :goto_23
:cond_34
move v0, v1
goto :goto_a
:cond_36
move v0, v1
goto :goto_a
.end method
.method  b(Landroid/graphics/Canvas;)V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_31
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_2d
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v4, 0x8
if-eq v0, v4, :cond_2d
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
sub-int v0, v3, v0
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->b(Landroid/graphics/Canvas;I)V
:cond_2d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_31
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v0
if-eqz v0, :cond_4e
add-int/lit8 v0, v2, -0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_4f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I
move-result v1
sub-int/2addr v0, v1
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
sub-int/2addr v0, v1
:goto_4b
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->b(Landroid/graphics/Canvas;I)V
:cond_4e
return-void
:cond_4f
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
goto :goto_4b
.end method
.method  b(Landroid/graphics/Canvas;I)V
.registers 8
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingTop()I
move-result v1
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->i:I
add-int/2addr v1, v2
iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
add-int/2addr v2, p2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I
move-result v4
sub-int/2addr v3, v4
iget v4, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->i:I
sub-int/2addr v3, v4
invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method public getSupportDividerWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
return v0
.end method
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
.registers 11
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_23
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->indexOfChild(Landroid/view/View;)I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_36
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v3
if-eqz v3, :cond_27
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
:cond_23
:goto_23
invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V
return-void
:cond_27
add-int/lit8 v3, v2, -0x1
if-ne v1, v3, :cond_23
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v1
if-eqz v1, :cond_23
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->g:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
goto :goto_23
:cond_36
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v3
if-eqz v3, :cond_41
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
goto :goto_23
:cond_41
add-int/lit8 v3, v2, -0x1
if-ne v1, v3, :cond_23
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z
move-result v1
if-eqz v1, :cond_23
iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->f:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
goto :goto_23
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:Landroid/graphics/drawable/Drawable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_10
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(Landroid/graphics/Canvas;)V
goto :goto_4
:cond_10
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->b(Landroid/graphics/Canvas;)V
goto :goto_4
.end method