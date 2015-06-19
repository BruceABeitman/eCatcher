.class final Lcom/instagram/user/c/b;
.super Landroid/os/Handler;
.source "User.java"
.method constructor <init>(Landroid/os/Looper;)V
.registers 2
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/user/c/a;->h(Ljava/lang/String;)V
return-void
.end method