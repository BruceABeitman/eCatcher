.class final Lcom/google/android/gms/internal/gm;
.super Landroid/os/Handler;
.field final synthetic a:Lcom/google/android/gms/internal/gl;
.method public constructor <init>(Lcom/google/android/gms/internal/gl;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x2
const/4 v2, 0x1
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v2, :cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gl;->d()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gn;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->c()V
invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->j()V
:goto_19
return-void
:cond_1a
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x3
if-ne v0, v1, :cond_36
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-static {v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/gl;)Lcom/google/android/gms/internal/gu;
move-result-object v1
new-instance v2, Lcom/google/android/gms/common/b;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/b;)V
goto :goto_19
:cond_36
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x4
if-ne v0, v1, :cond_57
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/gl;I)I
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-static {v0, v4}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/gl;Landroid/os/IInterface;)Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-static {v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/gl;)Lcom/google/android/gms/internal/gu;
move-result-object v1
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gu;->a(I)V
goto :goto_19
:cond_57
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v3, :cond_6e
iget-object v0, p0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/gl;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gl;->c()Z
move-result v0
if-nez v0, :cond_6e
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gn;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->c()V
invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->j()V
goto :goto_19
:cond_6e
iget v0, p1, Landroid/os/Message;->what:I
if-eq v0, v3, :cond_76
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v2, :cond_7e
:cond_76
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/gn;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->i()V
goto :goto_19
:cond_7e
const-string v0, "GmsClient"
const-string v1, "Don\'t know how to handle this message."
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_19
.end method