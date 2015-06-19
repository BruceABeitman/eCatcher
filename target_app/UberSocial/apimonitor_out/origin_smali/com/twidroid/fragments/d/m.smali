.class public Lcom/twidroid/fragments/d/m;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/twidroid/fragments/d/k;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/d/k;)V
    .registers 2

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p1, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/d/n;)Lcom/ubermedia/a/g;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p1, v0

    iget-object v2, v0, Lcom/twidroid/fragments/d/n;->c:Lcom/twidroid/net/a/c/i;

    if-eqz v2, :cond_f

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v0, v0, Lcom/twidroid/fragments/d/n;->d:Z

    if-nez v0, :cond_2f

    :cond_f
    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    const-string v2, "no user ids (or this is update), should load some."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-static {v0}, Lcom/twidroid/fragments/d/k;->a(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-wide v2, v2, Lcom/twidroid/fragments/d/n;->a:J

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/twidroid/fragments/d/n;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;Z)Lcom/twidroid/net/a/c/i;

    move-result-object v2

    :cond_2f
    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserIds position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/i;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/i;->d()Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/i;->h()I

    move-result v0

    const/16 v3, 0x1388

    if-ge v0, v3, :cond_75

    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    const-string v3, "no more users available."

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ubermedia/a/g;

    new-instance v3, Lcom/twidroid/fragments/d/l;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v2}, Lcom/twidroid/fragments/d/l;-><init>(Ljava/util/List;Lcom/twidroid/net/a/c/i;)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-boolean v2, v2, Lcom/twidroid/fragments/d/n;->d:Z

    invoke-direct {v0, v3, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V

    :goto_74
    return-object v0

    :cond_75
    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    const-string v3, "Load next ids"

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-static {v0}, Lcom/twidroid/fragments/d/k;->b(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/i;->g()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/twidroid/fragments/d/n;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;Z)Lcom/twidroid/net/a/c/i;

    move-result-object v0

    :goto_94
    iget-object v2, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-static {v2}, Lcom/twidroid/fragments/d/k;->c(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/i;->b()[J

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-wide v4, v4, Lcom/twidroid/fragments/d/n;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a([JJ)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/twidroid/fragments/d/l;

    invoke-direct {v3, v2, v0}, Lcom/twidroid/fragments/d/l;-><init>(Ljava/util/List;Lcom/twidroid/net/a/c/i;)V

    new-instance v0, Lcom/ubermedia/a/g;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-boolean v2, v2, Lcom/twidroid/fragments/d/n;->d:Z

    invoke-direct {v0, v3, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V
    :try_end_ba
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_ba} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ba} :catch_de

    goto :goto_74

    :catch_bb
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_10c

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    iget-object v1, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    const-string v1, "Loading more followers failed"

    invoke-static {v0, v1, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_74

    :pswitch_dc
    move-object v0, v1

    goto :goto_74

    :catch_de
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Connection failed. Please try again."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    move-object v0, v1

    goto :goto_74

    :cond_f1
    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    iget-object v1, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;

    const-string v1, "Loading more followers failed"

    invoke-static {v0, v1, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_74

    :cond_10a
    move-object v0, v2

    goto :goto_94

    :pswitch_data_10c
    .packed-switch 0x3
        :pswitch_dc
    .end packed-switch
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/d/n;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/m;->a([Lcom/twidroid/fragments/d/n;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->N()V

    :cond_14
    return-void
.end method

.method protected a(Lcom/ubermedia/a/g;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->M()V

    if-nez p1, :cond_26

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->P()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    const v1, 0x7f0c02ae

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/k;->b(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->R()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/p;

    iget-boolean v1, p1, Lcom/ubermedia/a/g;->c:Z

    if-eqz v1, :cond_81

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/l;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->a(Ljava/util/List;)V

    :goto_43
    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/l;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8d

    const/4 v1, 0x1

    :goto_52
    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-static {v1}, Lcom/twidroid/fragments/d/k;->d(Lcom/twidroid/fragments/d/k;)I

    iget-object v2, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/l;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/l;->b()Lcom/twidroid/net/a/c/i;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/twidroid/fragments/d/k;->a(Lcom/twidroid/fragments/d/k;Lcom/twidroid/net/a/c/i;)Lcom/twidroid/net/a/c/i;

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/l;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/twidroid/ui/a/p;->getCount()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->P()V

    goto :goto_25

    :cond_81
    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/l;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->b(Ljava/util/List;)V

    goto :goto_43

    :cond_8d
    const/4 v1, 0x0

    goto :goto_52

    :cond_8f
    iget-object v0, p0, Lcom/twidroid/fragments/d/m;->a:Lcom/twidroid/fragments/d/k;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->P()V

    goto :goto_25
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/m;->a(Lcom/ubermedia/a/g;)V

    return-void
.end method
