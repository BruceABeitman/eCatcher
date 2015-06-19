.class final Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/c;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->d(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->b(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Z
move-result v0
if-eqz v0, :cond_13
if-nez p1, :cond_14
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/util/y;->a(Ljava/util/List;)Ljava/util/ArrayList;
move-result-object v2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/util/cx;Ljava/util/List;)Ljava/util/ArrayList;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->e(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)I
move-result v0
if-nez v0, :cond_40
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->at:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->finish()V
goto :goto_13
:cond_40
const/4 v2, 0x1
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_45
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->c(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/service/ConnectDevice;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
move v0, v1
:goto_5e
if-eqz v0, :cond_13
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-static {v2, v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;Lcom/spotify/mobile/android/service/ConnectDevice;)V
goto :goto_13
:cond_6c
move v0, v2
goto :goto_5e
.end method