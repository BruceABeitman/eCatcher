.class final Lcom/spotify/mobile/android/spotlets/discover/b/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(I)Landroid/support/v4/app/z;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/discover/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;I)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->b:I

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->l(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->a:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->b:I

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/y;->a(II)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->e(Lcom/spotify/mobile/android/spotlets/discover/b/a;)I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->f(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Lcom/spotify/mobile/android/spotlets/discover/b/a;Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->w()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->f(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->f(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->h(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_6e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a()I

    move-result v3

    if-nez v3, :cond_8a

    :goto_86
    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V

    goto :goto_4d

    :cond_8a
    move v0, v1

    goto :goto_86

    :cond_8c
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V

    const/16 v2, 0xc

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->a:I

    if-nez v2, :cond_ef

    move v4, v0

    :goto_a0
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-nez v2, :cond_f1

    move v3, v0

    :goto_a7
    const/4 v2, 0x0

    if-eqz v3, :cond_f3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->F()V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->b:I

    if-ge v0, v1, :cond_d8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Lcom/spotify/mobile/android/spotlets/discover/b/a;I)I

    :cond_d8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Ljava/lang/Long;

    move-result-object v0

    :goto_de
    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->k(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/c/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(JJ)V

    goto/16 :goto_4d

    :cond_ef
    move v4, v1

    goto :goto_a0

    :cond_f1
    move v3, v1

    goto :goto_a7

    :cond_f3
    if-eqz v4, :cond_10e

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->k(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/c/a;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;->c:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_de

    :cond_10e
    move-object v0, v2

    goto :goto_de
.end method
