.class final Lcom/spotify/mobile/android/util/dr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/util/dr;
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
.field final synthetic a:Lcom/spotify/mobile/android/util/dr;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/dr;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dr$1;->a:Lcom/spotify/mobile/android/util/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "row"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/util/dr$1;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 11
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

    const-string v0, "content_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "track_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "sort_order"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/dr$1;->a:Lcom/spotify/mobile/android/util/dr;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dr;->b(Lcom/spotify/mobile/android/util/dr;)Landroid/content/Context;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/track_lookup/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/util/dr$1;->b:[Ljava/lang/String;

    move-object v5, v4

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
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dr$1;->a:Lcom/spotify/mobile/android/util/dr;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dr;->a(Lcom/spotify/mobile/android/util/dr;)Lcom/spotify/mobile/android/util/ds;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/spotify/mobile/android/util/dr$1;->a:Lcom/spotify/mobile/android/util/dr;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dr;->a(Lcom/spotify/mobile/android/util/dr;)Lcom/spotify/mobile/android/util/ds;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/util/ds;->a(I)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/spotify/mobile/android/util/dr$1;->a:Lcom/spotify/mobile/android/util/dr;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dr;->a(Lcom/spotify/mobile/android/util/dr;)Lcom/spotify/mobile/android/util/ds;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/ds;->a()V

    goto :goto_20
.end method
