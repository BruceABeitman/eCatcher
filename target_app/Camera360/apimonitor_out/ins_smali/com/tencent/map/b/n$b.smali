.class final Lcom/tencent/map/b/n$b;
.super Ljava/lang/Thread;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private synthetic d:Lcom/tencent/map/b/n;
.method public constructor <init>(Lcom/tencent/map/b/n;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
iput-object p1, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n$b;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/tencent/map/b/n$b;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/tencent/map/b/n$b;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/tencent/map/b/n;->h(Lcom/tencent/map/b/n;)I
move-result v0
if-nez v0, :cond_36
const-string/jumbo v0, "http://lstest.map.soso.com/loc?c=1"
:goto_1c
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "&mars="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Lcom/tencent/map/b/n;->i(Lcom/tencent/map/b/n;)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/map/b/n$b;->b:Ljava/lang/String;
return-void
:cond_36
const-string/jumbo v0, "http://lbs.map.qq.com/loc?c=1"
goto :goto_1c
.end method
.method private a([BLjava/lang/String;)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;J)J
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
:try_start_e
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_16
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_1b
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
:goto_1a
return-object v0
:catch_1b
move-exception v0
const/4 v0, 0x0
goto :goto_1a
.end method
.method public final run()V
.registers 8
const/4 v6, 0x1
const/4 v1, 0x0
new-instance v2, Landroid/os/Message;
invoke-direct {v2}, Landroid/os/Message;-><init>()V
const/16 v0, 0x8
iput v0, v2, Landroid/os/Message;->what:I
:try_start_b
iget-object v0, p0, Lcom/tencent/map/b/n$b;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-static {v0}, Lcom/tencent/map/b/r;->a([B)[B
move-result-object v0
iget-object v3, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
const/4 v4, 0x1
invoke-static {v3, v4}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Z)Z
iget-object v3, p0, Lcom/tencent/map/b/n$b;->b:Ljava/lang/String;
const-string/jumbo v4, "SOSO MAP LBS SDK"
invoke-static {v3, v4, v0}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/u;
move-result-object v0
iget-object v3, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
const/4 v4, 0x0
invoke-static {v3, v4}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Z)Z
iget-object v3, v0, Lcom/tencent/map/b/u;->a:[B
invoke-static {v3}, Lcom/tencent/map/b/r;->b([B)[B
move-result-object v3
iget-object v0, v0, Lcom/tencent/map/b/u;->b:Ljava/lang/String;
invoke-direct {p0, v3, v0}, Lcom/tencent/map/b/n$b;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
if-eqz v0, :cond_52
const/4 v0, 0x0
iput v0, v2, Landroid/os/Message;->arg1:I
iget-object v0, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
:goto_43
:try_end_43
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_56
iget-object v0, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->j(Lcom/tencent/map/b/n;)V
iget-object v0, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->d(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/n$a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
return-void
:cond_52
const/4 v0, 0x1
:try_start_53
iput v0, v2, Landroid/os/Message;->arg1:I
:try_end_55
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_55} :catch_56
goto :goto_43
:catch_56
move-exception v0
move v0, v1
:goto_58
add-int/lit8 v0, v0, 0x1
const/4 v3, 0x3
if-gt v0, v3, :cond_a1
const-wide/16 v3, 0x3e8
:try_start_5f
invoke-static {v3, v4}, Lcom/tencent/map/b/n$b;->sleep(J)V
iget-object v3, p0, Lcom/tencent/map/b/n$b;->a:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/tencent/map/b/r;->a([B)[B
move-result-object v3
iget-object v4, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
const/4 v5, 0x1
invoke-static {v4, v5}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Z)Z
iget-object v4, p0, Lcom/tencent/map/b/n$b;->b:Ljava/lang/String;
const-string/jumbo v5, "SOSO MAP LBS SDK"
invoke-static {v4, v5, v3}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/u;
move-result-object v3
iget-object v4, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
const/4 v5, 0x0
invoke-static {v4, v5}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Z)Z
iget-object v4, v3, Lcom/tencent/map/b/u;->a:[B
invoke-static {v4}, Lcom/tencent/map/b/r;->b([B)[B
move-result-object v4
iget-object v3, v3, Lcom/tencent/map/b/u;->b:Ljava/lang/String;
invoke-direct {p0, v4, v3}, Lcom/tencent/map/b/n$b;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
if-eqz v3, :cond_9d
const/4 v3, 0x0
iput v3, v2, Landroid/os/Message;->arg1:I
iget-object v3, p0, Lcom/tencent/map/b/n$b;->c:Ljava/lang/String;
iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
goto :goto_58
:catch_9b
move-exception v3
goto :goto_58
:cond_9d
const/4 v3, 0x1
iput v3, v2, Landroid/os/Message;->arg1:I
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_5f .. :try_end_a0} :catch_9b
goto :goto_58
:cond_a1
iget-object v0, p0, Lcom/tencent/map/b/n$b;->d:Lcom/tencent/map/b/n;
invoke-static {v0, v1}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Z)Z
iput v6, v2, Landroid/os/Message;->arg1:I
goto :goto_43
.end method