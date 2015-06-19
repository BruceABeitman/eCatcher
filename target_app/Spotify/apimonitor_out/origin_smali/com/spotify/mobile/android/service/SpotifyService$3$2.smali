.class final Lcom/spotify/mobile/android/service/SpotifyService$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/SpotifyService$3;->onSessionIdle(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/spotify/mobile/android/service/SpotifyService$3;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService$3;Z)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$2;->b:Lcom/spotify/mobile/android/service/SpotifyService$3;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$2;->a:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$2;->b:Lcom/spotify/mobile/android/service/SpotifyService$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3$2;->b:Lcom/spotify/mobile/android/service/SpotifyService$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->b()V

    goto :goto_13
.end method
