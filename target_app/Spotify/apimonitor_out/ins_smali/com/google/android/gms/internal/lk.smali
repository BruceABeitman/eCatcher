.class final Lcom/google/android/gms/internal/lk;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/lj;
.field private a:Lcom/google/android/gms/internal/ko;
.field private b:[B
.field private final c:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xef
iput v0, p0, Lcom/google/android/gms/internal/lk;->c:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/lk;->a()V
return-void
.end method
.method public final a()V
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/lk;->c:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/google/android/gms/internal/lk;->b:[B
iget-object v0, p0, Lcom/google/android/gms/internal/lk;->b:[B
invoke-static {v0}, Lcom/google/android/gms/internal/ko;->a([B)Lcom/google/android/gms/internal/ko;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ko;
return-void
.end method
.method public final a(IJ)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ko;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ko;->a(IJ)V
return-void
.end method
.method public final a(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ko;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ko;->a(ILjava/lang/String;)V
return-void
.end method
.method public final b()[B
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ko;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->a()I
move-result v0
if-gez v0, :cond_f
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_f
if-nez v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/lk;->b:[B
:goto_13
return-object v0
:cond_14
iget-object v1, p0, Lcom/google/android/gms/internal/lk;->b:[B
array-length v1, v1
sub-int v0, v1, v0
new-array v0, v0, [B
iget-object v1, p0, Lcom/google/android/gms/internal/lk;->b:[B
array-length v2, v0
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_13
.end method