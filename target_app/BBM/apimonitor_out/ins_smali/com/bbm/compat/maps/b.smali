.class public Lcom/bbm/compat/maps/b;
.super Landroid/support/v4/app/Fragment;
.source "CompatMapFragment.java"
.field  view:Lcom/bbm/compat/maps/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public getMapView()Lcom/bbm/compat/maps/c;
.registers 2
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
return-object v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V
invoke-static {p1}, Lcom/bbm/compat/maps/a;->a(Landroid/app/Activity;)Lcom/bbm/compat/maps/c;
move-result-object v0
iput-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/compat/maps/b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0, p1}, Lcom/bbm/compat/maps/c;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/bbm/compat/maps/b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0}, Lcom/bbm/compat/maps/c;->getView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/b; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0}, Lcom/bbm/compat/maps/c;->onDestroy()V
const-string v1, " - Lcom/bbm/compat/maps/b; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetach()V
.registers 1
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V
return-void
.end method
.method public onLowMemory()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0}, Lcom/bbm/compat/maps/c;->onLowMemory()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0}, Lcom/bbm/compat/maps/c;->onPause()V
const-string v1, " - Lcom/bbm/compat/maps/b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0}, Lcom/bbm/compat/maps/c;->onResume()V
const-string v1, " - Lcom/bbm/compat/maps/b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/compat/maps/b; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/compat/maps/b;->view:Lcom/bbm/compat/maps/c;
invoke-interface {v0, p1}, Lcom/bbm/compat/maps/c;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/bbm/compat/maps/b; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method