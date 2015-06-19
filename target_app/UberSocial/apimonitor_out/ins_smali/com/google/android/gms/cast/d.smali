.class public final Lcom/google/android/gms/cast/d;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/d$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/d$2;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/cast/d$1;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/d$1;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/cast/d$3;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/d$3;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;Z)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;)V
.registers 4
:try_start_0
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->h()V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v0, Ljava/io/IOException;
const-string v1, "service error"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;D)V
.registers 6
:try_start_0
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fm;->a(D)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v0, Ljava/io/IOException;
const-string v1, "service error"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Lcom/google/android/gms/cast/h;)V
.registers 6
:try_start_0
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;Lcom/google/android/gms/cast/h;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v0, Ljava/io/IOException;
const-string v1, "service error"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Z)V
.registers 5
:try_start_0
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fm;->a(Z)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v0, Ljava/io/IOException;
const-string v1, "service error"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/d$6;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/d$6;-><init>(Lcom/google/android/gms/cast/d;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/d$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/d$5;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/cast/d$4;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/d$4;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/d$7;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/d$7;-><init>(Lcom/google/android/gms/cast/d;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public c(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/d$9;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/d$9;-><init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/d$8;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/d$8;-><init>(Lcom/google/android/gms/cast/d;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 5
:try_start_0
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v0, Ljava/io/IOException;
const-string v1, "service error"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public e(Lcom/google/android/gms/common/api/e;)D
.registers 4
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->i()D
move-result-wide v0
return-wide v0
.end method
.method public f(Lcom/google/android/gms/common/api/e;)Z
.registers 3
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->j()Z
move-result v0
return v0
.end method
.method public g(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/cast/ApplicationMetadata;
.registers 3
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->k()Lcom/google/android/gms/cast/ApplicationMetadata;
move-result-object v0
return-object v0
.end method
.method public h(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->l()Ljava/lang/String;
move-result-object v0
return-object v0
.end method