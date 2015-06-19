.class public Lcom/google/android/gms/wearable/internal/ae$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
.field private final qX:I
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ae$a;->yw:Lcom/google/android/gms/common/api/Status;
iput p2, p0, Lcom/google/android/gms/wearable/internal/ae$a;->qX:I
return-void
.end method
.method public getRequestId()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wearable/internal/ae$a;->qX:I
return v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ae$a;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method