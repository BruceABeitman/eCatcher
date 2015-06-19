.class  Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/event/Events$LoadEventsResult;
.field final synthetic Po:Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl$1;->Po:Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getEvents()Lcom/google/android/gms/games/event/EventBuffer;
.registers 3
new-instance v0, Lcom/google/android/gms/games/event/EventBuffer;
const/16 v1, 0xe
invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method