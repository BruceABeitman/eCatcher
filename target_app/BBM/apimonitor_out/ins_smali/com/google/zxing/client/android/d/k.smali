.class final Lcom/google/zxing/client/android/d/k;
.super Ljava/lang/Object;
.source "ResultHandler.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/google/zxing/client/android/d/j;
.method constructor <init>(Lcom/google/zxing/client/android/d/j;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/d/k;->a:Lcom/google/zxing/client/android/d/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/zxing/client/android/d/k; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/d/k;->a:Lcom/google/zxing/client/android/d/j;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V
const-string v1, " - Lcom/google/zxing/client/android/d/k; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method