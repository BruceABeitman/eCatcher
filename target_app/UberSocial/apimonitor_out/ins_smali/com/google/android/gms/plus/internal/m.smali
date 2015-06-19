.class final Lcom/google/android/gms/plus/internal/m;
.super Lcom/google/android/gms/plus/internal/a;
.field final synthetic a:Lcom/google/android/gms/plus/internal/l;
.field private final b:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/internal/m;->a:Lcom/google/android/gms/plus/internal/l;
invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/plus/internal/m;->b:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/plus/internal/m;->a:Lcom/google/android/gms/plus/internal/l;
new-instance v1, Lcom/google/android/gms/plus/internal/p;
iget-object v2, p0, Lcom/google/android/gms/plus/internal/m;->a:Lcom/google/android/gms/plus/internal/l;
iget-object v3, p0, Lcom/google/android/gms/plus/internal/m;->b:Lcom/google/android/gms/common/api/t;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/plus/internal/p;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method