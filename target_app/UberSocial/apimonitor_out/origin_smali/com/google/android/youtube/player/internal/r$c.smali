.class public final Lcom/google/android/youtube/player/internal/r$c;
.super Lcom/google/android/youtube/player/internal/r$b;


# instance fields
.field public final b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public final c:Landroid/os/IBinder;

.field final synthetic d:Lcom/google/android/youtube/player/internal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/internal/r;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/player/internal/r$b;-><init>(Lcom/google/android/youtube/player/internal/r;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/youtube/player/internal/r;->a(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    iput-object p3, p0, Lcom/google/android/youtube/player/internal/r$c;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_18

    sget-object v0, Lcom/google/android/youtube/player/internal/r$1;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$c;->b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v1}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$c;->b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->c:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v1}, Lcom/google/android/youtube/player/internal/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r$c;->c:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/player/internal/r;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->d(Lcom/google/android/youtube/player/internal/r;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r;->g()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_45} :catch_46

    goto :goto_18

    :catch_46
    move-exception v0

    :cond_47
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->f(Lcom/google/android/youtube/player/internal/r;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v1}, Lcom/google/android/youtube/player/internal/r;->e(Lcom/google/android/youtube/player/internal/r;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->g(Lcom/google/android/youtube/player/internal/r;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    sget-object v1, Lcom/google/android/youtube/player/YouTubeInitializationResult;->INTERNAL_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    goto :goto_18

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method
