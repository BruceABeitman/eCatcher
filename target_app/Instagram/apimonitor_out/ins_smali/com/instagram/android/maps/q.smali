.class final Lcom/instagram/android/maps/q;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/q;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/q; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->g()I
move-result v0
if-lez v0, :cond_1b
new-instance v0, Lcom/instagram/android/maps/c/a;
iget-object v1, p0, Lcom/instagram/android/maps/q;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;
move-result-object v1
sget v2, Lcom/instagram/android/maps/e/f;->a:I
invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/c/a;-><init>(Landroid/support/v4/app/k;I)V
invoke-virtual {v0, p1}, Lcom/instagram/android/maps/c/a;->onClick(Landroid/view/View;)V
:goto_1a
const-string v1, " - Lcom/instagram/android/maps/q; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1b
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Z)V
goto :goto_1a
.end method