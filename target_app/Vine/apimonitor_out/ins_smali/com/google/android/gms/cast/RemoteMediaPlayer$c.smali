.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
.field private final Ax:Lorg/json/JSONObject;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->Ax:Lorg/json/JSONObject;
return-void
.end method
.method public getCustomData()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->Ax:Lorg/json/JSONObject;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method