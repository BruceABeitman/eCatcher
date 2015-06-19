.class final Lcom/instagram/android/maps/d/k;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/maps/d/j;
.method constructor <init>(Lcom/instagram/android/maps/d/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/k;->a:Lcom/instagram/android/maps/d/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/d/k; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-nez v0, :cond_1b
invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->f()Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/instagram/android/maps/PhotoMapsActivity;->e()Lcom/instagram/android/maps/PhotoMapsActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V
:cond_1b
invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x1
:goto_22
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V
const-string v1, " - Lcom/instagram/android/maps/d/k; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_26
const/4 v0, 0x0
goto :goto_22
.end method