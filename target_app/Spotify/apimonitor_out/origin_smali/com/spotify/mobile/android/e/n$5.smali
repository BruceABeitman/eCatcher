.class final Lcom/spotify/mobile/android/e/n$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/n;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/service/managers/d;Lcom/spotify/mobile/android/e/p;Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/service/aj;Lcom/spotify/mobile/android/service/ai;Lcom/spotify/mobile/android/service/managers/ConnectManager;Lcom/spotify/mobile/android/service/managers/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/n;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->e()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$5;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->f()V

    return-void
.end method