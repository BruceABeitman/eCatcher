.class final Lcom/google/android/gms/plus/internal/e$a;
.super Lcom/google/android/gms/plus/internal/a;
.field private final abI:Lcom/google/android/gms/common/api/a$d;
.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$a;->abI:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public am(Lcom/google/android/gms/common/api/Status;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/internal/e$d;
iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;
iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$a;->abI:Lcom/google/android/gms/common/api/a$d;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/plus/internal/e$d;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hc$b;)V
return-void
.end method