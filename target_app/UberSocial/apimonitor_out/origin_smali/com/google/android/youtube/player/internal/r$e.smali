.class final Lcom/google/android/youtube/player/internal/r$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/player/internal/r;->b(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$e;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r;->h()V

    return-void
.end method
