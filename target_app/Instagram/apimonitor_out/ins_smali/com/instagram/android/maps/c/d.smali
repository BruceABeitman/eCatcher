.class final Lcom/instagram/android/maps/c/d;
.super Landroid/os/Handler;
.source "PhotoMapsEditHelper.java"
.field final synthetic a:Lcom/instagram/android/maps/c/c;
.method constructor <init>(Lcom/instagram/android/maps/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/c/d;->a:Lcom/instagram/android/maps/c/c;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget-object v0, p0, Lcom/instagram/android/maps/c/d;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;)V
return-void
.end method