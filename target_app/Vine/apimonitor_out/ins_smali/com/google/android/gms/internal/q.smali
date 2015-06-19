.class  Lcom/google/android/gms/internal/q;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/o;
.field private kl:Lcom/google/android/gms/internal/ma;
.field private km:[B
.field private final kn:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/q;->kn:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/q;->reset()V
return-void
.end method
.method public b(IJ)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/q;->kl:Lcom/google/android/gms/internal/ma;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ma;->b(IJ)V
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/q;->kl:Lcom/google/android/gms/internal/ma;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V
return-void
.end method
.method public reset()V
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/q;->kn:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/google/android/gms/internal/q;->km:[B
iget-object v0, p0, Lcom/google/android/gms/internal/q;->km:[B
invoke-static {v0}, Lcom/google/android/gms/internal/ma;->q([B)Lcom/google/android/gms/internal/ma;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->kl:Lcom/google/android/gms/internal/ma;
return-void
.end method
.method public z()[B
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/q;->kl:Lcom/google/android/gms/internal/ma;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ma;->nL()I
move-result v0
if-gez v0, :cond_f
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_f
if-nez v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/q;->km:[B
:goto_13
return-object v0
:cond_14
iget-object v1, p0, Lcom/google/android/gms/internal/q;->km:[B
array-length v1, v1
sub-int v0, v1, v0
new-array v0, v0, [B
iget-object v1, p0, Lcom/google/android/gms/internal/q;->km:[B
array-length v2, v0
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_13
.end method