.class abstract Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.super Lcom/google/android/gms/cast/Cast$a;
.field  xy:Lcom/google/android/gms/internal/dx;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;)V
iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->xy:Lcom/google/android/gms/internal/dx;
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
move-result-object v0
return-object v0
.end method
.method public j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method