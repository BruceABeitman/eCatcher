.class  Lcom/google/android/gms/internal/eq$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic sq:Ljava/lang/String;
.field final synthetic sr:Lcom/google/android/gms/internal/eq;
.method constructor <init>(Lcom/google/android/gms/internal/eq;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/eq$1;->sr:Lcom/google/android/gms/internal/eq;
iput-object p2, p0, Lcom/google/android/gms/internal/eq$1;->sq:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/eq$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/eq$1;->sr:Lcom/google/android/gms/internal/eq;
invoke-static {v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/eq;)Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.SEND"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "text/plain"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
const-string v2, "android.intent.extra.TEXT"
iget-object v3, p0, Lcom/google/android/gms/internal/eq$1;->sq:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
const-string v2, "Share via"
invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/google/android/gms/internal/eq$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method