.class final Lcom/spotify/mobile/android/ui/fragments/p$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/p$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->y(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->z(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->w:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->am:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/p$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->z(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$3;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_25
.end method