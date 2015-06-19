.class public Lcom/spotify/mobile/android/service/flow/login/l;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"
.implements Lcom/google/android/gms/common/api/k;
.implements Lcom/google/android/gms/common/api/l;
.field private a:Landroid/view/View;
.field private b:Z
.field private c:Lcom/spotify/mobile/android/util/dw;
.field private d:Lcom/google/android/gms/common/api/i;
.field private e:Lcom/google/android/gms/common/a;
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->b:Z
return-void
.end method
.method private D()Ljava/lang/String;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;
iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v2, v3}, Lcom/google/android/gms/plus/a;->c(Lcom/google/android/gms/common/api/i;)Ljava/lang/String;
move-result-object v2
const-string v3, "oauth2:https://www.googleapis.com/auth/plus.login email"
invoke-static {v1, v2, v3}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_12
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_29
.catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_1 .. :try_end_12} :catch_14
.catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_12} :catch_27
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_20
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a()Landroid/content/Intent;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Landroid/content/Intent;I)V
const-string v0, ""
goto :goto_13
:catch_20
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_27
move-exception v1
goto :goto_13
:catch_29
move-exception v1
goto :goto_13
.end method
.method private E()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->g:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->f:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->c()Z
move-result v0
if-eqz v0, :cond_14
sget-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0, v1}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/api/i;)V
:cond_14
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->F()V
return-void
.end method
.method private F()V
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->q()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V
:goto_11
return-void
:cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->i:Z
goto :goto_11
.end method
.method private G()Lcom/spotify/mobile/android/service/flow/login/m;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/m;
return-object v0
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/l;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/l;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/l;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "isSignUpFlow"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->c_(Landroid/os/Bundle;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/l;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->D()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "creation_point"
const-string v2, "client_mobile"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "creation_flow"
const-string v2, "google"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "google_access_token"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "https://tpls.spotify.com/"
invoke-static {v1}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;
move-result-object v1
const-string v2, "api/user/create"
new-instance v3, Lcom/spotify/mobile/android/service/flow/login/l$1;
invoke-direct {v3, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/l$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V
invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "isSignUpFlow"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->G()Lcom/spotify/mobile/android/service/flow/login/m;
move-result-object v1
invoke-interface {v1, p1, p2, v0}, Lcom/spotify/mobile/android/service/flow/login/m;->a(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public static b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/l;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/l;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/l;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "isSignUpFlow"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->c_(Landroid/os/Bundle;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/l;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->E()V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "grant_type"
const-string v2, "spotify:oauth:grant_type:google_access_token"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "client_id"
const-string v2, "b3657d2c63f44ceb9f9d74ba0b54b7c1"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "scope"
const-string v2, "streaming"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "access_token"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "https://tpls.spotify.com/"
invoke-static {v1}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;
move-result-object v1
const-string v2, "api/token"
new-instance v3, Lcom/spotify/mobile/android/service/flow/login/l$2;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/service/flow/login/l$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/l;)V
invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V
return-void
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
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->a:Landroid/view/View;
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->f:Z
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 7
const/4 v2, -0x1
const/4 v1, 0x0
if-nez p1, :cond_1a
if-ne p2, v2, :cond_16
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->h:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->d()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
:cond_15
:goto_15
return-void
:cond_16
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->E()V
goto :goto_15
:cond_1a
const/4 v0, 0x1
if-ne p1, v0, :cond_15
if-ne p2, v2, :cond_40
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->c()Z
move-result v0
if-eqz v0, :cond_32
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/n;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/flow/login/n;-><init>(Lcom/spotify/mobile/android/service/flow/login/l;B)V
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_15
:cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->d()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
goto :goto_15
:cond_40
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->E()V
goto :goto_15
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->s()V
new-instance v0, Lcom/google/android/gms/common/api/j;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/j;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/j;
move-result-object v0
sget-object v1, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;
new-instance v2, Lcom/google/android/gms/plus/f;
invoke-direct {v2}, Lcom/google/android/gms/plus/f;-><init>()V
invoke-virtual {v2}, Lcom/google/android/gms/plus/f;->a()Lcom/google/android/gms/plus/e;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/j;
move-result-object v0
sget-object v1, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/q;
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/j;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/common/api/j;->a()Lcom/google/android/gms/common/api/i;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->S:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->c:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 4
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->h:Z
if-nez v0, :cond_24
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->e:Lcom/google/android/gms/common/a;
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->g:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->e:Lcom/google/android/gms/common/a;
invoke-virtual {v0}, Lcom/google/android/gms/common/a;->a()Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
:try_start_13
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->h:Z
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->e:Lcom/google/android/gms/common/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v1, v0}, Lcom/google/android/gms/common/a;->a(Landroid/app/Activity;)V
:try_end_24
.catch Landroid/content/IntentSender$SendIntentException; {:try_start_13 .. :try_end_24} :catch_25
:goto_24
:cond_24
return-void
:catch_25
move-exception v0
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->h:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
goto :goto_24
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/login/p;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/service/flow/login/p;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "Arguments not set for GoogleSignInFragment, you must use the create methods to instantiate"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "isSignUpFlow"
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->b:Z
if-nez v1, :cond_42
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->b()Z
move-result v1
if-eqz v1, :cond_42
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->b:Z
if-eqz v0, :cond_42
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v2, "should_show_trial_start_notice"
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_42
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->b:Z
if-eqz v1, :cond_4f
if-eqz v0, :cond_50
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->G()Lcom/spotify/mobile/android/service/flow/login/m;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/m;->a()V
:goto_4f
:cond_4f
return-void
:cond_50
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->G()Lcom/spotify/mobile/android/service/flow/login/m;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/m;->b()V
goto :goto_4f
.end method
.method protected final a(Lcom/spotify/mobile/android/util/SpotifyError;)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/util/SpotifyError;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->q()Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->a:Landroid/view/View;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->a:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_16
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyError;->H:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyError;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0, v3}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Landroid/content/Intent;I)V
goto :goto_a
:cond_2d
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
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
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->b(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_67
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->F()V
goto :goto_a
:cond_76
move-object v0, v1
goto :goto_67
.end method
.method public final a_(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
return-void
.end method
.method public final a_(Landroid/os/Bundle;)V
.registers 4
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->g:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->a:Landroid/view/View;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->a:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_c
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/n;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/flow/login/n;-><init>(Lcom/spotify/mobile/android/service/flow/login/l;B)V
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final x()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->c:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->i:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->i:Z
:goto_1a
:cond_1a
return-void
:cond_1b
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->f:Z
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->d()Z
move-result v0
if-nez v0, :cond_2f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->g:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
:cond_2f
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/l;->f:Z
goto :goto_1a
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->c:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->c()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l;->d:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->b()V
:cond_10
const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/g;->a()V
return-void
.end method