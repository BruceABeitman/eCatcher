.class final Lcom/google/android/gms/internal/gb$d;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.field private final yQ:Lcom/google/android/gms/appstate/AppStateBuffer;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gb$d;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;
return-void
.end method
.method public getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gb$d;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;
return-object v0
.end method