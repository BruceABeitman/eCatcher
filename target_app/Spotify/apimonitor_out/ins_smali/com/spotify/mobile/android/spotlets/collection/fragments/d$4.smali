.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/model/b;
if-eqz v1, :cond_54
check-cast v0, Lcom/spotify/mobile/android/model/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_6d
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_6d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
const-string v3, "artists"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aA:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3, v4, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/l;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v1
if-eqz v1, :cond_55
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/l;
move-result-object v1
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v2
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_54
:cond_54
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_55
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Landroid/content/Intent;)V
goto :goto_54
:cond_6d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;)V
goto :goto_54
.end method