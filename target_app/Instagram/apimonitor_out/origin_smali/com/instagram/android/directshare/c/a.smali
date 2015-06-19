.class public final Lcom/instagram/android/directshare/c/a;
.super Landroid/widget/BaseAdapter;
.source "InboxAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/e/e;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/instagram/ui/widget/loadmore/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/android/directshare/c/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_15
    return-object v0

    :pswitch_16
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    sget v1, Lcom/instagram/android/a/b/w;->b:I

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :pswitch_1f
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_16
        :pswitch_1f
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/c/q;

    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/d/l;

    invoke-static {v2, v0, v1}, Lcom/instagram/android/directshare/c/n;->a(Landroid/content/Context;Lcom/instagram/android/directshare/c/q;Lcom/instagram/feed/d/l;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/u;

    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/a/b;

    invoke-static {v2, v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    goto :goto_17

    :cond_2d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/loadmore/e;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V

    goto :goto_17
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .registers 3

    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->B()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/a;->a(Lcom/instagram/feed/d/l;)V

    return-void
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

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    if-ltz p1, :cond_31

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_31

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_12
.end method

.method public final getItemId(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/feed/d/l;

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    instance-of v1, v0, Lcom/instagram/creation/b/a/b;

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    instance-of v0, v0, Lcom/instagram/ui/widget/loadmore/c;

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/instagram/android/directshare/c/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/instagram/android/directshare/c/a;->a(Landroid/view/View;I)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isEnabled(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/directshare/c/a;->b()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
