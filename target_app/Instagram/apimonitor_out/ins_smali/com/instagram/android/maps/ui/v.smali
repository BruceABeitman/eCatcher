.class final Lcom/instagram/android/maps/ui/v;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/maps/ui/v;->b:Lcom/instagram/android/maps/ui/m;
iput-object p2, p0, Lcom/instagram/android/maps/ui/v;->a:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/ui/v; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/v;->b:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/ui/v;->a:Ljava/util/List;
invoke-interface {v0, v1}, Lcom/instagram/android/maps/ui/af;->a(Ljava/util/List;)V
const-string v1, " - Lcom/instagram/android/maps/ui/v; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method