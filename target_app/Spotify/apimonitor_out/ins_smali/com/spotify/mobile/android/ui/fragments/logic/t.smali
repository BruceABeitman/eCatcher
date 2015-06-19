.class public final Lcom/spotify/mobile/android/ui/fragments/logic/t;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/j;
.field private a:Lcom/spotify/mobile/android/service/connections/b;
.field private b:Z
.field private d:Z
.field private e:I
.field private f:Landroid/content/Intent;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/t;Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
if-eqz p1, :cond_31
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->k:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v2
if-nez v2, :cond_32
:cond_16
:goto_16
if-eqz v0, :cond_31
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Landroid/content/Context;Lcom/spotify/mobile/android/service/ConnectDevice;)Landroid/content/Intent;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->f:Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_31
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
if-nez v0, :cond_31
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
:cond_31
return-void
:cond_32
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z
move-result v2
if-nez v2, :cond_16
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->m()Z
move-result v2
if-nez v2, :cond_16
move v0, v1
goto :goto_16
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/t;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/t;)Lcom/spotify/mobile/android/service/connections/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
return-object v0
.end method
.method protected final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 5
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
if-lez v0, :cond_7
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V
:cond_7
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_17
const-string v0, "dialog_queued"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
const-string v0, "dialog_request_code"
const/4 v1, -0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
:cond_17
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->f:Landroid/content/Intent;
if-eqz v0, :cond_f
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
if-lez v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->f:Landroid/content/Intent;
iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a(Landroid/content/Intent;I)V
:cond_f
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V
const-string v0, "dialog_queued"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->d:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "dialog_request_code"
iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->e:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final r_()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->r_()V
new-instance v0, Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->s_()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V
:cond_11
return-void
.end method
.method public final u_()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b:Z
return-void
.end method
.method public final v_()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a:Lcom/spotify/mobile/android/service/connections/b;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/t;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z
return-void
.end method