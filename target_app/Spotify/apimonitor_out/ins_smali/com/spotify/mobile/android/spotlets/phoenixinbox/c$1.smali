.class final Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->i()I
move-result v0
packed-switch v0, :pswitch_data_dc
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Inbox type not available "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->i()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_24
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->n()Ljava/lang/String;
move-result-object v1
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
:goto_53
:pswitch_53
new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;
invoke-direct {v0, p0, p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;-><init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;)V
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/e;)V
return-void
:pswitch_5c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->o()Ljava/lang/String;
move-result-object v1
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->l()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
goto :goto_53
:pswitch_88
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->p()Ljava/lang/String;
move-result-object v1
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->m()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
goto :goto_53
:pswitch_ac
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->j()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->k()Landroid/content/res/Resources;
move-result-object v2
invoke-interface {p2, v2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
goto/16 :goto_53
nop
:pswitch_data_dc
.packed-switch -0x1
:pswitch_53
:pswitch_24
:pswitch_5c
:pswitch_88
:pswitch_ac
.end packed-switch
.end method