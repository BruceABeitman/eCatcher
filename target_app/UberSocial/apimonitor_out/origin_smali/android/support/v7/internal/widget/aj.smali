.class Landroid/support/v7/internal/widget/aj;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/ak;


# instance fields
.field final synthetic i:Landroid/support/v7/internal/widget/ag;

.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->a(I)V

    new-instance v0, Landroid/support/v7/internal/widget/r;

    new-instance v1, Landroid/support/v7/internal/widget/aj$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/aj$1;-><init>(Landroid/support/v7/internal/widget/aj;Landroid/support/v7/internal/widget/ag;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/support/v7/internal/widget/n;Landroid/support/v7/internal/widget/q;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aj;)Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public m()V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getPaddingLeft()I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->O:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->g(I)V

    :goto_30
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_49

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ag;->a(Landroid/support/v7/internal/widget/ag;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ag;->a(Landroid/support/v7/internal/widget/ag;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :cond_49
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->d(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->i(I)V

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->w()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->j(I)V

    return-void

    :cond_66
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->O:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7f

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ag;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->g(I)V

    goto :goto_30

    :cond_7f
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->O:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->g(I)V

    goto :goto_30
.end method
