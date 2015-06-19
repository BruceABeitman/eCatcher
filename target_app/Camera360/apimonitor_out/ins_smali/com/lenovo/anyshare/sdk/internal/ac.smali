.class public Lcom/lenovo/anyshare/sdk/internal/ac;
.super Lcom/lenovo/anyshare/sdk/internal/cr;
.source "DownloadManager.java"
.implements Lcom/lenovo/anyshare/sdk/internal/cn;
.field private d:Lorg/apache/http/client/HttpClient;
.field private e:Lcom/lenovo/anyshare/sdk/internal/ab$a;
.field private f:Lcom/lenovo/anyshare/sdk/internal/co;
.field private g:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
.method public constructor <init>()V
.registers 4
const/16 v2, 0x3a98
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cr;-><init>()V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ac$1;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/ac$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/ac;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->g:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ab$a;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->g:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
invoke-direct {v0, v2, v2, v1}, Lcom/lenovo/anyshare/sdk/internal/ab$a;-><init>(IILcom/lenovo/anyshare/sdk/internal/ab$a$a;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->e:Lcom/lenovo/anyshare/sdk/internal/ab$a;
invoke-virtual {p0, p0}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Lcom/lenovo/anyshare/sdk/internal/cn;)V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ae;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/ae;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->f:Lcom/lenovo/anyshare/sdk/internal/co;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->f:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Lcom/lenovo/anyshare/sdk/internal/co;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/ac;Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
.registers 6
invoke-virtual/range {p0 .. p5}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
return-void
.end method
.method public a()V
.registers 2
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/cr;->c()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ac;->b()V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->f:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/co;->a()V
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;)V
.registers 6
instance-of v2, p1, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v1, p1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->e:Lcom/lenovo/anyshare/sdk/internal/ab$a;
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ab;->a(Ljava/lang/Class;Lcom/lenovo/anyshare/sdk/internal/ab$a;)Lcom/lenovo/anyshare/sdk/internal/ab;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ab;->a(Lcom/lenovo/anyshare/sdk/internal/ad;)V
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ab;->b()V
return-void
.end method
.method protected declared-synchronized b()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->d:Lorg/apache/http/client/HttpClient;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->d:Lorg/apache/http/client/HttpClient;
invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ac;->d:Lorg/apache/http/client/HttpClient;
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
:cond_11
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method