.class public final Lcom/spotify/mobile/android/service/flow/logic/f;
.super Lcom/spotify/mobile/android/service/flow/logic/d;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/o;
.implements Lcom/spotify/mobile/android/util/cf;
.field private static final ac:Lcom/spotify/mobile/android/util/cz;
.field private Y:Lcom/spotify/mobile/android/service/flow/logic/c;
.field private Z:Z
.field private a:Lcom/spotify/mobile/android/service/flow/logic/e;
.field private aa:Lcom/spotify/mobile/android/service/flow/logic/g;
.field private ab:Z
.field private ad:Landroid/content/BroadcastReceiver;
.field private ae:Landroid/support/v4/app/z;
.field private b:Lcom/spotify/mobile/android/service/connections/n;
.field private c:Lcom/spotify/mobile/android/service/connections/o;
.field private d:Lcom/spotify/mobile/android/service/flow/logic/k;
.field private e:Lcom/spotify/mobile/android/util/ce;
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.method static constructor <clinit>()V
.registers 1
const-string v0, "login_with_stored_credentials_on_next_start"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/f;->ac:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;-><init>()V
const-class v0, Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/c;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/g;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/g;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->aa:Lcom/spotify/mobile/android/service/flow/logic/g;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ab:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$1;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ad:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$8;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$8;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ae:Landroid/support/v4/app/z;
const-class v0, Lcom/spotify/mobile/android/service/flow/login/c;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$9;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$9;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/l;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$10;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$10;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/ag;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$11;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$11;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$12;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$12;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/a;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$13;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$13;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/q;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$14;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$14;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/t;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$15;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$15;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/logic/h;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$16;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$16;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method public static F()Lcom/spotify/mobile/android/service/flow/logic/f;
.registers 1
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;-><init>()V
return-object v0
.end method
.method private H()Z
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/f;->ac:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v0
return v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 4
invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/f;->ac:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/service/connections/o;)V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->f:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->c:Lcom/spotify/mobile/android/service/connections/o;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->f:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->b:Lcom/spotify/mobile/android/service/connections/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/n;->h()Lcom/spotify/mobile/android/service/p;
move-result-object v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->b:Lcom/spotify/mobile/android/service/connections/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/n;->a()V
goto :goto_4
:cond_18
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/connections/o;->a(Lcom/spotify/mobile/android/service/p;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->f:Z
goto :goto_4
.end method
.method private static a(Lcom/spotify/mobile/android/service/flow/FlowActivity;)Z
.registers 4
const/4 v0, 0x0
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a()Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_13
const-string v2, "extra_anonymous_signup"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_13
const/4 v0, 0x1
:cond_13
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/logic/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ab:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->a:Lcom/spotify/mobile/android/service/flow/logic/e;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/k;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->d:Lcom/spotify/mobile/android/service/flow/logic/k;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/flow/logic/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
return v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->d()I
move-result v0
packed-switch v0, :pswitch_data_26
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->f()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->aa:Lcom/spotify/mobile/android/service/flow/logic/g;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/g;->sendEmptyMessage(I)Z
:goto_14
return-void
:pswitch_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;)V
goto :goto_14
:pswitch_1f
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->aa:Lcom/spotify/mobile/android/service/flow/logic/g;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/g;->sendEmptyMessage(I)Z
goto :goto_14
:pswitch_data_26
.packed-switch 0x1
:pswitch_15
:pswitch_1f
.end packed-switch
.end method
.method static synthetic g(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->aa:Lcom/spotify/mobile/android/service/flow/logic/g;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/service/flow/logic/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Z:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->a()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;)V
:goto_11
:cond_11
return-void
:cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->d()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_11
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;-><init>()V
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$7;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$7;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->a(Lcom/spotify/mobile/android/service/flow/logic/a;)V
goto :goto_11
.end method
.method static synthetic j(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 5
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->g:Z
if-nez v0, :cond_34
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->g:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->H()Z
move-result v1
if-eqz v1, :cond_34
const-string v1, "Login with stored credentials"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean v3, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/f$5;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/f$5;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/connections/o;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/f;->ac:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_34
return-void
.end method
.method public final G()Lcom/spotify/mobile/android/util/ce;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->e:Lcom/spotify/mobile/android/util/ce;
return-object v0
.end method
.method public final a()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c()Lcom/spotify/mobile/android/service/flow/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/o;
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->W:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyError;->a()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/o;->c(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->f:Z
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 7
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a()Landroid/content/Intent;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/service/flow/logic/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->a:Lcom/spotify/mobile/android/service/flow/logic/e;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/service/flow/logic/k;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->d:Lcom/spotify/mobile/android/service/flow/logic/k;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Y:Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->e()Z
move-result v1
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/flow/FlowActivity;)Z
move-result v2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->H()Z
move-result v3
if-eqz v1, :cond_8c
if-nez v2, :cond_8c
if-nez v3, :cond_8c
const/4 v1, 0x1
:goto_3b
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Z:Z
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->d:Lcom/spotify/mobile/android/service/flow/logic/k;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/k;->a()Lcom/spotify/mobile/android/service/flow/logic/l;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/util/ce;
invoke-direct {v2, p0, v1}, Lcom/spotify/mobile/android/util/ce;-><init>(Lcom/spotify/mobile/android/util/cf;Lcom/spotify/mobile/android/service/flow/logic/l;)V
iput-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->e:Lcom/spotify/mobile/android/util/ce;
if-nez p1, :cond_62
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->d:Lcom/spotify/mobile/android/service/flow/logic/k;
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/service/flow/logic/k;->a(Lcom/spotify/mobile/android/service/flow/logic/l;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/l;->a()Z
move-result v2
if-eqz v2, :cond_8e
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/l;->b()Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1, v4}, Lcom/spotify/mobile/android/service/flow/logic/h;->a(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/a;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
:cond_62
:goto_62
new-instance v1, Lcom/spotify/mobile/android/service/connections/n;
invoke-direct {v1, v0, p0}, Lcom/spotify/mobile/android/service/connections/n;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/connections/o;)V
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->b:Lcom/spotify/mobile/android/service/connections/n;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->b:Lcom/spotify/mobile/android/service/connections/n;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/connections/n;->a()V
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.spotify.mobile.android.service.broadcast.session.LOGIN_ERROR"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
const-string v2, "android.intent.category.DEFAULT"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ad:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0181
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ae:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
:cond_8c
const/4 v1, 0x0
goto :goto_3b
:cond_8e
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->Z:Z
if-eqz v1, :cond_9a
invoke-static {p0}, Lcom/spotify/mobile/android/service/flow/login/a;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/a;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
goto :goto_62
:cond_9a
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/flow/FlowActivity;)Z
move-result v1
invoke-static {p0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;Z)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
goto :goto_62
.end method
.method public final a(Lcom/spotify/mobile/android/service/p;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->c:Lcom/spotify/mobile/android/service/connections/o;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->c:Lcom/spotify/mobile/android/service/connections/o;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/connections/o;->a(Lcom/spotify/mobile/android/service/p;)V
:cond_9
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->f:Z
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->h:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->h:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$6;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/flow/logic/f$6;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/connections/o;)V
goto :goto_4
.end method
.method protected final a(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
iput-boolean p3, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$2;
invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/logic/f$2;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/connections/o;)V
return-void
.end method
.method public final a(ZLjava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c()Lcom/spotify/mobile/android/service/flow/a;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/service/flow/login/o;
if-eqz v1, :cond_d
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/o;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/o;->a(ZLjava/lang/String;)V
:cond_d
return-void
.end method
.method protected final b(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
iput-boolean p3, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$3;
invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/logic/f$3;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/connections/o;)V
return-void
.end method
.method protected final c(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
iput-boolean p3, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->i:Z
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/f$4;
invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/logic/f$4;-><init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Lcom/spotify/mobile/android/service/connections/o;)V
return-void
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->r_()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ab:Z
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->s_()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ab:Z
return-void
.end method
.method public final z()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->b:Lcom/spotify/mobile/android/service/connections/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/n;->b()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->ad:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->e:Lcom/spotify/mobile/android/util/ce;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->e:Lcom/spotify/mobile/android/util/ce;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ce;->a()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f;->e:Lcom/spotify/mobile/android/util/ce;
:cond_1a
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->z()V
return-void
.end method