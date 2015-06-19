.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"
.field private static final g:Ljava/lang/String; = "ActionBarContextView"
.field private h:Ljava/lang/CharSequence;
.field private i:Ljava/lang/CharSequence;
.field private j:Landroid/view/View;
.field private k:Landroid/view/View;
.field private l:Landroid/widget/LinearLayout;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/TextView;
.field private o:I
.field private p:I
.field private q:Landroid/graphics/drawable/Drawable;
.field private r:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/a/d;->actionModeStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Landroid/support/v7/a/n;->ActionMode:[I
invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v1, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I
const/4 v1, 0x2
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private j()V
.registers 7
const/16 v4, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-nez v0, :cond_59
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v3, Landroid/support/v7/a/k;->abc_action_bar_title_item:I
invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/i;->action_bar_title:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/i;->action_bar_subtitle:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I
if-eqz v0, :cond_4a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v3
iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I
invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_4a
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I
if-eqz v0, :cond_59
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v3
iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I
invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_59
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_98
move v0, v1
:goto_70
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_9a
:goto_78
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;
if-eqz v1, :cond_9c
move v3, v2
:goto_7d
invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-nez v0, :cond_86
if-eqz v1, :cond_87
:cond_86
move v4, v2
:cond_87
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_97
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:cond_97
return-void
:cond_98
move v0, v2
goto :goto_70
:cond_9a
move v1, v2
goto :goto_78
:cond_9c
move v3, v4
goto :goto_7d
.end method
.method public bridge synthetic a(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(I)V
return-void
.end method
.method public a(Landroid/support/v7/b/a;)V
.registers 8
const/4 v5, 0x1
const/4 v4, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
if-nez v0, :cond_70
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Landroid/support/v7/a/k;->abc_action_mode_close_item:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:goto_1c
:cond_1c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
sget v1, Landroid/support/v7/a/i;->action_mode_close_button:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Landroid/support/v7/internal/widget/ActionBarContextView$1;
invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/b/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1}, Landroid/support/v7/b/a;->b()Landroid/view/Menu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v1, :cond_3b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z
:cond_3b
new-instance v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v1, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Z)V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Z
if-nez v2, :cond_7e
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_6f
return-void
:cond_70
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
goto :goto_1c
:cond_7e
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v2, v3, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(IZ)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v3, 0x7fffffff
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_6f
.end method
.method public a()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public bridge synthetic b()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->b()V
return-void
.end method
.method public c()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public bridge synthetic e()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->e()Z
move-result v0
return v0
.end method
.method public bridge synthetic f()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->f()V
return-void
.end method
.method public g()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
if-nez v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->h()V
:cond_7
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
.method public bridge synthetic getAnimatedVisibility()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I
move-result v0
return v0
.end method
.method public bridge synthetic getContentHeight()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I
move-result v0
return v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;
return-object v0
.end method
.method public h()V
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V
:cond_f
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
return-void
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z
return v0
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
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
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
if-eqz v0, :cond_6d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v5, :cond_6d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v1, v4
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {p0, v4, v1, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Landroid/view/View;III)I
move-result v4
add-int/2addr v1, v4
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v0, v1
:goto_38
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-eqz v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
if-nez v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v1
if-eq v1, v5, :cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Landroid/view/View;III)I
move-result v1
add-int/2addr v0, v1
:cond_4f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
if-eqz v1, :cond_5a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Landroid/view/View;III)I
move-result v1
add-int/2addr v0, v1
:cond_5a
sub-int v0, p4, p2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v1, :cond_6c
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->c(Landroid/view/View;III)I
move-result v1
sub-int/2addr v0, v1
:cond_6c
return-void
:cond_6d
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
if-eq v0, v4, :cond_33
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "with android:layout_width=\"FILL_PARENT\" (or fill_parent)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-nez v0, :cond_60
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "with android:layout_height=\"wrap_content\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_60
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v7
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
if-lez v0, :cond_128
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
move v1, v0
:goto_6b
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
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
if-eqz v9, :cond_9f
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
move-result v9
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v0, v10
sub-int v0, v9, v0
:cond_9f
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v9, :cond_b1
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v9
if-ne v9, p0, :cond_b1
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
move-result v0
:cond_b1
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-eqz v9, :cond_da
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
if-nez v9, :cond_da
iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z
if-eqz v9, :cond_134
invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v9
if-gt v9, v0, :cond_12f
const/4 v2, 0x1
:goto_cf
if-eqz v2, :cond_d2
sub-int/2addr v0, v9
:cond_d2
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-eqz v2, :cond_131
move v2, v3
:goto_d7
invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_da
:goto_da
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
if-eqz v2, :cond_10e
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v9
iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
if-eq v2, v11, :cond_13b
move v2, v4
:goto_e9
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ltz v10, :cond_f3
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_f3
iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
if-eq v10, v11, :cond_13d
:goto_f7
iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ltz v5, :cond_13f
iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v5
:goto_101
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V
:cond_10e
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
if-gtz v0, :cond_145
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I
move-result v2
move v1, v3
:goto_117
if-ge v3, v2, :cond_141
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
add-int/2addr v0, v8
if-le v0, v1, :cond_149
:goto_124
add-int/lit8 v3, v3, 0x1
move v1, v0
goto :goto_117
:cond_128
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
move v1, v0
goto/16 :goto_6b
:cond_12f
move v2, v3
goto :goto_cf
:cond_131
const/16 v2, 0x8
goto :goto_d7
:cond_134
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I
move-result v0
goto :goto_da
:cond_13b
move v2, v5
goto :goto_e9
:cond_13d
move v4, v5
goto :goto_f7
:cond_13f
move v5, v6
goto :goto_101
:cond_141
invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
:goto_144
return-void
:cond_145
invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
goto :goto_144
:cond_149
move v0, v1
goto :goto_124
.end method
.method public setContentHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
return-void
.end method
.method public setCustomView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;
:cond_17
if-eqz p1, :cond_1c
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:cond_1c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V
return-void
.end method
.method public setSplitActionBar(Z)V
.registers 7
const/4 v4, -0x1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Z
if-eq v0, p1, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_35
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v0, -0x2
invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
if-nez p1, :cond_39
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
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
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V
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
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(IZ)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v2, 0x7fffffff
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_7b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_7b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_35
.end method
.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public bridge synthetic setSplitWhenNarrow(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->j()V
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->j()V
return-void
.end method
.method public setTitleOptional(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z
if-eq p1, v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V
:cond_7
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z
return-void
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V
return-void
.end method