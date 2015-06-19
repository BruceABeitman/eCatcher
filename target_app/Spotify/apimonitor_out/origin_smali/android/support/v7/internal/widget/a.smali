.class abstract Landroid/support/v7/internal/widget/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v7/internal/view/menu/ActionMenuView;

.field protected b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field protected c:Landroid/support/v7/internal/widget/ActionBarContainer;

.field protected d:Z

.field protected e:Z

.field protected f:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected static a(Landroid/view/View;II)I
    .registers 5

    const/high16 v0, -0x8000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected static a(Landroid/view/View;III)I
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    add-int v3, p1, v0

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method protected static b(Landroid/view/View;III)I
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sub-int v3, p1, v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/a;->f:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->requestLayout()V

    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/a;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->d:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->e:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()V
    .registers 2

    new-instance v0, Landroid/support/v7/internal/widget/a$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/a$1;-><init>(Landroid/support/v7/internal/widget/a;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->g()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/a/k;->a:[I

    sget v3, Landroid/support/v7/a/c;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/a;->a(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/a;->e:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->a(Z)V

    :cond_36
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()V

    :cond_3f
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method
