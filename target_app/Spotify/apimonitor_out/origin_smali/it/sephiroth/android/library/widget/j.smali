.class public final Lit/sephiroth/android/library/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:Lit/sephiroth/android/library/widget/k;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/n",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 3

    iput-object p1, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    iget-object v3, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_3d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_1c
    iget v4, p0, Lit/sephiroth/android/library/widget/j;->f:I

    move v3, v1

    :goto_1f
    if-ge v3, v4, :cond_3d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    :goto_2a
    if-ge v2, v6, :cond_39

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    :cond_39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    :cond_3d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I

    move-result v2

    :goto_47
    if-ge v1, v2, :cond_58

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    :cond_58
    return-void
.end method

.method public final a(I)V
    .registers 6

    const/4 v1, 0x0

    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    :goto_e
    if-ge v0, p1, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    iput p1, p0, Lit/sephiroth/android/library/widget/j;->f:I

    aget-object v0, v2, v1

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    iput-object v2, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    return-void
.end method

.method public final a(II)V
    .registers 8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    :cond_9
    iput p2, p0, Lit/sephiroth/android/library/widget/j;->c:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p1, :cond_2a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    if-eqz v0, :cond_26

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_26

    aput-object v3, v2, v1

    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_2a
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    iget v4, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4c

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    move v3, v0

    :goto_1a
    if-ltz v4, :cond_4e

    move v0, v1

    :goto_1d
    if-eqz v0, :cond_21

    if-eqz v3, :cond_50

    :cond_21
    const/4 v0, -0x2

    if-ne v4, v0, :cond_26

    if-eqz v3, :cond_36

    :cond_26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    :cond_31
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    if-eqz v3, :cond_a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-nez v0, :cond_43

    new-instance v0, Landroid/support/v4/c/n;

    invoke-direct {v0}, Landroid/support/v4/c/n;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V

    goto :goto_a

    :cond_4c
    move v3, v2

    goto :goto_1a

    :cond_4e
    move v0, v2

    goto :goto_1d

    :cond_50
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_66

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_66
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->b:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->b:Lit/sephiroth/android/library/widget/k;

    goto :goto_a

    :cond_6d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c
.end method

.method public final b(I)Landroid/view/View;
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->c:I

    sub-int v2, p1, v0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    if-ltz v2, :cond_11

    array-length v0, v3

    if-ge v2, v0, :cond_11

    aget-object v0, v3, v2

    aput-object v1, v3, v2

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method public final b()V
    .registers 9

    const/4 v2, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v1, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_c
    if-ge v2, v3, :cond_45

    iget-object v4, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    iget v4, p0, Lit/sephiroth/android/library/widget/j;->f:I

    move v3, v2

    :goto_22
    if-ge v3, v4, :cond_45

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    :goto_2d
    if-ge v1, v6, :cond_41

    iget-object v7, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    :cond_45
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0}, Landroid/support/v4/c/n;->b()V

    :cond_4e
    return-void
.end method

.method final c(I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v1, p1}, Landroid/support/v4/c/n;->f(I)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/n;->c(I)V

    goto :goto_5
.end method

.method final c()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0}, Landroid/support/v4/c/n;->b()V

    :cond_9
    return-void
.end method

.method final d(I)Landroid/view/View;
    .registers 4

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-ltz v0, :cond_24

    iget-object v1, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_b

    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final d()V
    .registers 5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_20

    iget-object v3, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method public final e()V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v9, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->b:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_5a

    move v1, v2

    :goto_a
    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    if-le v0, v2, :cond_5c

    move v4, v2

    :goto_f
    iget-object v5, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_15
    if-ltz v8, :cond_81

    aget-object v10, v9, v8

    if-eqz v10, :cond_56

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v11, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    aput-object v12, v9, v8

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_5e

    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v6

    move v7, v6

    :goto_30
    if-ltz v11, :cond_60

    move v6, v2

    :goto_33
    if-eqz v6, :cond_37

    if-eqz v7, :cond_62

    :cond_37
    const/4 v0, -0x2

    if-ne v11, v0, :cond_3c

    if-eqz v7, :cond_41

    :cond_3c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v10}, Lit/sephiroth/android/library/widget/AbsHListView;->d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V

    :cond_41
    if-eqz v7, :cond_56

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-nez v0, :cond_4e

    new-instance v0, Landroid/support/v4/c/n;

    invoke-direct {v0}, Landroid/support/v4/c/n;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    :cond_4e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    iget v6, p0, Lit/sephiroth/android/library/widget/j;->c:I

    add-int/2addr v6, v8

    invoke-virtual {v0, v6, v10}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V

    :cond_56
    :goto_56
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_15

    :cond_5a
    move v1, v3

    goto :goto_a

    :cond_5c
    move v4, v3

    goto :goto_f

    :cond_5e
    move v7, v3

    goto :goto_30

    :cond_60
    move v6, v3

    goto :goto_33

    :cond_62
    if-eqz v4, :cond_68

    iget-object v5, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v5, v5, v11

    :cond_68
    invoke-virtual {v10}, Landroid/view/View;->onStartTemporaryDetach()V

    iget v6, p0, Lit/sephiroth/android/library/widget/j;->c:I

    add-int/2addr v6, v8

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v0, v6, :cond_7c

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_7c
    if-eqz v1, :cond_56

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->b:Lit/sephiroth/android/library/widget/k;

    goto :goto_56

    :cond_81
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    array-length v5, v0

    iget v6, p0, Lit/sephiroth/android/library/widget/j;->f:I

    iget-object v7, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    move v4, v3

    :goto_89
    if-ge v4, v6, :cond_ae

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v9, v0, v5

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_96
    if-ge v1, v9, :cond_aa

    iget-object v10, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_96

    :cond_aa
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_89

    :cond_ae
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    if-eqz v0, :cond_d2

    :goto_b2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I

    move-result v0

    if-ge v3, v0, :cond_d2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0, v3}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_cf

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->i:Landroid/support/v4/c/n;

    invoke-virtual {v0, v3}, Landroid/support/v4/c/n;->c(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_d2
    return-void
.end method

.method final e(I)V
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/j;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    iget-object v3, p0, Lit/sephiroth/android/library/widget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_3d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_1c
    iget v4, p0, Lit/sephiroth/android/library/widget/j;->f:I

    move v3, v1

    :goto_1f
    if-ge v3, v4, :cond_3d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    :goto_2a
    if-ge v2, v6, :cond_39

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    :cond_39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    :cond_3d
    iget-object v2, p0, Lit/sephiroth/android/library/widget/j;->d:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_41
    if-ge v0, v3, :cond_4d

    aget-object v1, v2, v0

    if-eqz v1, :cond_4a

    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_4d
    return-void
.end method