.class final Lcom/spotify/mobile/android/ui/contextmenu/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/a;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a$3$1;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/a$3;Landroid/content/Context;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 6
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->b(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->l()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/e;->c()V
goto :goto_16
:cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->D()V
:goto_2b
return-void
:cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f0214
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->e(Lcom/spotify/mobile/android/ui/contextmenu/a;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->d(Lcom/spotify/mobile/android/ui/contextmenu/a;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2b
.end method