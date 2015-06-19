.class public final Lcom/spotify/mobile/android/util/DialogPresenter;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private a:Ljava/util/ArrayList;
.field private b:Ljava/util/ArrayList;
.field private c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;)Lcom/spotify/mobile/android/ui/fragments/logic/r;
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->l()Landroid/support/v4/app/r;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a(Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/r;
return-object v0
.end method
.method private declared-synchronized a()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_2f
move-result v0
if-eqz v0, :cond_b
:goto_9
:cond_9
monitor-exit p0
return-void
:cond_b
:try_start_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
if-nez v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;)Lcom/spotify/mobile/android/ui/fragments/logic/r;
move-result-object v0
const-string v1, "Showing dialog (%s)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c()V
:try_end_2e
.catchall {:try_start_b .. :try_end_2e} :catchall_2f
goto :goto_9
:catchall_2f
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized f(Landroid/os/Bundle;)V
.registers 3
monitor-enter p0
:try_start_1
const-string v0, "request_code_map"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
const-string v0, "dialog_queue"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
const-string v0, "current_dialog"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(IILandroid/content/Intent;)V
.registers 9
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;)Lcom/spotify/mobile/android/ui/fragments/logic/r;
move-result-object v1
const-string v2, "Dialog has closed (%s)"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_2a
if-nez v1, :cond_1e
:goto_1c
monitor-exit p0
return-void
:try_start_1e
:cond_1e
iget-object v1, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->c(Ljava/lang/Object;Ljava/lang/Object;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->a()V
:try_end_29
.catchall {:try_start_1e .. :try_end_29} :catchall_2a
goto :goto_1c
:catchall_2a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_8
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/DialogPresenter;->f(Landroid/os/Bundle;)V
:cond_8
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
.registers 4
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->p_()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_b
const-string v1, "Fragment must be added to a transaction with a specific tag before being registered in DialogPresenter."
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-virtual {p1, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_b
.end method
.method public final declared-synchronized b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
.registers 6
monitor-enter p0
:try_start_1
const-string v0, "Queuing dialog (%s)"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
new-instance v1, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->p_()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;-><init>(Ljava/lang/String;B)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->a()V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_20
monitor-exit p0
return-void
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
new-instance v1, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->p_()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;-><init>(Ljava/lang/String;B)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_18
move-result v0
monitor-exit p0
return v0
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized d(Landroid/os/Bundle;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
const-string v0, "request_code_map"
iget-object v1, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->a:Ljava/util/ArrayList;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v0, "dialog_queue"
iget-object v1, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->b:Ljava/util/ArrayList;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v0, "current_dialog"
iget-object v1, p0, Lcom/spotify/mobile/android/util/DialogPresenter;->c:Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_1b
monitor-exit p0
return-void
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method