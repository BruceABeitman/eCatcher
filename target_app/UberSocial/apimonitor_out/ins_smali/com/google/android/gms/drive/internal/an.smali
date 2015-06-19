.class public Lcom/google/android/gms/drive/internal/an;
.super Lcom/google/android/gms/drive/internal/az;
.implements Lcom/google/android/gms/drive/i;
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/az;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/drive/j;)Lcom/google/android/gms/common/api/j;
.registers 6
const/high16 v0, 0x1000
if-eq p2, v0, :cond_14
const/high16 v0, 0x2000
if-eq p2, v0, :cond_14
const/high16 v0, 0x3000
if-eq p2, v0, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid mode provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
new-instance v0, Lcom/google/android/gms/drive/internal/an$1;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/an$1;-><init>(Lcom/google/android/gms/drive/internal/an;ILcom/google/android/gms/drive/j;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Contents must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v0, Lcom/google/android/gms/drive/internal/an$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/an$2;-><init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)Lcom/google/android/gms/common/api/j;
.registers 6
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Contents must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v0, Lcom/google/android/gms/drive/internal/an$3;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/an$3;-><init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
.registers 4
sget-object v0, Lcom/google/android/gms/drive/b;->f:Lcom/google/android/gms/drive/c;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/drive/c;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method