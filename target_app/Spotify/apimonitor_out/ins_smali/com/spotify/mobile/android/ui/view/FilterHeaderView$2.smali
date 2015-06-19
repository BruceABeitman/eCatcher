.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aI:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v2, v3, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/PopupWindow;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->g(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method