.class public final Lcom/google/android/gms/internal/nt;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/r;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nt$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nt$3;-><init>(Lcom/google/android/gms/internal/nt;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;IZ)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/nt$2;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/nt$2;-><init>(Lcom/google/android/gms/internal/nt;IZ)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nt$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nt$1;-><init>(Lcom/google/android/gms/internal/nt;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Z)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nt$6;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nt$6;-><init>(Lcom/google/android/gms/internal/nt;Z)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->i()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nt$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nt$5;-><init>(Lcom/google/android/gms/internal/nt;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;IZ)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/nt$4;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/nt$4;-><init>(Lcom/google/android/gms/internal/nt;IZ)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/games/Player;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->j()Lcom/google/android/gms/games/Player;
move-result-object v0
return-object v0
.end method
.method public c(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->w()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method