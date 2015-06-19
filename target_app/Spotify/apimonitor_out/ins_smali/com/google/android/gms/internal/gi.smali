.class public final Lcom/google/android/gms/internal/gi;
.super Lcom/google/android/gms/internal/gb;
.field public final b:I
.field public final c:Landroid/os/Bundle;
.field public final d:Landroid/os/IBinder;
.field final synthetic e:Lcom/google/android/gms/internal/fy;
.method public constructor <init>(Lcom/google/android/gms/internal/fy;ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gb;-><init>(Lcom/google/android/gms/internal/fy;Ljava/lang/Object;)V
iput p2, p0, Lcom/google/android/gms/internal/gi;->b:I
iput-object p3, p0, Lcom/google/android/gms/internal/gi;->d:Landroid/os/IBinder;
iput-object p4, p0, Lcom/google/android/gms/internal/gi;->c:Landroid/os/Bundle;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 8
const/4 v1, 0x0
const/4 v5, 0x1
check-cast p1, Ljava/lang/Boolean;
if-nez p1, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v5}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
:goto_b
return-void
:cond_c
iget v0, p0, Lcom/google/android/gms/internal/gi;->b:I
sparse-switch v0, :sswitch_data_e4
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->c:Landroid/os/Bundle;
if-eqz v0, :cond_e0
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->c:Landroid/os/Bundle;
const-string v2, "pendingIntent"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:goto_1f
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v2}, Lcom/google/android/gms/internal/fy;->d(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
move-result-object v2
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v2}, Lcom/google/android/gms/internal/fy;->e(Lcom/google/android/gms/internal/fy;)Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gm;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-virtual {v3}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v4}, Lcom/google/android/gms/internal/fy;->d(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gf;)V
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v2}, Lcom/google/android/gms/internal/fy;->f(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
:cond_45
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v2, v5}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v2, v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
move-result-object v1
new-instance v2, Lcom/google/android/gms/common/a;
iget v3, p0, Lcom/google/android/gms/internal/gi;->b:I
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/a;)V
goto :goto_b
:sswitch_60
:try_start_60
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->d:Landroid/os/IBinder;
invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-virtual {v2}, Lcom/google/android/gms/internal/fy;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->d:Landroid/os/IBinder;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fy;->a(Landroid/os/IBinder;)Landroid/os/IInterface;
move-result-object v2
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->c(Lcom/google/android/gms/internal/fy;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
const/4 v2, 0x3
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/gj;->a()V
:try_end_96
.catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_96} :catch_98
goto/16 :goto_b
:catch_98
move-exception v0
:cond_99
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->e(Lcom/google/android/gms/internal/fy;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gm;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-virtual {v2}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v3}, Lcom/google/android/gms/internal/fy;->d(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gf;)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->f(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v5}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
move-result-object v0
new-instance v2, Lcom/google/android/gms/common/a;
const/16 v3, 0x8
invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/a;)V
goto/16 :goto_b
:sswitch_d3
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->e:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v5}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "A fatal developer error has occurred. Check the logs for further information."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e0
move-object v0, v1
goto/16 :goto_1f
nop
:sswitch_data_e4
.sparse-switch
0x0 -> :sswitch_60
0xa -> :sswitch_d3
.end sparse-switch
.end method