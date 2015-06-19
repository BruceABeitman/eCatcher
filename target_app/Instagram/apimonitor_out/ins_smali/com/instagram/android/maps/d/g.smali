.class final Lcom/instagram/android/maps/d/g;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/maps/d/a;
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/g;->a:Lcom/instagram/android/maps/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/d/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/d/g;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v1}, Lcom/instagram/android/maps/d/a;->e(Lcom/instagram/android/maps/d/a;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->c(Ljava/util/Collection;)V
iget-object v0, p0, Lcom/instagram/android/maps/d/g;->a:Lcom/instagram/android/maps/d/a;
invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V
const-string v1, " - Lcom/instagram/android/maps/d/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method