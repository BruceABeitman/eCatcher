.class final Lcom/instagram/android/fragment/cx;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/ct;
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/cx; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v0}, Lcom/instagram/android/fragment/ct;->e(Lcom/instagram/android/fragment/ct;)Z
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v1
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v2
if-nez v2, :cond_15
if-eqz v1, :cond_27
:cond_15
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-virtual {v1}, Lcom/instagram/android/fragment/ct;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:goto_26
const-string v1, " - Lcom/instagram/android/fragment/cx; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_27
iget-object v1, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-virtual {v1}, Lcom/instagram/android/fragment/ct;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_39
iget-object v0, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Landroid/support/v4/app/Fragment;)V
goto :goto_26
:cond_39
iget-object v1, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
sget-object v2, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;
iget-object v3, p0, Lcom/instagram/android/fragment/cx;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v3}, Lcom/instagram/android/fragment/ct;->f(Lcom/instagram/android/fragment/ct;)Lcom/facebook/b/e;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
goto :goto_26
.end method