.class public Lcom/twidroid/fragments/d/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final a:Lcom/twidroid/fragments/d/g;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/d/g;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/d/j;)Lcom/ubermedia/a/g;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    iget-object v1, v0, Lcom/twidroid/fragments/d/j;->c:Lcom/twidroid/net/a/c/i;

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v0, v0, Lcom/twidroid/fragments/d/j;->d:Z

    if-nez v0, :cond_2d

    :cond_e
    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v1, "no user ids (or this is update), should load some."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-static {v0}, Lcom/twidroid/fragments/d/g;->a(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-wide v1, v1, Lcom/twidroid/fragments/d/j;->a:J

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/twidroid/fragments/d/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->c(JLjava/lang/String;)Lcom/twidroid/net/a/c/i;

    move-result-object v1

    :cond_2d
    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserIds position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/i;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/i;->d()Z

    move-result v0

    if-nez v0, :cond_11f

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/i;->h()I

    move-result v0

    const/16 v2, 0x1388

    if-ge v0, v2, :cond_73

    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v2, "no more users available."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ubermedia/a/g;

    new-instance v2, Lcom/twidroid/fragments/d/h;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v1}, Lcom/twidroid/fragments/d/h;-><init>(Ljava/util/List;Lcom/twidroid/net/a/c/i;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-boolean v1, v1, Lcom/twidroid/fragments/d/j;->d:Z

    invoke-direct {v0, v2, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V

    :goto_72
    return-object v0

    :cond_73
    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v2, "Load next ids"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-static {v0}, Lcom/twidroid/fragments/d/g;->b(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/i;->g()J

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/twidroid/fragments/d/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->c(JLjava/lang/String;)Lcom/twidroid/net/a/c/i;

    move-result-object v0

    :goto_91
    iget-object v1, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-static {v1}, Lcom/twidroid/fragments/d/g;->c(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/i;->b()[J

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-wide v3, v3, Lcom/twidroid/fragments/d/j;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twidroid/net/a/c/c;->a([JJ)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/twidroid/fragments/d/h;

    invoke-direct {v2, v1, v0}, Lcom/twidroid/fragments/d/h;-><init>(Ljava/util/List;Lcom/twidroid/net/a/c/i;)V

    new-instance v0, Lcom/ubermedia/a/g;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-boolean v1, v1, Lcom/twidroid/fragments/d/j;->d:Z

    invoke-direct {v0, v2, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V
    :try_end_b7
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_b7} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b7} :catch_db
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_b7} :catch_f9

    goto :goto_72

    :catch_b8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_122

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    iget-object v2, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v2}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v2, "Loading more followers failed"

    invoke-static {v0, v2, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_72

    :pswitch_d9
    const/4 v0, 0x0

    goto :goto_72

    :catch_db
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    iget-object v2, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v2}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v2, "Loading more followers failed"

    invoke-static {v0, v2, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_72

    :catch_f9
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v3}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    const-string v2, "Loading more followers failed"

    invoke-static {v0, v2, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_72

    :cond_11f
    move-object v0, v1

    goto/16 :goto_91

    :pswitch_data_122
    .packed-switch 0x3
        :pswitch_d9
    .end packed-switch
.end method

.method protected a(Lcom/ubermedia/a/g;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_26

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->P()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    const v1, 0x7f0c02ae

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/g;->b(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->R()V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->M()V

    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/p;

    iget-boolean v1, p1, Lcom/ubermedia/a/g;->c:Z

    if-eqz v1, :cond_81

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/h;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->a(Ljava/util/List;)V

    :goto_43
    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/h;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8d

    const/4 v1, 0x1

    :goto_52
    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-static {v1}, Lcom/twidroid/fragments/d/g;->d(Lcom/twidroid/fragments/d/g;)I

    iget-object v2, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/h;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/h;->b()Lcom/twidroid/net/a/c/i;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/twidroid/fragments/d/g;->a(Lcom/twidroid/fragments/d/g;Lcom/twidroid/net/a/c/i;)Lcom/twidroid/net/a/c/i;

    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/h;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/twidroid/ui/a/p;->getCount()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->P()V

    goto :goto_17

    :cond_81
    iget-object v1, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/twidroid/fragments/d/h;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/p;->b(Ljava/util/List;)V

    goto :goto_43

    :cond_8d
    const/4 v1, 0x0

    goto :goto_52

    :cond_8f
    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->P()V

    goto :goto_17
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/d/j;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/i;->a([Lcom/twidroid/fragments/d/j;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/i;->a(Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/d/i;->a:Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->N()V

    :cond_14
    return-void
.end method
