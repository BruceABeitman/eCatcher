.class  Lcom/google/android/gms/internal/ct$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic pa:Lcom/google/android/gms/internal/cw;
.field final synthetic pb:Landroid/content/Intent;
.field final synthetic pc:Lcom/google/android/gms/internal/ct;
.method constructor <init>(Lcom/google/android/gms/internal/ct;Lcom/google/android/gms/internal/cw;Landroid/content/Intent;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
iput-object p2, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
iput-object p3, p0, Lcom/google/android/gms/internal/ct$1;->pb:Landroid/content/Intent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
invoke-static {v0}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/da;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
iget-object v1, v1, Lcom/google/android/gms/internal/cw;->pk:Ljava/lang/String;
const/4 v2, -0x1
iget-object v3, p0, Lcom/google/android/gms/internal/ct$1;->pb:Landroid/content/Intent;
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/String;ILandroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
invoke-static {v0}, Lcom/google/android/gms/internal/ct;->c(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/dh;
move-result-object v7
new-instance v0, Lcom/google/android/gms/internal/cx;
iget-object v1, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
invoke-static {v1}, Lcom/google/android/gms/internal/ct;->b(Lcom/google/android/gms/internal/ct;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
iget-object v2, v2, Lcom/google/android/gms/internal/cw;->pl:Ljava/lang/String;
const/4 v3, 0x1
const/4 v4, -0x1
iget-object v5, p0, Lcom/google/android/gms/internal/ct$1;->pb:Landroid/content/Intent;
iget-object v6, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cx;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cw;)V
invoke-interface {v7, v0}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;)V
:goto_31
return-void
:cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
invoke-static {v0}, Lcom/google/android/gms/internal/ct;->c(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/dh;
move-result-object v7
new-instance v0, Lcom/google/android/gms/internal/cx;
iget-object v1, p0, Lcom/google/android/gms/internal/ct$1;->pc:Lcom/google/android/gms/internal/ct;
invoke-static {v1}, Lcom/google/android/gms/internal/ct;->b(Lcom/google/android/gms/internal/ct;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
iget-object v2, v2, Lcom/google/android/gms/internal/cw;->pl:Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, -0x1
iget-object v5, p0, Lcom/google/android/gms/internal/ct$1;->pb:Landroid/content/Intent;
iget-object v6, p0, Lcom/google/android/gms/internal/ct$1;->pa:Lcom/google/android/gms/internal/cw;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cx;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cw;)V
invoke-interface {v7, v0}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;)V
:try_end_50
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51
goto :goto_31
:catch_51
move-exception v0
const-string v0, "Fail to verify and dispatch pending transaction"
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_31
.end method