.class final Lcom/google/zxing/client/android/a;
.super Ljava/lang/Object;
.source "CaptureActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/google/zxing/client/android/CaptureActivity;
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/a;->a:Lcom/google/zxing/client/android/CaptureActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/zxing/client/android/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/a;->a:Lcom/google/zxing/client/android/CaptureActivity;
invoke-static {v0}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/client/android/CaptureActivity;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/google/zxing/client/android/a;->a:Lcom/google/zxing/client/android/CaptureActivity;
iget-object v1, p0, Lcom/google/zxing/client/android/a;->a:Lcom/google/zxing/client/android/CaptureActivity;
invoke-static {v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/client/android/CaptureActivity;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/google/zxing/client/android/a;->a:Lcom/google/zxing/client/android/CaptureActivity;
invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V
:cond_18
const-string v1, " - Lcom/google/zxing/client/android/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method