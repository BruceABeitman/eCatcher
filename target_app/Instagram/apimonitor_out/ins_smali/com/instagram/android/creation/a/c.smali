.class final Lcom/instagram/android/creation/a/c;
.super Ljava/lang/Object;
.source "ChildFragmentShareModeSelectorDelegate.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/creation/a/a;
.method constructor <init>(Lcom/instagram/android/creation/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/c;->a:Lcom/instagram/android/creation/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/c;->a:Lcom/instagram/android/creation/a/a;
const/4 v0, 0x1
invoke-static {v0}, Lcom/instagram/android/creation/a/a;->b(I)V
const-string v1, " - Lcom/instagram/android/creation/a/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method