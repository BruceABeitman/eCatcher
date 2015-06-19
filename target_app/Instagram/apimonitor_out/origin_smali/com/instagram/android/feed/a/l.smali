.class public final Lcom/instagram/android/feed/a/l;
.super Lcom/instagram/android/feed/a/a;
.source "MainFeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/e/e;


# instance fields
.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 10

    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Lcom/instagram/feed/f/d;

    move-result-object v2

    sget-object v3, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;

    if-ne v2, v3, :cond_46

    invoke-static {p1}, Lcom/instagram/android/a/b/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/j;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/b;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/h;->a(Lcom/instagram/android/a/b/j;Lcom/instagram/feed/e/b;)V

    move-object v1, v2

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_c

    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_46
    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Lcom/instagram/feed/f/d;

    move-result-object v2

    sget-object v3, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    if-ne v2, v3, :cond_77

    invoke-static {p1}, Lcom/instagram/feed/e/a/a/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v5

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/fragment/a;->y()Landroid/support/v4/app/an;

    move-result-object v6

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v2

    check-cast v2, Lcom/instagram/feed/e/a;

    invoke-static {v5, v1, v6, v0, v2}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V

    move-object v1, v3

    goto :goto_3d

    :cond_77
    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Lcom/instagram/feed/f/d;

    move-result-object v2

    sget-object v3, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    if-ne v2, v3, :cond_3d

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/x;->a(Landroid/content/Context;Lcom/instagram/feed/f/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/ab;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/b;

    invoke-static {v3, v0, v1}, Lcom/instagram/android/a/b/x;->a(Landroid/content/Context;Lcom/instagram/android/a/b/ab;Lcom/instagram/feed/e/b;)V

    move-object v1, v2

    goto :goto_3d

    :cond_9e
    return-void
.end method

.method private s()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private t()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/l;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v1

    if-lt p2, v1, :cond_f

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1d

    sget v0, Lcom/instagram/android/a/b/w;->a:I

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_1d
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_29

    invoke-static {p1}, Lcom/instagram/android/feed/a/l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/l;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v1

    if-lt p3, v1, :cond_e

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V

    :goto_d
    return-void

    :cond_e
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_25

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/u;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/a/b;

    invoke-static {p1, v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    goto :goto_d

    :cond_25
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_30

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/l;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_d

    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/instagram/feed/f/d;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/f/c;

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Lcom/instagram/feed/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/feed/f/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v1, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_30
    move v1, v0

    goto :goto_c

    :cond_32
    move v1, v0

    :cond_33
    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    :cond_38
    return-void

    :cond_39
    move v0, v1

    goto :goto_30
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    const/4 v0, 0x1

    :goto_13
    iput-object p1, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected final b(Lcom/instagram/feed/d/l;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/g/b;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final d(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v0

    if-le v0, p1, :cond_1c

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v0

    if-le v0, p1, :cond_f

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Ljava/util/List;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_1c
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method public final getItemViewType(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v0

    if-lt p1, v0, :cond_b

    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/creation/b/a/b;

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v0

    goto :goto_a

    :cond_19
    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v0

    goto :goto_a

    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled instance type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getViewTypeCount()I
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/feed/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final k()I
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->t()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
