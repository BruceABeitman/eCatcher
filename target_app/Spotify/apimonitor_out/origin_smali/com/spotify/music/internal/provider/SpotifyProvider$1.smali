.class final Lcom/spotify/music/internal/provider/SpotifyProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/internal/provider/SpotifyProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/content/ContentValues;

.field final synthetic c:Lcom/spotify/music/internal/provider/SpotifyProvider;


# direct methods
.method constructor <init>(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->c:Lcom/spotify/music/internal/provider/SpotifyProvider;

    iput-object p2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->c:Lcom/spotify/music/internal/provider/SpotifyProvider;

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method
