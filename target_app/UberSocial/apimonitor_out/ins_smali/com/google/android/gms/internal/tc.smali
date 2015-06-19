.class  Lcom/google/android/gms/internal/tc;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/sz;
.field private a:Lcom/google/android/gms/internal/sk;
.field private b:[B
.field private final c:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/tc;->c:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/tc;->a()V
return-void
.end method
.method public a()V
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/tc;->c:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/google/android/gms/internal/tc;->b:[B
iget-object v0, p0, Lcom/google/android/gms/internal/tc;->b:[B
invoke-static {v0}, Lcom/google/android/gms/internal/sk;->a([B)Lcom/google/android/gms/internal/sk;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/tc;->a:Lcom/google/android/gms/internal/sk;
return-void
.end method
.method public a(IJ)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/tc;->a:Lcom/google/android/gms/internal/sk;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/sk;->a(IJ)V
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/tc;->a:Lcom/google/android/gms/internal/sk;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/sk;->a(ILjava/lang/String;)V
return-void
.end method
.method public b()[B
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/tc;->a:Lcom/google/android/gms/internal/sk;
invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->a()I
move-result v0
if-gez v0, :cond_f
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_f
if-nez v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/tc;->b:[B
:goto_13
return-object v0
:cond_14
iget-object v1, p0, Lcom/google/android/gms/internal/tc;->b:[B
array-length v1, v1
sub-int v0, v1, v0
new-array v0, v0, [B
iget-object v1, p0, Lcom/google/android/gms/internal/tc;->b:[B
array-length v2, v0
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_13
.end method