.class final Lcom/spotify/mobile/android/ui/fragments/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/d;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/d;->j(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/folder-union/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/tracks?filter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/d;->k(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/util/cw;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->e(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->e(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->c(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->f(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->g(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/d;->f(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->h(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/os/Parcelable;

    :cond_36
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$5;->a:Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->i(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_47

    const/4 v0, 0x1

    :goto_43
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b(Z)V

    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_43
.end method
