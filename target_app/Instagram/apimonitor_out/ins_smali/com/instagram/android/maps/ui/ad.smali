.class final Lcom/instagram/android/maps/ui/ad;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/h/b;
.field final synthetic b:Landroid/view/ViewGroup;
.field final synthetic c:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/maps/ui/ad;->c:Lcom/instagram/android/maps/ui/m;
iput-object p2, p0, Lcom/instagram/android/maps/ui/ad;->a:Lcom/instagram/android/h/b;
iput-object p3, p0, Lcom/instagram/android/maps/ui/ad;->b:Landroid/view/ViewGroup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/ui/ad; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/ad;->c:Lcom/instagram/android/maps/ui/m;
iget-object v1, p0, Lcom/instagram/android/maps/ui/ad;->a:Lcom/instagram/android/h/b;
iget-object v2, p0, Lcom/instagram/android/maps/ui/ad;->b:Landroid/view/ViewGroup;
invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V
const-string v1, " - Lcom/instagram/android/maps/ui/ad; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method