.class final Lcom/spotify/mobile/android/ui/fragments/d$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/d$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ab:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->l(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/provider/g;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->m(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$6;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v2, v0, v3, v1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/d$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method