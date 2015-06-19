.class final Lcom/spotify/music/internal/provider/SpotifyProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/internal/provider/SpotifyProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/spotify/music/internal/provider/SpotifyProvider;


# direct methods
.method constructor <init>(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$3;->b:Lcom/spotify/music/internal/provider/SpotifyProvider;

    iput-object p2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$3;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$3;->b:Lcom/spotify/music/internal/provider/SpotifyProvider;

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider$3;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;)V

    return-void
.end method
