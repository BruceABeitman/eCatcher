.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/model/a;
if-eqz v1, :cond_5b
check-cast v0, Lcom/spotify/mobile/android/model/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_78
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_78
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
const-string v3, "albums"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->az:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v5
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/l;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v1
if-eqz v1, :cond_5c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/l;
move-result-object v1
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v2
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_5b
:goto_5b
const-string v1, " - Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_5b
:cond_78
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;)V
goto :goto_5b
.end method