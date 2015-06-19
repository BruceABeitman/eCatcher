.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->p(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/c;->b(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/e;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->r(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/adapter/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/l;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/adapter/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_102

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->q(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    const v2, 0x7f0f02ce

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->p(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v5, v1, v6

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    :goto_85
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a()V

    :cond_c5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_ec

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ec

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/os/Parcelable;

    :cond_ec
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_101
    return-void

    :cond_102
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v5, v1, v6

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    goto/16 :goto_85

    :cond_111
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    goto :goto_a4
.end method
