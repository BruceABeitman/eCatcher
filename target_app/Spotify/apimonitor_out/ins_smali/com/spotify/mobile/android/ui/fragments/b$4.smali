.class final Lcom/spotify/mobile/android/ui/fragments/b$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b$4;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/b$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->d()Z
move-result v1
if-nez v1, :cond_20
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->f()Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b$4;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Lcom/spotify/mobile/android/service/ConnectDevice;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b$4;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/lang/String;)V
:cond_20
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/b$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method