.class public Lcom/spotify/mobile/android/service/flow/logic/h;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Lcom/spotify/mobile/android/util/dw;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V
return-void
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/a;
.registers 5
const-string v0, "URL can\'t be empty"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "url"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "email"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/h;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/logic/h;-><init>()V
invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/logic/h;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method public final D()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v3, 0x7f0a0144
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V
if-nez p3, :cond_25
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->m()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/service/flow/logic/j;
invoke-direct {v2}, Lcom/spotify/mobile/android/service/flow/logic/j;-><init>()V
invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I
:cond_25
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "url"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->a:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "email"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_39
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->a:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "email"
invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->a:Ljava/lang/String;
:cond_39
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->U:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->b:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a()Z
.registers 4
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->m()Landroid/support/v4/app/r;
move-result-object v0
const v2, 0x7f0a0144
invoke-virtual {v0, v2}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/j;
if-eqz v0, :cond_2a
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/j;->D()Z
move-result v0
:goto_14
if-nez v0, :cond_1e
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/h;->c()Lcom/spotify/mobile/android/service/flow/logic/i;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/logic/i;->b()Z
move-result v0
:cond_1e
if-nez v0, :cond_26
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->a()Z
move-result v0
if-eqz v0, :cond_28
:cond_26
const/4 v0, 0x1
:goto_27
return v0
:cond_28
move v0, v1
goto :goto_27
:cond_2a
move v0, v1
goto :goto_14
.end method
.method public final c()Lcom/spotify/mobile/android/service/flow/logic/i;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/i;
return-object v0
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->b:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/h;->b:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method