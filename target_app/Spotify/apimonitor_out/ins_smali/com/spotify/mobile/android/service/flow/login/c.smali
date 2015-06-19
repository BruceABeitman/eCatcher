.class public Lcom/spotify/mobile/android/service/flow/login/c;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"
.field private a:Z
.field private b:Z
.field private c:Landroid/view/View;
.field private d:Lcom/spotify/mobile/android/util/dw;
.field private e:Z
.field private f:Lcom/facebook/ae;
.field private g:Lcom/facebook/ak;
.field private h:Lcom/spotify/mobile/android/ui/actions/c;
.field private i:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->a:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/c$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->f:Lcom/facebook/ae;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->h:Lcom/spotify/mobile/android/ui/actions/c;
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->i:Z
return-void
.end method
.method private E()V
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->q()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V
:goto_11
return-void
:cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->b:Z
goto :goto_11
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/c;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/c;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "isSignUpFlow"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/c;->c_(Landroid/os/Bundle;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/c;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->i:Z
return v0
.end method
.method public static b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/c;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/c;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "isSignUpFlow"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/c;->c_(Landroid/os/Bundle;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/c;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
return-void
.end method
.method public final D()Lcom/spotify/mobile/android/service/flow/login/d;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/d;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030079
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const v1, 0x7f0a02d0
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->c:Landroid/view/View;
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->e:Z
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/service/flow/login/o;->a(IILandroid/content/Intent;)V
const/4 v0, 0x1
if-ne v0, p1, :cond_33
const/4 v0, -0x1
if-ne p2, v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->h:Lcom/spotify/mobile/android/ui/actions/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/c;->d:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/dw;->c()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Z)V
:goto_19
:cond_19
return-void
:cond_1a
if-nez p2, :cond_20
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
goto :goto_19
:cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unhandled result code "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_19
:cond_33
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_19
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_46
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v1
invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z
:cond_46
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ak;->a(IILandroid/content/Intent;)V
if-nez p2, :cond_19
iput-boolean v3, p0, Lcom/spotify/mobile/android/service/flow/login/c;->e:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
goto :goto_19
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/facebook/ak;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/c;->f:Lcom/facebook/ae;
invoke-direct {v0, v1, v2}, Lcom/facebook/ak;-><init>(Landroid/app/Activity;Lcom/facebook/ae;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-virtual {v0, p1}, Lcom/facebook/ak;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->s()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->b:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->R:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->d:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method protected final a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "%s %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p2, :cond_1d
if-eqz v0, :cond_19
invoke-static {v0, p2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
:cond_19
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
:cond_1c
:goto_1c
return-void
:cond_1d
if-eqz p1, :cond_1c
invoke-virtual {p1}, Lcom/facebook/SessionState;->a()Z
move-result v0
if-eqz v0, :cond_1c
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->i:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->c:Landroid/view/View;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->c:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_32
iput-boolean v4, p0, Lcom/spotify/mobile/android/service/flow/login/c;->i:Z
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/e;
invoke-direct {v1, p0, v3}, Lcom/spotify/mobile/android/service/flow/login/e;-><init>(Lcom/spotify/mobile/android/service/flow/login/c;B)V
invoke-static {v0, v1}, Lcom/facebook/Request;->a(Lcom/facebook/Session;Lcom/facebook/q;)Lcom/facebook/Request;
move-result-object v0
new-array v1, v4, [Lcom/facebook/Request;
aput-object v0, v1, v3
invoke-static {v1}, Lcom/facebook/Request;->a([Lcom/facebook/Request;)Lcom/facebook/u;
goto :goto_1c
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/login/p;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/service/flow/login/p;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_c
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "Arguments not set for FacebookSSOFragment, you must use the create methods to instantiate"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "isSignUpFlow"
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->a:Z
if-nez v1, :cond_55
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->b()Z
move-result v1
if-eqz v1, :cond_55
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->a:Z
if-eqz v0, :cond_55
new-instance v1, Lcom/spotify/mobile/android/util/cu;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/util/cu;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/util/cu;->a(I)V
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v2, "should_show_trial_start_notice"
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_55
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->a:Z
if-eqz v1, :cond_b
if-eqz v0, :cond_63
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->D()Lcom/spotify/mobile/android/service/flow/login/d;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/d;->a()V
goto :goto_b
:cond_63
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->D()Lcom/spotify/mobile/android/service/flow/login/d;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/d;->b()V
goto :goto_b
.end method
.method protected final a(Lcom/spotify/mobile/android/util/SpotifyError;)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/util/SpotifyError;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->q()Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->c:Landroid/view/View;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->c:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_16
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyError;->H:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyError;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0, v3}, Lcom/spotify/mobile/android/service/flow/login/c;->a(Landroid/content/Intent;I)V
goto :goto_a
:cond_2d
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/util/SpotifyError;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->G()Lcom/spotify/mobile/android/util/ce;
move-result-object v0
if-eqz v0, :cond_76
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ce;->b()Z
move-result v0
if-eqz v0, :cond_76
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f0f0223
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/login/c;->b(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_67
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
goto :goto_a
:cond_76
move-object v0, v1
goto :goto_67
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-virtual {v0, p1}, Lcom/facebook/ak;->b(Landroid/os/Bundle;)V
return-void
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->s_()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-static {}, Lcom/facebook/AppEventsLogger;->b()V
return-void
.end method
.method public final x()V
.registers 6
const/4 v4, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->d:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->b:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V
iput-boolean v4, p0, Lcom/spotify/mobile/android/service/flow/login/c;->b:Z
:goto_1a
return-void
:cond_1b
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_35
invoke-virtual {v0}, Lcom/facebook/Session;->a()Z
move-result v1
if-nez v1, :cond_2d
invoke-virtual {v0}, Lcom/facebook/Session;->b()Z
move-result v1
if-eqz v1, :cond_35
:cond_2d
invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/c;->a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:cond_35
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->e:Z
if-eqz v0, :cond_69
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity;
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v1
if-nez v1, :cond_56
const-string v1, "Facebook session was null, ohlson was wrong. Remove me."
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
new-instance v1, Lcom/facebook/Session;
invoke-direct {v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V
invoke-static {v1}, Lcom/facebook/Session;->a(Lcom/facebook/Session;)V
:cond_56
invoke-virtual {v1}, Lcom/facebook/Session;->a()Z
move-result v2
if-nez v2, :cond_7e
invoke-virtual {v1}, Lcom/facebook/Session;->b()Z
move-result v1
if-nez v1, :cond_7e
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->f:Lcom/facebook/ae;
:try_start_64
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/at;->a(Landroid/support/v4/app/Fragment;Lcom/facebook/ae;)V
:try_end_67
.catch Ljava/lang/UnsupportedOperationException; {:try_start_64 .. :try_end_67} :catch_6f
:goto_67
iput-boolean v4, p0, Lcom/spotify/mobile/android/service/flow/login/c;->e:Z
:cond_69
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-virtual {v0}, Lcom/facebook/ak;->a()V
goto :goto_1a
:catch_6f
move-exception v1
const-string v2, "error requesting read permissions"
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->i(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/c;->E()V
goto :goto_67
:cond_7e
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/c;->f:Lcom/facebook/ae;
invoke-static {v0, p0, v1}, Lcom/facebook/Session;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/facebook/ae;)Lcom/facebook/Session;
goto :goto_67
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
invoke-virtual {v0}, Lcom/facebook/ak;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->d:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c;->g:Lcom/facebook/ak;
return-void
.end method