.class final Lcom/bbm/compat/maps/h;
.super Ljava/lang/Object;
.source "MapQuestMapView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/compat/maps/MapQuestMapView;
.method constructor <init>(Lcom/bbm/compat/maps/MapQuestMapView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/h;->a:Lcom/bbm/compat/maps/MapQuestMapView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/compat/maps/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p1, :cond_b
instance-of v0, p1, Lcom/mapquest/android/maps/AnnotationView;
if-eqz v0, :cond_b
check-cast p1, Lcom/mapquest/android/maps/AnnotationView;
invoke-virtual {p1}, Lcom/mapquest/android/maps/AnnotationView;->a()V
:cond_b
const-string v1, " - Lcom/bbm/compat/maps/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method