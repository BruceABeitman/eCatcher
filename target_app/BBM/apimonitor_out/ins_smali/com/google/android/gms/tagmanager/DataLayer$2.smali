.class  Lcom/google/android/gms/tagmanager/DataLayer$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/DataLayer$c$a;
.field final synthetic Uz:Lcom/google/android/gms/tagmanager/DataLayer;
.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->Uz:Lcom/google/android/gms/tagmanager/DataLayer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Ljava/util/List;)V
.registers 7
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$a;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->Uz:Lcom/google/android/gms/tagmanager/DataLayer;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->Uz:Lcom/google/android/gms/tagmanager/DataLayer;
iget-object v4, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->UA:Ljava/lang/String;
iget-object v0, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->UB:Ljava/lang/Object;
invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V
goto :goto_4
:cond_20
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->Uz:Lcom/google/android/gms/tagmanager/DataLayer;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
.end method