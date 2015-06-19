.class public final Lcom/instagram/android/a/m;
.super Lcom/instagram/ui/d/a;
.source "RecommendedUserAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/an;

.field private final b:Z

.field private final c:Landroid/support/v4/app/s;

.field private final d:Z

.field private final e:Lcom/instagram/android/a/b/f;

.field private final f:Lcom/instagram/ui/menu/d;

.field private final g:Lcom/instagram/user/follow/h;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;Lcom/instagram/android/a/b/f;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->suggested_for_you:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/a/m;->f:Lcom/instagram/ui/menu/d;

    iput-object p2, p0, Lcom/instagram/android/a/m;->a:Landroid/support/v4/app/an;

    iput-boolean p4, p0, Lcom/instagram/android/a/m;->b:Z

    iput-object p3, p0, Lcom/instagram/android/a/m;->c:Landroid/support/v4/app/s;

    iput-boolean p5, p0, Lcom/instagram/android/a/m;->d:Z

    iput-object p7, p0, Lcom/instagram/android/a/m;->e:Lcom/instagram/android/a/b/f;

    iput-object p6, p0, Lcom/instagram/android/a/m;->g:Lcom/instagram/user/follow/h;

    return-void
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/a/m;->e:Lcom/instagram/android/a/b/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/instagram/android/a/m;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-object v0, p0, Lcom/instagram/android/a/m;->g:Lcom/instagram/user/follow/h;

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/ac;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    :goto_15
    return-object v0

    :pswitch_16
    iget-object v0, p0, Lcom/instagram/android/a/m;->e:Lcom/instagram/android/a/b/f;

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/e;->a(Landroid/content/Context;Lcom/instagram/android/a/b/f;)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :pswitch_1d
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method

.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/a/m;->h:Ljava/util/List;

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .registers 11

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_40

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/af;

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/user/d/a;

    iget-object v3, p0, Lcom/instagram/android/a/m;->c:Landroid/support/v4/app/s;

    iget-boolean v4, p0, Lcom/instagram/android/a/m;->b:Z

    iget-object v5, p0, Lcom/instagram/android/a/m;->a:Landroid/support/v4/app/an;

    iget-boolean v6, p0, Lcom/instagram/android/a/m;->d:Z

    move v1, p3

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/a/b/ac;->a(Lcom/instagram/android/a/b/af;ILcom/instagram/user/d/a;Landroid/support/v4/app/s;ZLandroid/support/v4/app/an;Z)V

    :goto_27
    return-void

    :pswitch_28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/g;

    iget-object v1, p0, Lcom/instagram/android/a/m;->e:Lcom/instagram/android/a/b/f;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/e;->a(Lcom/instagram/android/a/b/g;Lcom/instagram/android/a/b/f;)V

    goto :goto_27

    :pswitch_34
    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    goto :goto_27

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_f
        :pswitch_28
        :pswitch_34
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/android/a/m;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/instagram/android/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/a/m;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/a/m;->f:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    if-ltz p1, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/android/a/m;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1e

    invoke-direct {p0}, Lcom/instagram/android/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :cond_1e
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
