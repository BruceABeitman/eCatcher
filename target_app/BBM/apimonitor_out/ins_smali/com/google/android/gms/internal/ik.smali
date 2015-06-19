.class public final Lcom/google/android/gms/internal/ik;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/Moments;
.field private final Rw:Lcom/google/android/gms/common/api/Api$b;
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ik;->Rw:Lcom/google/android/gms/common/api/Api$b;
return-void
.end method
.method public final load(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/ik$1;
iget-object v1, p0, Lcom/google/android/gms/internal/ik;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ik$1;-><init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final load(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 15
new-instance v0, Lcom/google/android/gms/internal/ik$2;
iget-object v2, p0, Lcom/google/android/gms/internal/ik;->Rw:Lcom/google/android/gms/common/api/Api$b;
move-object v1, p0
move v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ik$2;-><init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final remove(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/ik$4;
iget-object v1, p0, Lcom/google/android/gms/internal/ik;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ik$4;-><init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/ik$3;
iget-object v1, p0, Lcom/google/android/gms/internal/ik;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ik$3;-><init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/plus/model/moments/Moment;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method