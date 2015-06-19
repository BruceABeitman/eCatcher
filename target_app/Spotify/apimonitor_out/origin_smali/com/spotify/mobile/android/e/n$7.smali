.class final Lcom/spotify/mobile/android/e/n$7;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    const/4 v2, 0x1

    invoke-static {}, Lcom/spotify/mobile/android/e/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->q(Lcom/spotify/mobile/android/e/n;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->q(Lcom/spotify/mobile/android/e/n;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$7;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->d(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->c()V

    return-void
.end method
