.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/ResultCallback;
.field private final xw:J
.field final synthetic xx:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$a;J)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->xx:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->xw:J
return-void
.end method
.method public final i(Lcom/google/android/gms/common/api/Status;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->xx:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
iget-object v0, v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;
move-result-object v0
iget-wide v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->xw:J
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I
move-result v3
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/dv;->a(JI)V
:cond_17
return-void
.end method
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->i(Lcom/google/android/gms/common/api/Status;)V
return-void
.end method