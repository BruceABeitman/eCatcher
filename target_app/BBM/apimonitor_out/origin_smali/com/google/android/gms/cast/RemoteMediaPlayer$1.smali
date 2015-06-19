.class Lcom/google/android/gms/cast/RemoteMediaPlayer$1;
.super Lcom/google/android/gms/internal/dv;


# instance fields
.field final synthetic xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dv;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMetadataUpdated()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->b(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method

.method protected onStatusUpdated()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->a(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method
