.class public final Lcom/google/android/gms/internal/qx;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/d;
.field private final a:Lcom/google/android/gms/common/api/c;
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;ILjava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/qx$1;
iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/gms/internal/qx$1;-><init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;ILjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/qx$2;
iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/qx$2;-><init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/util/Collection;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/qx$4;
iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/qx$4;-><init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;Ljava/util/Collection;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public varargs a(Lcom/google/android/gms/common/api/e;[Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/qx$5;
iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/qx$5;-><init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;[Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/plus/a/b/a;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-static {p1, v0}, Lcom/google/android/gms/plus/g;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->i()Lcom/google/android/gms/plus/a/b/a;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/qx$3;
iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/qx$3;-><init>(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/common/api/c;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method