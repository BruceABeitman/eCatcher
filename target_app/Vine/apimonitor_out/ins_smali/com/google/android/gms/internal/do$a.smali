.class final Lcom/google/android/gms/internal/do$a;
.super Ljava/lang/Exception;
.field private final pH:I
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput p2, p0, Lcom/google/android/gms/internal/do$a;->pH:I
return-void
.end method
.method public getErrorCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/do$a;->pH:I
return v0
.end method