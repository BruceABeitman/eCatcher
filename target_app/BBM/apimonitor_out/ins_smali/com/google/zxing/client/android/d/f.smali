.class final Lcom/google/zxing/client/android/d/f;
.super Ljava/lang/Object;
.source "ISBNResultHandler.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/google/zxing/client/android/d/e;
.method constructor <init>(Lcom/google/zxing/client/android/d/e;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/zxing/client/android/d/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;
iget-object v0, v0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/o;
iget-object v1, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;
iget-object v0, v0, Lcom/google/zxing/client/a/o;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/d/e;->g(Ljava/lang/String;)V
const-string v1, " - Lcom/google/zxing/client/android/d/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method