.class final Lcom/spotify/mobile/android/ui/fragments/r$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/c;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
.registers 11
const/4 v5, 0x4
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->q()Z
move-result v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
if-eqz p1, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;I)I
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getVisibility()I
move-result v4
sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
if-eq p2, v0, :cond_3b
sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
if-eq p2, v0, :cond_3b
sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
if-ne p2, v0, :cond_e9
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->o:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne v0, v2, :cond_e9
:cond_3b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/adapter/k;->a(I)V
:goto_4d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v0
invoke-static {p2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->l(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_fd
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->l(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->b()Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v0
move-object v3, v0
:goto_71
if-eqz v3, :cond_103
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v5, 0x7f0f0154
new-array v6, v2, [Ljava/lang/Object;
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/ConnectDevice;->c()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v1
invoke-virtual {v0, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z
move-result v5
if-nez v5, :cond_101
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/r;->m(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/e;
move-result-object v5
invoke-interface {v5, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/e;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->n(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
move-result-object v0
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
move v0, v1
:goto_a1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Ljava/lang/String;)Ljava/lang/String;
:goto_aa
if-eqz v0, :cond_b5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->n(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
move-result-object v0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_b5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getVisibility()I
move-result v0
if-nez v0, :cond_e2
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->o(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v1
if-eqz v1, :cond_cb
if-eq v4, v0, :cond_e2
:cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/r;->g(Lcom/spotify/mobile/android/ui/fragments/r;)I
move-result v2
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/view/ConnectIconView;ILcom/spotify/mobile/android/util/ClientEvent$Event;)V
:cond_e2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->p(Lcom/spotify/mobile/android/ui/fragments/r;)Z
goto/16 :goto_b
:cond_e9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$7;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/k;->a(I)V
goto/16 :goto_4d
:cond_fd
const/4 v0, 0x0
move-object v3, v0
goto/16 :goto_71
:cond_101
move v0, v2
goto :goto_a1
:cond_103
move v0, v2
goto :goto_aa
.end method