.class final Lcom/google/android/gms/dynamic/a$5;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.field final synthetic Mf:I
.field final synthetic qr:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;
iput p2, p0, Lcom/google/android/gms/dynamic/a$5;->Mf:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/dynamic/a$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;
iget v2, p0, Lcom/google/android/gms/dynamic/a$5;->Mf:I
invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/google/android/gms/dynamic/a$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method