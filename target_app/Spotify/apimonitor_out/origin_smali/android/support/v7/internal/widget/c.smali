.class final Landroid/support/v7/internal/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/aa;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/n;

.field b:Landroid/support/v7/internal/view/menu/r;

.field final synthetic c:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/c;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)Z

    :cond_f
    iput-object p2, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 3

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ag;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/r;)Z
    .registers 7

    const/4 v4, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_3f
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_58

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_58
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_72
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_83
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ab;->setVisibility(I)V

    :cond_94
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a5
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p1, v4}, Landroid/support/v7/internal/view/menu/r;->e(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/b/b;

    if-eqz v0, :cond_be

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    check-cast v0, Landroid/support/v7/b/b;

    invoke-interface {v0}, Landroid/support/v7/b/b;->a()V

    :cond_be
    return v4
.end method

.method public final c(Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->size()I

    move-result v3

    move v2, v1

    :goto_10
    if-ge v2, v3, :cond_2d

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a/b;

    iget-object v4, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    if-ne v0, v4, :cond_29

    const/4 v0, 0x1

    :goto_1f
    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/c;->c(Landroid/support/v7/internal/view/menu/r;)Z

    :cond_28
    return-void

    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_2d
    move v0, v1

    goto :goto_1f
.end method

.method public final c(Landroid/support/v7/internal/view/menu/r;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/b/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    check-cast v0, Landroid/support/v7/b/b;

    invoke-interface {v0}, Landroid/support/v7/b/b;->b()V

    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_3f
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->l(Landroid/support/v7/internal/widget/ActionBarView;)V

    :cond_56
    :goto_56
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_70
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_89

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ab;->setVisibility(I)V

    :cond_89
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a4
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/r;->e(Z)V

    return v4

    :cond_b8
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_56
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
