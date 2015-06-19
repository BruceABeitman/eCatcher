.class final Lcom/spotify/mobile/android/ui/fragments/p$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/p$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ab:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$5;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->E(Lcom/spotify/mobile/android/ui/fragments/p;)Z
move-result v2
if-nez v2, :cond_37
const/4 v0, 0x1
:cond_37
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/actions/d;->c(Landroid/content/Context;Z)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/p$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method