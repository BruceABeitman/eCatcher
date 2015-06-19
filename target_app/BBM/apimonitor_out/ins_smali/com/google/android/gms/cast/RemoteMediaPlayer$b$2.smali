.class  Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.field final synthetic xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method