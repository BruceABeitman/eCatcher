.class public Lcom/spotify/mobile/android/service/flow/b;
.super Lcom/spotify/mobile/android/service/flow/a;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/service/flow/login/y;
.field private b:Lcom/spotify/mobile/android/util/dw;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/a;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/b;->c_(Landroid/os/Bundle;)V
return-void
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;[Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/b;
.registers 4
const-string v0, "licenseUrls cannot be null."
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
array-length v0, p1
if-lez v0, :cond_24
const/4 v0, 0x1
:goto_9
const-string v1, "There must be at least one license."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "license_urls"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/service/flow/b;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/b;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/b;->c_(Landroid/os/Bundle;)V
invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v1
:cond_24
const/4 v0, 0x0
goto :goto_9
.end method
.method public final a(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/app/Activity;)V
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/y;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/y;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->a:Lcom/spotify/mobile/android/service/flow/login/y;
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->N:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->b:Lcom/spotify/mobile/android/util/dw;
if-eqz p1, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->a:Lcom/spotify/mobile/android/service/flow/login/y;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/y;->b(Landroid/os/Bundle;)V
:cond_16
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/b;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a/b;-><init>()V
invoke-static {}, Lcom/spotify/mobile/android/service/flow/login/a/b;->a()Lcom/spotify/mobile/android/service/flow/login/a/d;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/b;->a:Lcom/spotify/mobile/android/service/flow/login/y;
new-instance v2, Lcom/spotify/mobile/android/service/flow/b$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/b$1;-><init>(Lcom/spotify/mobile/android/service/flow/b;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V
return-void
.end method
.method public final a()Z
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/b;->c()Lcom/spotify/mobile/android/service/flow/c;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/c;->c()V
const/4 v0, 0x1
return v0
.end method
.method public final c()Lcom/spotify/mobile/android/service/flow/c;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/c;
return-object v0
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
const-string v0, "dialog_queued_key"
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->a:Lcom/spotify/mobile/android/service/flow/login/y;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Landroid/os/Bundle;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/a;->d(Landroid/os/Bundle;)V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/a;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->b:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/a;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/b;->b:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method