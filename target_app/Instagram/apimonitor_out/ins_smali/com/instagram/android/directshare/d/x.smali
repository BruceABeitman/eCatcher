.class final Lcom/instagram/android/directshare/d/x;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/x; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->i(Lcom/instagram/android/directshare/d/c;)Z
move-result v0
if-eqz v0, :cond_17
add-int v0, p2, p3
if-ne v0, p4, :cond_17
iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->j(Lcom/instagram/android/directshare/d/c;)V
iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Z)Z
:cond_17
const-string v1, " - Lcom/instagram/android/directshare/d/x; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/x; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/directshare/d/x; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method