.class  Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
.field final synthetic Bo:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->Bo:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getCustomData()Lorg/json/JSONObject;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method