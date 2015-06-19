.class abstract Lcom/google/android/gms/internal/fz$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Result;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.field protected final yx:Ljava/lang/Object;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/fz$a;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/internal/fz$a;->yx:Ljava/lang/Object;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fz$a;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method