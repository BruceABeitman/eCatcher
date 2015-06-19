.class final Landroid/support/v7/internal/widget/s;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/c;->h:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Landroid/support/v7/internal/widget/s;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/s;->a:Z

    return p1
.end method


# virtual methods
.method final a(II)I
    .registers 14

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getListPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getListPaddingLeft()I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getListPaddingRight()I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getDividerHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    if-nez v8, :cond_21

    add-int p2, v2, v3

    :cond_20
    :goto_20
    return p2

    :cond_21
    add-int/2addr v3, v2

    if-lez v0, :cond_5f

    if-eqz v4, :cond_5f

    :goto_26
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v7, v1

    move v4, v1

    move-object v6, v5

    :goto_2d
    if-ge v7, v9, :cond_66

    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v4, :cond_68

    move v4, v2

    move-object v2, v5

    :goto_37
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_61

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_61

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4d
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    if-lez v7, :cond_6a

    add-int v2, v3, v0

    :goto_54
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v3, p2, :cond_20

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2d

    :cond_5f
    move v0, v1

    goto :goto_26

    :cond_61
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4d

    :cond_66
    move p2, v3

    goto :goto_20

    :cond_68
    move-object v2, v6

    goto :goto_37

    :cond_6a
    move v2, v3

    goto :goto_54
.end method

.method public final hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/s;->b:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/s;->b:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isFocused()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/s;->b:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/s;->b:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/s;->a:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
