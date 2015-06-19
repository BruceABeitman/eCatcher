.class final Lcom/spotify/mobile/android/service/flow/login/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/q;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/c;
.method private constructor <init>(Lcom/spotify/mobile/android/service/flow/login/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/flow/login/c;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/e;-><init>(Lcom/spotify/mobile/android/service/flow/login/c;)V
return-void
.end method
.method public final a(Lcom/facebook/model/GraphUser;Lcom/facebook/aa;)V
.registers 8
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/c;->a(Lcom/spotify/mobile/android/service/flow/login/c;)Z
if-eqz p1, :cond_34
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-nez v0, :cond_16
const-string v0, "Unable to login, facebook session was null"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_15
:goto_15
return-void
:cond_16
invoke-virtual {v0}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/flow/login/c;->h()Landroid/os/Bundle;
move-result-object v2
const-string v3, "isSignUpFlow"
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/flow/login/c;->D()Lcom/spotify/mobile/android/service/flow/login/d;
move-result-object v3
invoke-interface {v3, v1, v0, v2}, Lcom/spotify/mobile/android/service/flow/login/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_15
:cond_34
if-eqz p2, :cond_3c
invoke-virtual {p2}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;
move-result-object v0
if-nez v0, :cond_4d
:goto_3c
:cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_15
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->i(Landroid/content/Context;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/e;->a:Lcom/spotify/mobile/android/service/flow/login/c;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/c;->b(Lcom/spotify/mobile/android/service/flow/login/c;)V
goto :goto_15
:cond_4d
invoke-virtual {p2}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3c
.end method