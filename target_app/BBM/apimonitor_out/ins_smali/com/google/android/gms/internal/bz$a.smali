.class final Lcom/google/android/gms/internal/bz$a;
.super Ljava/lang/Exception;
.field private final nX:I
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput p2, p0, Lcom/google/android/gms/internal/bz$a;->nX:I
return-void
.end method
.method public final getErrorCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/bz$a;->nX:I
return v0
.end method