.class final Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/view/PlayerContentView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;
if-nez v0, :cond_9
:goto_8
:cond_8
const-string v1, " - Lcom/spotify/mobile/android/ui/view/PlayerContentView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
iget-boolean v0, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-eqz v0, :cond_8
:cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-nez v0, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-nez v0, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Landroid/widget/ImageButton;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f()[I
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/c;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
iget-object v2, v2, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v2, "player"
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->Z:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v2, v3, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->l(Landroid/content/Context;)V
goto :goto_8
:cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
iput-boolean v2, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Landroid/widget/ImageButton;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g()[I
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/c;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
iget-object v2, v2, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v2, "player"
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->V:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v2, v3, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->k(Landroid/content/Context;)V
goto/16 :goto_8
.end method