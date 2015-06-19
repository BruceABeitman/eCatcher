.class final Lcom/instagram/android/directshare/d/l;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:[Ljava/lang/String;
.field final synthetic b:Lcom/instagram/feed/d/b;
.field final synthetic c:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;[Ljava/lang/String;Lcom/instagram/feed/d/b;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
iput-object p2, p0, Lcom/instagram/android/directshare/d/l;->a:[Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/l; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/d/l;->a:[Ljava/lang/String;
aget-object v0, v0, p2
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
sget v2, Lcom/facebook/az;->delete_comment:I
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v0, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/feed/d/b;
invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
:goto_19
:cond_19
const-string v1, " - Lcom/instagram/android/directshare/d/l; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
sget v2, Lcom/facebook/az;->view_profile:I
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_44
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/feed/d/b;
invoke-virtual {v2}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto :goto_19
:cond_44
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
sget v2, Lcom/facebook/az;->copy_text:I
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/feed/d/b;
invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/d/l;->c:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->copied:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_19
.end method