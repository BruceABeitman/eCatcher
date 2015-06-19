.class public final Lcom/google/zxing/client/android/d/i;
.super Ljava/lang/Object;
.source "ResultButtonListener.java"
.implements Landroid/view/View$OnClickListener;
.field private final a:Lcom/google/zxing/client/android/d/j;
.field private final b:I
.method public constructor <init>(Lcom/google/zxing/client/android/d/j;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/client/android/d/i;->a:Lcom/google/zxing/client/android/d/j;
iput p2, p0, Lcom/google/zxing/client/android/d/i;->b:I
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/zxing/client/android/d/i; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/d/i;->a:Lcom/google/zxing/client/android/d/j;
iget v1, p0, Lcom/google/zxing/client/android/d/i;->b:I
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d/j;->b(I)V
const-string v1, " - Lcom/google/zxing/client/android/d/i; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method