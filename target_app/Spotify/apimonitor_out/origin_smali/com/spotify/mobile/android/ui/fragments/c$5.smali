.class final Lcom/spotify/mobile/android/ui/fragments/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/c;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->n(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/c;->o(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/util/cw;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->e(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/adapter/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/m;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 9

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/l;->c()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->e(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/adapter/m;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/spotify/mobile/android/ui/adapter/m;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->f(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->g(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z

    move-result v2

    if-nez v2, :cond_9c

    :goto_5c
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->h(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v4

    if-eqz v0, :cond_9e

    move v2, v1

    :goto_65
    invoke-virtual {v4, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->i(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v0, :cond_a0

    :goto_70
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->j(Lcom/spotify/mobile/android/ui/fragments/c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->i(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->j(Lcom/spotify/mobile/android/ui/fragments/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->k(Lcom/spotify/mobile/android/ui/fragments/c;)I

    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->m(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/os/Parcelable;

    :cond_9b
    return-void

    :cond_9c
    move v0, v1

    goto :goto_5c

    :cond_9e
    move v2, v3

    goto :goto_65

    :cond_a0
    move v3, v1

    goto :goto_70

    :cond_a2
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->l(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->i(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$5;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->l(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_96
.end method
