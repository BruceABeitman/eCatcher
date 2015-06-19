.class final Lcom/google/android/gms/internal/fz;
.super Landroid/os/Handler;
.field final synthetic a:Lcom/google/android/gms/internal/fy;
.method public constructor <init>(Lcom/google/android/gms/internal/fy;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x2
const/4 v2, 0x1
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v2, :cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fy;->h()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->b()V
:goto_16
return-void
:cond_17
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x3
if-ne v0, v1, :cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
move-result-object v1
new-instance v2, Lcom/google/android/gms/common/a;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/a;)V
goto :goto_16
:cond_33
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x4
if-ne v0, v1, :cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;I)V
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-static {v0, v4}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-static {v0}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
move-result-object v1
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gj;->a(I)V
goto :goto_16
:cond_54
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v3, :cond_68
iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/fy;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fy;->c()Z
move-result v0
if-nez v0, :cond_68
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->b()V
goto :goto_16
:cond_68
iget v0, p1, Landroid/os/Message;->what:I
if-eq v0, v3, :cond_70
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v2, :cond_78
:cond_70
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->a()V
goto :goto_16
:cond_78
const-string v0, "GmsClient"
const-string v1, "Don\'t know how to handle this message."
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_16
.end method