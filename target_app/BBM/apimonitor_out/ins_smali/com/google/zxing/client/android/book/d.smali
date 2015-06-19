.class final Lcom/google/zxing/client/android/book/d;
.super Ljava/lang/Object;
.source "SearchBookContentsActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/google/zxing/client/android/book/b;
.method constructor <init>(Lcom/google/zxing/client/android/book/b;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/book/d;->a:Lcom/google/zxing/client/android/book/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/zxing/client/android/book/d; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v0, 0x42
if-ne p2, v0, :cond_11
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/google/zxing/client/android/book/d;->a:Lcom/google/zxing/client/android/book/b;
invoke-static {v0}, Lcom/google/zxing/client/android/book/b;->a(Lcom/google/zxing/client/android/book/b;)V
const/4 v0, 0x1
:goto_10
move v2, v0
const-string v1, " - Lcom/google/zxing/client/android/book/d; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method