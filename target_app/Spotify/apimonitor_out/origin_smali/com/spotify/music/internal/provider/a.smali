.class final Lcom/spotify/music/internal/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/h;


# instance fields
.field final synthetic a:Lcom/spotify/music/internal/provider/SpotifyProvider;


# direct methods
.method constructor <init>(Lcom/spotify/music/internal/provider/SpotifyProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/internal/provider/a;->a:Lcom/spotify/music/internal/provider/SpotifyProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/internal/provider/a;->a:Lcom/spotify/music/internal/provider/SpotifyProvider;

    invoke-static {v0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a(Lcom/spotify/music/internal/provider/SpotifyProvider;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/music/internal/provider/a;->a:Lcom/spotify/music/internal/provider/SpotifyProvider;

    invoke-static {v0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a(Lcom/spotify/music/internal/provider/SpotifyProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/spotify/music/internal/provider/a;->a:Lcom/spotify/music/internal/provider/SpotifyProvider;

    invoke-static {v0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->b(Lcom/spotify/music/internal/provider/SpotifyProvider;)Landroid/os/Handler;

    :cond_1a
    return-void
.end method
