.class final Lcom/instagram/android/maps/ui/n;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/n;->a:Lcom/instagram/android/maps/ui/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/ui/n; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I
if-nez v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/maps/ui/n;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/maps/ui/m;)V
:cond_9
const-string v1, " - Lcom/instagram/android/maps/ui/n; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method