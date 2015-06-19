.class final Lcom/google/android/gms/internal/gb$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
.field private final yP:I
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gb$b;->yw:Lcom/google/android/gms/common/api/Status;
iput p2, p0, Lcom/google/android/gms/internal/gb$b;->yP:I
return-void
.end method
.method public getStateKey()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gb$b;->yP:I
return v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gb$b;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method