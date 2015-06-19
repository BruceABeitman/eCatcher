.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/c/f;
.super Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/b/c/a",
        "<",
        "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
        "<",
        "Lcom/spotify/mobile/android/model/n;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/b",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/Metadata$Track;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;

    const-string v3, "uri=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/model/h;

    invoke-direct {v0}, Lcom/spotify/mobile/android/model/h;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v0

    return-object v0
.end method
