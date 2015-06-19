.class final Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

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

    sget-object v0, Lcom/spotify/mobile/android/provider/k;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "filter"

    const-string v0, "filter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_29

    :goto_13
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    sget-object v3, Lcom/spotify/mobile/android/model/i;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_29
    move-object v0, v1

    goto :goto_13
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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->k(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/adapter/ad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/ad;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->k(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/adapter/ad;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/ad;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
