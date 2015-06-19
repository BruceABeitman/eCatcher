.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"
.field private g:Landroid/view/View;
.field private h:Landroid/view/View;
.field private i:Landroid/widget/LinearLayout;
.field private j:I
.field private k:I
.field private l:Landroid/graphics/drawable/Drawable;
.field private m:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/a/c;->f:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Landroid/support/v7/a/k;->f:[I
invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v1, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:I
const/4 v1, 0x2
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:I
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public final bridge synthetic a()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->a()I
move-result v0
return v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
return-void
.end method
.method public final bridge synthetic a(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public final a(Z)V
.registers 6
const/4 v3, -0x1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Z
if-eq v0, p1, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_35
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v0, -0x2
invoke-direct {v1, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
if-nez p1, :cond_39
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_30
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_30
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_35
:cond_35
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(Z)V
:cond_38
return-void
:cond_39
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()V
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_77
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_77
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_35
.end method
.method public final bridge synthetic b(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->b(Z)V
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final bridge synthetic c()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->c()V
return-void
.end method
.method public final d()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final e()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->g()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final bridge synthetic f()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->f()Z
move-result v0
return v0
.end method
.method public final bridge synthetic g()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->g()V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->f()Z
:cond_11
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 12
const/16 v5, 0x8
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v2
sub-int v0, p5, p3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v3
sub-int/2addr v0, v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I
move-result v3
sub-int v3, v0, v3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
if-eqz v0, :cond_69
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v5, :cond_69
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v1, v4
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
invoke-static {v4, v1, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
move-result v4
add-int/2addr v1, v4
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v0, v1
:goto_38
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
if-eqz v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
if-nez v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v1
if-eq v1, v5, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
move-result v1
add-int/2addr v0, v1
:cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
if-eqz v1, :cond_58
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
:cond_58
sub-int v0, p4, p2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v1, :cond_68
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Landroid/view/View;III)I
:cond_68
return-void
:cond_69
move v0, v1
goto :goto_38
.end method
.method protected onMeasure(II)V
.registers 15
const/4 v11, -0x2
const/high16 v4, 0x4000
const/high16 v5, -0x8000
const/4 v3, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-eq v0, v4, :cond_2d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used with android:layout_width=\"FILL_PARENT\" (or fill_parent)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-nez v0, :cond_54
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used with android:layout_height=\"wrap_content\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_54
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v7
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
if-lez v0, :cond_11c
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
move v1, v0
:goto_5f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I
move-result v2
add-int v8, v0, v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I
move-result v0
sub-int v0, v7, v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I
move-result v2
sub-int/2addr v0, v2
sub-int v6, v1, v8
invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
if-eqz v9, :cond_93
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I
move-result v9
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v0, v10
sub-int v0, v9, v0
:cond_93
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v9, :cond_a5
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v9
if-ne v9, p0, :cond_a5
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I
move-result v0
:cond_a5
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
if-eqz v9, :cond_ce
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
if-nez v9, :cond_ce
iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Z
if-eqz v9, :cond_128
invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v9
if-gt v9, v0, :cond_123
const/4 v2, 0x1
:goto_c3
if-eqz v2, :cond_c6
sub-int/2addr v0, v9
:cond_c6
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
if-eqz v2, :cond_125
move v2, v3
:goto_cb
invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_ce
:goto_ce
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
if-eqz v2, :cond_102
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v9
iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
if-eq v2, v11, :cond_12f
move v2, v4
:goto_dd
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ltz v10, :cond_e7
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_e7
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
if-eq v10, v11, :cond_131
:goto_eb
iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ltz v5, :cond_133
iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v5
:goto_f5
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Landroid/view/View;
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V
:cond_102
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
if-gtz v0, :cond_139
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I
move-result v2
move v1, v3
:goto_10b
if-ge v3, v2, :cond_135
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
add-int/2addr v0, v8
if-le v0, v1, :cond_13d
:goto_118
add-int/lit8 v3, v3, 0x1
move v1, v0
goto :goto_10b
:cond_11c
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
move v1, v0
goto/16 :goto_5f
:cond_123
move v2, v3
goto :goto_c3
:cond_125
const/16 v2, 0x8
goto :goto_cb
:cond_128
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/widget/LinearLayout;
invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I
move-result v0
goto :goto_ce
:cond_12f
move v2, v5
goto :goto_dd
:cond_131
move v4, v5
goto :goto_eb
:cond_133
move v5, v6
goto :goto_f5
:cond_135
invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
:goto_138
return-void
:cond_139
invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
goto :goto_138
:cond_13d
move v0, v1
goto :goto_118
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V
return-void
.end method