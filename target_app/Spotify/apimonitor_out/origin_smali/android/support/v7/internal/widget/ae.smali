.class final Landroid/support/v7/internal/widget/ae;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/af;


# instance fields
.field final synthetic b:Landroid/support/v7/internal/widget/ab;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ab;Landroid/content/Context;I)V
    .registers 6

    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ae;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->b()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->a()V

    new-instance v0, Landroid/support/v7/internal/widget/o;

    new-instance v1, Landroid/support/v7/internal/widget/ae$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ae$1;-><init>(Landroid/support/v7/internal/widget/ae;Landroid/support/v7/internal/widget/ab;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/l;Landroid/support/v7/internal/widget/n;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ae;)Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->d:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final e()V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ab;->getPaddingLeft()I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget v0, v0, Landroid/support/v7/internal/widget/ab;->E:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_63

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ab;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ab;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/ab;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->c(I)V

    :goto_30
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_49

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/support/v7/internal/widget/ab;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/support/v7/internal/widget/ab;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :cond_49
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->a(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->g()V

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ae;->k()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget v0, v0, Landroid/support/v7/internal/widget/l;->v:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->d(I)V

    return-void

    :cond_63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget v0, v0, Landroid/support/v7/internal/widget/ab;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ab;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ab;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->c(I)V

    goto :goto_30

    :cond_7c
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget v0, v0, Landroid/support/v7/internal/widget/ab;->E:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ae;->c(I)V

    goto :goto_30
.end method
