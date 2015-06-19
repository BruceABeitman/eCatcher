.class  Lcom/google/android/gms/drive/internal/ab;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/e;
.field private final a:Lcom/google/android/gms/common/api/Status;
.field private final b:Lcom/google/android/gms/drive/DriveId;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/ab;->a:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/ab;->b:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ab;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/ab;->b:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method