.class final Lcom/twidroid/c/l$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/l$7;->a:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/l$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
new-instance v0, Landroid/content/Intent;
const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/c/l$7;->a:Landroid/app/Activity;
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_d
.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
const-string v1, " - Lcom/twidroid/c/l$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_e
move-exception v0
const-string v0, "LocationDialog"
const-string v1, "Activity not exists"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
.end method