.class public abstract Lcom/google/android/gms/internal/ss;
.super Ljava/lang/Object;
.field protected s:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/ss;->s:I
return-void
.end method
.method public static final a(Lcom/google/android/gms/internal/ss;[B)Lcom/google/android/gms/internal/ss;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ss;->b(Lcom/google/android/gms/internal/ss;[BII)Lcom/google/android/gms/internal/ss;
move-result-object v0
return-object v0
.end method
.method public static final a(Lcom/google/android/gms/internal/ss;[BII)V
.registers 7
:try_start_0
invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/sk;->a([BII)Lcom/google/android/gms/internal/sk;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/sk;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->b()V
:try_end_a
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Serializing to a byte array threw an IOException (should never happen)."
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public static final a(Lcom/google/android/gms/internal/ss;)[B
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/internal/ss;->b()I
move-result v0
new-array v0, v0, [B
const/4 v1, 0x0
array-length v2, v0
invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/ss;[BII)V
return-object v0
.end method
.method public static final b(Lcom/google/android/gms/internal/ss;[BII)Lcom/google/android/gms/internal/ss;
.registers 6
:try_start_0
invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/sj;->a([BII)Lcom/google/android/gms/internal/sj;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ss;->b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sj;->a(I)V
:try_end_b
.catch Lcom/google/android/gms/internal/sr; {:try_start_0 .. :try_end_b} :catch_c
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e
return-object p0
:catch_c
move-exception v0
throw v0
:catch_e
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Reading from a byte array threw an IOException (should never happen)."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ss;->s:I
if-gez v0, :cond_7
invoke-virtual {p0}, Lcom/google/android/gms/internal/ss;->b()I
:cond_7
iget v0, p0, Lcom/google/android/gms/internal/ss;->s:I
return v0
.end method
.method public a(Lcom/google/android/gms/internal/sk;)V
.registers 2
return-void
.end method
.method public b()I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/ss;->s:I
return v0
.end method
.method public abstract b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/internal/st;->a(Lcom/google/android/gms/internal/ss;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method