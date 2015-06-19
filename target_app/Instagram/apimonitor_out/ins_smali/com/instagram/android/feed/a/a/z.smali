.class final Lcom/instagram/android/feed/a/a/z;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;
.method constructor <init>(Lcom/instagram/android/feed/a/a/x;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/a/z; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;
iget-object v0, v0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->e(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/common/a/a/m;
move-result-object v0
new-instance v1, Lcom/instagram/android/feed/a/a/a;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;
iget-object v2, v2, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/android/feed/a/a/a;-><init>(Lcom/instagram/feed/d/l;)V
new-instance v2, Lcom/instagram/android/feed/a/a/w;
iget-object v3, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;
iget-object v3, v3, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
iget-object v4, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;
iget-object v4, v4, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v4}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v4
const/4 v5, 0x0
invoke-direct {v2, v3, v4, v5}, Lcom/instagram/android/feed/a/a/w;-><init>(Lcom/instagram/android/feed/a/a/u;Lcom/instagram/feed/d/l;B)V
invoke-virtual {v1, v2}, Lcom/instagram/android/feed/a/a/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
const-string v1, " - Lcom/instagram/android/feed/a/a/z; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method