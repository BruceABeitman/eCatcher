.class final Lcom/google/android/gms/plus/internal/o;
.super Lcom/google/android/gms/internal/gp;
.implements Lcom/google/android/gms/plus/c;
.field final synthetic a:Lcom/google/android/gms/plus/internal/l;
.field private final d:Lcom/google/android/gms/common/api/Status;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private g:Lcom/google/android/gms/plus/a/a/e;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iput-object p1, p0, Lcom/google/android/gms/plus/internal/o;->a:Lcom/google/android/gms/plus/internal/l;
invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p3, p0, Lcom/google/android/gms/plus/internal/o;->d:Lcom/google/android/gms/common/api/Status;
iput-object p5, p0, Lcom/google/android/gms/plus/internal/o;->e:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/plus/internal/o;->f:Ljava/lang/String;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->d:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
if-eqz p2, :cond_d
new-instance v0, Lcom/google/android/gms/plus/a/a/e;
invoke-direct {v0, p2}, Lcom/google/android/gms/plus/a/a/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:goto_7
iput-object v0, p0, Lcom/google/android/gms/plus/internal/o;->g:Lcom/google/android/gms/plus/a/a/e;
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_7
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/o;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public b()Lcom/google/android/gms/plus/a/a/e;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->g:Lcom/google/android/gms/plus/a/a/e;
return-object v0
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->g:Lcom/google/android/gms/plus/a/a/e;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->g:Lcom/google/android/gms/plus/a/a/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/a/a/e;->b()V
:cond_9
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->f:Ljava/lang/String;
return-object v0
.end method
.method public i_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/o;->e:Ljava/lang/String;
return-object v0
.end method