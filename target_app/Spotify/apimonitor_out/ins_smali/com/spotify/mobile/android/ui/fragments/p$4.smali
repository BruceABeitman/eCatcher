.class final Lcom/spotify/mobile/android/ui/fragments/p$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/p$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->A(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->B(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v0
if-eqz v0, :cond_11
:cond_10
:goto_10
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/p$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V
:cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->D(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v0
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "spotify:ad:7afe058feb2d463cacd4adee152409d6"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/p;->c()Lcom/spotify/mobile/android/util/cz;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_65
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->m(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->an:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v2, "suggested_track"
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->i(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v0
if-eqz v0, :cond_a8
const-string v0, "true"
:goto_85
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->w:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$4;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;)V
goto/16 :goto_10
:cond_a8
const-string v0, "false"
goto :goto_85
.end method