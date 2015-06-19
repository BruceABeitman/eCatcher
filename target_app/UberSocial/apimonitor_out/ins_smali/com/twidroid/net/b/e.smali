.class public Lcom/twidroid/net/b/e;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private a:Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/e;->a:Ljava/lang/Object;
return-object v0
.end method
.method public a(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/b/e;->a:Ljava/lang/Object;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/net/b/e; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/net/b/e;->setRetainInstance(Z)V
const-string v1, " - Lcom/twidroid/net/b/e; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method