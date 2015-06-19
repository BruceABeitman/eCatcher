.class Lcom/twidroid/fragments/b$17;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->h(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-static {v1}, Lcom/twidroid/fragments/b;->g(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-static {v2}, Lcom/twidroid/fragments/b;->f(Lcom/twidroid/fragments/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->n(J)Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    iget-object v2, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v2}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_1a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$17;->a([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/fragments/b;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->getCount()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->N()V

    :cond_1e
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/b;->b(Lcom/twidroid/fragments/b;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->M()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->i(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->c(J)Z

    if-nez p1, :cond_2a

    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->b()V

    :cond_2a
    iget-object v0, p0, Lcom/twidroid/fragments/b$17;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$17;->a(Ljava/lang/Exception;)V

    return-void
.end method
