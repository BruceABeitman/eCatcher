.class final Lcom/spotify/mobile/android/service/SpotifyService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/SpotifyService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$1;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/util/PlaybackListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/util/PlaybackListener$Change;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->d:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->s()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$1;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$1;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->b()V

    goto :goto_1b
.end method
