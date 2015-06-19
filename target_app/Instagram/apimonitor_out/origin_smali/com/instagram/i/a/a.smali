.class public final Lcom/instagram/i/a/a;
.super Lcom/instagram/ui/d/a;
.source "NewsfeedAdapter.java"


# instance fields
.field private final a:Lcom/instagram/ui/menu/d;

.field private final b:Lcom/instagram/ui/menu/d;

.field private final c:Lcom/instagram/ui/menu/d;

.field private d:Landroid/support/v4/app/an;

.field private e:Lcom/instagram/i/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/i/a/a/a;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_activity_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/i/a/a;->a:Lcom/instagram/ui/menu/d;

    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_new_activity_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/i/a/a;->b:Lcom/instagram/ui/menu/d;

    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_older_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/i/a/a;->c:Lcom/instagram/ui/menu/d;

    iput-object p2, p0, Lcom/instagram/i/a/a;->d:Landroid/support/v4/app/an;

    iput-object p3, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/instagram/i/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_32

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_13
    return-object v0

    :pswitch_14
    invoke-static {p1}, Lcom/instagram/i/a/a/t;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_19
    invoke-static {p1}, Lcom/instagram/i/a/a/i;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_1e
    invoke-static {p1}, Lcom/instagram/i/a/a/e;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_23
    invoke-static {p1}, Lcom/instagram/i/a/a/m;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_28
    invoke-static {p1}, Lcom/instagram/i/a/a/q;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_2d
    invoke-static {p1}, Lcom/instagram/i/a/a/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_f
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .registers 8

    invoke-virtual {p0, p3}, Lcom/instagram/i/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/instagram/i/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    invoke-virtual {p0, p3}, Lcom/instagram/i/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    :goto_1e
    return-void

    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/u;

    check-cast v1, Lcom/instagram/i/d/c;

    invoke-static {v0, v1}, Lcom/instagram/i/a/a/t;->a(Lcom/instagram/i/a/a/u;Lcom/instagram/i/d/c;)V

    goto :goto_1e

    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/l;

    check-cast v1, Lcom/instagram/i/d/c;

    iget-object v2, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/i/a/a/i;->a(Landroid/content/Context;Lcom/instagram/i/a/a/l;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    goto :goto_1e

    :pswitch_39
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/h;

    check-cast v1, Lcom/instagram/i/d/c;

    iget-object v2, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/i/a/a/e;->a(Landroid/content/Context;Lcom/instagram/i/a/a/h;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    goto :goto_1e

    :pswitch_47
    iget-object v2, p0, Lcom/instagram/i/a/a;->d:Landroid/support/v4/app/an;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/p;

    check-cast v1, Lcom/instagram/i/d/c;

    iget-object v3, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/instagram/i/a/a/m;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/i/a/a/p;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    goto :goto_1e

    :pswitch_57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/s;

    check-cast v1, Lcom/instagram/i/d/c;

    iget-object v2, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/i/a/a/q;->a(Landroid/content/Context;Lcom/instagram/i/a/a/s;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    goto :goto_1e

    :pswitch_65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/d;

    check-cast v1, Lcom/instagram/i/d/c;

    iget-object v2, p0, Lcom/instagram/i/a/a;->e:Lcom/instagram/i/a/a/a;

    invoke-static {v0, v1, v2}, Lcom/instagram/i/a/a/b;->a(Lcom/instagram/i/a/a/d;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    goto :goto_1e

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2b
        :pswitch_39
        :pswitch_47
        :pswitch_57
        :pswitch_65
        :pswitch_13
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/instagram/i/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_5a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    move v4, v0

    :goto_10
    if-eqz p2, :cond_5c

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    move v3, v0

    :goto_19
    if-eqz p3, :cond_5e

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    move v2, v0

    :goto_22
    if-eqz p4, :cond_60

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    :goto_2a
    if-eqz v4, :cond_31

    iget-object v1, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_31
    if-eqz v3, :cond_38

    iget-object v1, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_38
    if-eqz v2, :cond_46

    iget-object v1, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/instagram/i/a/a;->b:Lcom/instagram/ui/menu/d;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    if-eqz v0, :cond_56

    if-eqz v2, :cond_62

    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/i/a/a;->c:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_56
    invoke-virtual {p0}, Lcom/instagram/i/a/a;->notifyDataSetChanged()V

    return-void

    :cond_5a
    move v4, v1

    goto :goto_10

    :cond_5c
    move v3, v1

    goto :goto_19

    :cond_5e
    move v2, v1

    goto :goto_22

    :cond_60
    move v0, v1

    goto :goto_2a

    :cond_62
    if-eqz v3, :cond_51

    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/i/a/a;->a:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_f

    invoke-virtual {p0}, Lcom/instagram/i/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/instagram/i/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final getItemViewType(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/i/a/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/instagram/i/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/ui/menu/d;

    if-eqz v1, :cond_18

    const/4 v0, 0x6

    :goto_17
    return v0

    :cond_18
    instance-of v1, v0, Lcom/instagram/i/d/c;

    if-eqz v1, :cond_41

    sget-object v1, Lcom/instagram/i/a/b;->a:[I

    check-cast v0, Lcom/instagram/i/d/c;

    invoke-virtual {v0}, Lcom/instagram/i/d/c;->a()Lcom/instagram/i/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/d/g;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_35
    const/4 v0, 0x0

    goto :goto_17

    :pswitch_37
    const/4 v0, 0x1

    goto :goto_17

    :pswitch_39
    const/4 v0, 0x2

    goto :goto_17

    :pswitch_3b
    const/4 v0, 0x3

    goto :goto_17

    :pswitch_3d
    const/4 v0, 0x4

    goto :goto_17

    :pswitch_3f
    const/4 v0, 0x5

    goto :goto_17

    :cond_41
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_37
        :pswitch_39
        :pswitch_3b
        :pswitch_3d
        :pswitch_3f
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/instagram/i/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
