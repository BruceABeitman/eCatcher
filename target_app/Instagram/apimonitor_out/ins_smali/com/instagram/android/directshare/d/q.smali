.class final Lcom/instagram/android/directshare/d/q;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/q; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/directshare/d/ad;
iget-object v1, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;
iget-object v2, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v2}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/android/directshare/d/ad;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/d/l;)V
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/ad;->a()V
const-string v1, " - Lcom/instagram/android/directshare/d/q; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method