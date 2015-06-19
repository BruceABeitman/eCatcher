.class final Lcom/blackberry/ids/IDS$14;
.super Ljava/lang/Object;
.source "IDS.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/blackberry/ids/RequestId;
.field final synthetic b:Ljava/lang/Object;
.field final synthetic c:Lcom/blackberry/ids/IChallengeCallback;
.field final synthetic d:Lcom/blackberry/ids/IFailureCallback;
.method constructor <init>(Lcom/blackberry/ids/RequestId;Ljava/lang/Object;Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V
.registers 5
iput-object p1, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
iput-object p2, p0, Lcom/blackberry/ids/IDS$14;->b:Ljava/lang/Object;
iput-object p3, p0, Lcom/blackberry/ids/IDS$14;->c:Lcom/blackberry/ids/IChallengeCallback;
iput-object p4, p0, Lcom/blackberry/ids/IDS$14;->d:Lcom/blackberry/ids/IFailureCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const-string v0, "enter do_VerifyEmail as runnable, request_id=%s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_d
iget-object v0, p0, Lcom/blackberry/ids/IDS$14;->b:Ljava/lang/Object;
iget-object v0, p0, Lcom/blackberry/ids/IDS$14;->c:Lcom/blackberry/ids/IChallengeCallback;
iget-object v1, p0, Lcom/blackberry/ids/IDS$14;->d:Lcom/blackberry/ids/IFailureCallback;
iget-object v2, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/IDS;->b(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
:try_end_18
.catchall {:try_start_d .. :try_end_18} :catchall_50
.catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_24
const-string v0, "exit do_VerifyEmail, request_id=%s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_23
return-void
:catch_24
move-exception v0
:try_start_25
const-string v1, "caught Throwable from do_VerifyEmail, request_id=%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/blackberry/ids/IDS$14;->d:Lcom/blackberry/ids/IFailureCallback;
iget-object v2, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
invoke-virtual {v2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc34f
invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v2, v3, v0}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_44
.catchall {:try_start_25 .. :try_end_44} :catchall_50
const-string v0, "exit do_VerifyEmail, request_id=%s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_23
:catchall_50
move-exception v0
const-string v1, "exit do_VerifyEmail, request_id=%s"
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p0, Lcom/blackberry/ids/IDS$14;->a:Lcom/blackberry/ids/RequestId;
aput-object v3, v2, v5
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method