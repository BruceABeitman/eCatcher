.class final Lcom/mapquest/android/maps/ar;
.super Ljava/lang/Object;
.source "MapView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/mapquest/android/maps/MapView;
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/ar;->a:Lcom/mapquest/android/maps/MapView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mapquest/android/maps/ar; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mapquest/android/maps/ar;->a:Lcom/mapquest/android/maps/MapView;
invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->b()Z
const-string v1, " - Lcom/mapquest/android/maps/ar; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method