.class Lcom/twidroid/fragments/e/w$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/w;->b(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/w;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/w;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/w$1;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-static {v0}, Lcom/twidroid/fragments/e/w;->a(Lcom/twidroid/fragments/e/w;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->c()Ljava/util/List;
    :try_end_d
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    sget-object v1, Lcom/twidroid/fragments/e/w;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    iget-object v2, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/w$1;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/w;->M()V

    if-nez p1, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/w;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/w$1;->a:Lcom/twidroid/fragments/e/w;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/w;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    goto :goto_7
.end method
