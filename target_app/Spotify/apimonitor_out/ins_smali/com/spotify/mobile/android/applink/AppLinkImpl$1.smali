.class final Lcom/spotify/mobile/android/applink/AppLinkImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/applink/d;
.field final synthetic b:Z
.field final synthetic c:Z
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Ljava/lang/String;
.field final synthetic f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
.method constructor <init>(Lcom/spotify/mobile/android/applink/AppLinkImpl;Lcom/spotify/mobile/android/applink/d;ZZLjava/lang/String;Ljava/lang/String;)V
.registers 7
iput-object p1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
iput-object p2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->a:Lcom/spotify/mobile/android/applink/d;
iput-boolean p3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->b:Z
iput-boolean p4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->c:Z
iput-object p5, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->d:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->e:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 12
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/spotify/mobile/android/applink/SessionState;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
if-eq v0, v1, :cond_b
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->a:Lcom/spotify/mobile/android/applink/d;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/spotify/mobile/android/applink/AppLinkImpl;Lcom/spotify/mobile/android/applink/d;)I
move-result v10
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/rpc/be;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->b:Z
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Boolean;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->c:Z
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/rpc/be;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/applink/q;->b:Lcom/ford/syncV4/proxy/rpc/v;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/v;)V
:goto_31
:try_start_31
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->e(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/h;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->e:Ljava/lang/String;
const-string v3, ""
const-string v4, ""
sget-object v5, Lcom/spotify/mobile/android/applink/q;->a:Lcom/ford/syncV4/proxy/rpc/v;
iget-object v6, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->d(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Ljava/util/Vector;
move-result-object v6
new-instance v7, Ljava/util/Vector;
invoke-direct {v7}, Ljava/util/Vector;-><init>()V
sget-object v8, Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;->a:Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual/range {v0 .. v9}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/proxy/rpc/v;Ljava/util/Vector;Ljava/util/Vector;Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;Ljava/lang/Integer;)V
:try_end_55
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_31 .. :try_end_55} :catch_56
goto :goto_a
:catch_56
move-exception v0
const-string v1, "Failed to set now playing screen: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0, v10}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/spotify/mobile/android/applink/AppLinkImpl;I)V
goto :goto_a
:cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;->f:Lcom/spotify/mobile/android/applink/AppLinkImpl;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/rpc/be;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/applink/q;->a:Lcom/ford/syncV4/proxy/rpc/v;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/v;)V
goto :goto_31
.end method