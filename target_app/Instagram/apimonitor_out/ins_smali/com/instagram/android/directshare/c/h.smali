.class final Lcom/instagram/android/directshare/c/h;
.super Ljava/lang/Object;
.source "InboxFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/instagram/android/directshare/c/c;
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/c/h; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const-wide/16 v0, 0x0
cmp-long v0, p4, v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;
invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;
invoke-virtual {v2}, Lcom/instagram/android/directshare/c/c;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v2, v0, v3, v3}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:cond_28
const-string v1, " - Lcom/instagram/android/directshare/c/h; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method