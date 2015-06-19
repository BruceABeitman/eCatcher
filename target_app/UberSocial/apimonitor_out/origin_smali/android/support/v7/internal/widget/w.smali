.class Landroid/support/v7/internal/widget/w;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field static final b:I = -0x1

.field private static final c:Ljava/lang/String; = "ListPopupWindow.DropDownListView"


# instance fields
.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/d;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Landroid/support/v7/internal/widget/w;->e:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/w;->setCacheColorHint(I)V

    return-void
.end method

.method private a(IZ)I
    .registers 7

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_d
    move p1, v0

    :cond_e
    :goto_e
    return p1

    :cond_f
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_46

    if-eqz p2, :cond_2f

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_24
    if-ge p1, v2, :cond_40

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_40

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_2f
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_35
    if-ltz p1, :cond_40

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_40

    add-int/lit8 p1, p1, -0x1

    goto :goto_35

    :cond_40
    if-ltz p1, :cond_44

    if-lt p1, v2, :cond_e

    :cond_44
    move p1, v0

    goto :goto_e

    :cond_46
    if-ltz p1, :cond_4a

    if-lt p1, v2, :cond_e

    :cond_4a
    move p1, v0

    goto :goto_e
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/w;IZ)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/w;->a(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/w;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/w;->d:Z

    return p1
.end method


# virtual methods
.method final a(IIIII)I
    .registers 18

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getListPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getListPaddingLeft()I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getListPaddingRight()I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getDividerHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/w;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    if-nez v8, :cond_1f

    add-int p4, v2, v3

    :cond_1e
    :goto_1e
    return p4

    :cond_1f
    add-int/2addr v3, v2

    if-lez v1, :cond_6e

    if-eqz v4, :cond_6e

    :goto_24
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    const/4 v2, 0x0

    move v7, v2

    :goto_2d
    if-ge v7, v9, :cond_83

    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v5, :cond_86

    const/4 v5, 0x0

    move v11, v2

    move-object v2, v5

    move v5, v11

    :goto_39
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_70

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_70

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4f
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    if-lez v7, :cond_88

    add-int v2, v3, v1

    :goto_56
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v0, p4

    if-lt v2, v0, :cond_77

    if-ltz p5, :cond_1e

    move/from16 v0, p5

    if-le v7, v0, :cond_1e

    if-lez v4, :cond_1e

    move/from16 v0, p4

    if-eq v2, v0, :cond_1e

    move/from16 p4, v4

    goto :goto_1e

    :cond_6e
    const/4 v1, 0x0

    goto :goto_24

    :cond_70
    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4f

    :cond_77
    if-ltz p5, :cond_7e

    move/from16 v0, p5

    if-lt v7, v0, :cond_7e

    move v4, v2

    :cond_7e
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v2

    goto :goto_2d

    :cond_83
    move/from16 p4, v3

    goto :goto_1e

    :cond_86
    move-object v2, v6

    goto :goto_39

    :cond_88
    move v2, v3

    goto :goto_56
.end method

.method public hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/w;->e:Z

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

.method public hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/w;->e:Z

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

.method public isFocused()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/w;->e:Z

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

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/w;->e:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/w;->d:Z

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
