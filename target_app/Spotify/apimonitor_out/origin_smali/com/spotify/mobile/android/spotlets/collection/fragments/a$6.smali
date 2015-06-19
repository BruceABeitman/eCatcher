.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;

    const-string v6, "album_name"

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->w(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->w(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Landroid/database/Cursor;)V

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->p(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->x(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->y(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->y(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->z(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/os/Parcelable;

    :cond_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/util/ar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V

    :cond_68
    return-void
.end method
