.class public abstract Lcom/google/android/gms/internal/ke;
.super Ljava/lang/Object;
.field protected DY:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/ke;->DY:I
return-void
.end method
.method public static final a(Lcom/google/android/gms/internal/ke;[B)Lcom/google/android/gms/internal/ke;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ke;->b(Lcom/google/android/gms/internal/ke;[BII)Lcom/google/android/gms/internal/ke;
move-result-object v0
return-object v0
.end method
.method public static final a(Lcom/google/android/gms/internal/ke;[BII)V
.registers 7
:try_start_0
invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/jz;->b([BII)Lcom/google/android/gms/internal/jz;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/jz;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/jz;->kN()V
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
.method public static final b(Lcom/google/android/gms/internal/ke;[BII)Lcom/google/android/gms/internal/ke;
.registers 6
:try_start_0
invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/jy;->a([BII)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ke;->b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->cu(I)V
:try_end_b
.catch Lcom/google/android/gms/internal/kd; {:try_start_0 .. :try_end_b} :catch_c
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
.method public static final d(Lcom/google/android/gms/internal/ke;)[B
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/internal/ke;->c()I
move-result v0
new-array v0, v0, [B
const/4 v1, 0x0
array-length v2, v0
invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke;[BII)V
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/jz;)V
.registers 2
return-void
.end method
.method public abstract b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
.end method
.method public c()I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/ke;->DY:I
return v0
.end method
.method public eW()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ke;->DY:I
if-gez v0, :cond_7
invoke-virtual {p0}, Lcom/google/android/gms/internal/ke;->c()I
:cond_7
iget v0, p0, Lcom/google/android/gms/internal/ke;->DY:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/internal/kf;->e(Lcom/google/android/gms/internal/ke;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method