.class  Lcom/ubermedia/net/b/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/ubermedia/net/b/b;
.field final synthetic b:Lcom/ubermedia/net/b/a;
.method constructor <init>(Lcom/ubermedia/net/b/a;Lcom/ubermedia/net/b/b;)V
.registers 3
iput-object p1, p0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;
iput-object p2, p0, Lcom/ubermedia/net/b/a$1;->a:Lcom/ubermedia/net/b/b;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 7
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
:try_start_4
:goto_4
iget-object v2, p0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;
invoke-static {v2}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;)Landroid/os/Handler;
move-result-object v2
new-instance v3, Lcom/ubermedia/net/b/a$1$1;
invoke-direct {v3, p0, v2}, Lcom/ubermedia/net/b/a$1$1;-><init>(Lcom/ubermedia/net/b/a$1;Landroid/os/Handler;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_12
:try_end_12
.catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_12} :catch_2a
iget-object v2, p0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;
invoke-static {v2}, Lcom/ubermedia/net/b/a;->c(Lcom/ubermedia/net/b/a;)Z
move-result v2
if-nez v2, :cond_25
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
sub-long/2addr v2, v0
const-wide/16 v4, 0x2710
cmp-long v2, v2, v4
if-lez v2, :cond_26
:cond_25
return-void
:cond_26
invoke-static {}, Ljava/lang/Thread;->yield()V
goto :goto_4
:catch_2a
move-exception v2
goto :goto_12
.end method