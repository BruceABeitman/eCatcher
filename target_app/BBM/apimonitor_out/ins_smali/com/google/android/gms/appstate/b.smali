.class public final Lcom/google/android/gms/appstate/b;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/appstate/AppState;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public final cL()Lcom/google/android/gms/appstate/AppState;
.registers 2
new-instance v0, Lcom/google/android/gms/appstate/a;
invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/a;-><init>(Lcom/google/android/gms/appstate/AppState;)V
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/appstate/b;->cL()Lcom/google/android/gms/appstate/AppState;
move-result-object v0
return-object v0
.end method
.method public final getConflictData()[B
.registers 2
const-string v0, "conflict_data"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public final getConflictVersion()Ljava/lang/String;
.registers 2
const-string v0, "conflict_version"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getKey()I
.registers 2
const-string v0, "key"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getLocalData()[B
.registers 2
const-string v0, "local_data"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public final getLocalVersion()Ljava/lang/String;
.registers 2
const-string v0, "local_version"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final hasConflict()Z
.registers 2
const-string v0, "conflict_version"
invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->ab(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/appstate/a;->b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method