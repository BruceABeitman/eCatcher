.class final Lcom/instagram/common/e/c/b;
.super Ljava/lang/Object;
.source "IgVideoCache.java"
.implements Lcom/instagram/common/j/b;
.field final synthetic a:Lcom/instagram/common/e/c/a;
.field private final b:Lcom/instagram/common/e/a/g;
.field private c:I
.field private d:J
.field private e:Z
.field private f:Lcom/c/a/d;
.field private g:Ljava/io/BufferedOutputStream;
.field private h:Ljava/util/Set;
.method constructor <init>(Lcom/instagram/common/e/c/a;Lcom/instagram/common/e/a/g;)V
.registers 4
iput-object p1, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/e/c/b;->e:Z
iput-object p2, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
return-void
.end method
.method static synthetic a(Lcom/instagram/common/e/c/b;)Lcom/instagram/common/e/a/g;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/e/c/b;Lcom/instagram/common/e/c/d;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/e/c/b;->a(Lcom/instagram/common/e/c/d;)V
return-void
.end method
.method private declared-synchronized a(Lcom/instagram/common/e/c/d;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v1}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/c/a;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {p1}, Lcom/instagram/common/e/c/d;->f()V
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_28
:goto_12
monitor-exit p0
return-void
:cond_14
:try_start_14
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
if-nez v0, :cond_1f
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
:cond_1f
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-interface {p1}, Lcom/instagram/common/e/c/d;->e()V
:try_end_27
.catchall {:try_start_14 .. :try_end_27} :catchall_28
goto :goto_12
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/instagram/common/e/c/b;Lcom/instagram/common/e/c/d;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/e/c/b;->b(Lcom/instagram/common/e/c/d;)V
return-void
.end method
.method private declared-synchronized b(Lcom/instagram/common/e/c/d;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method private c()V
.registers 6
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/e/c/d;
iget-object v2, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-static {v2}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;)Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-static {v3}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;)Landroid/os/Handler;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_a
:cond_2b
return-void
.end method
.method private d()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
if-eqz v0, :cond_b
:try_start_6
iget-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
:cond_b
:goto_b
:try_end_b
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_3f
iget-object v0, p0, Lcom/instagram/common/e/c/b;->f:Lcom/c/a/d;
if-eqz v0, :cond_14
:try_start_f
iget-object v0, p0, Lcom/instagram/common/e/c/b;->f:Lcom/c/a/d;
invoke-virtual {v0}, Lcom/c/a/d;->c()V
:cond_14
:goto_14
:try_end_14
.catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_4e
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/instagram/common/e/c/b;->h:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/e/c/d;
iget-object v2, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-static {v2}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;)Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-static {v3}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;)Landroid/os/Handler;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_1e
:catch_3f
move-exception v0
const-string v0, "IgVideoCache"
const-string v1, "Couldn\'t close disk cache output stream for %s"
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
aput-object v3, v2, v4
invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_b
:catch_4e
move-exception v0
const-string v0, "IgVideoCache"
const-string v1, "Couldn\'t abort cache entry for %s"
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
aput-object v3, v2, v4
invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_14
:cond_5d
return-void
.end method
.method public final a()V
.registers 5
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/instagram/common/e/c/b;->d:J
sub-long/2addr v0, v2
const-wide/32 v2, 0xf4240
div-long/2addr v0, v2
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Video downloaded in "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "ms: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
iget v0, p0, Lcom/instagram/common/e/c/b;->c:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_60
iget-boolean v0, p0, Lcom/instagram/common/e/c/b;->e:Z
if-nez v0, :cond_60
:try_start_2b
iget-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
iget-object v0, p0, Lcom/instagram/common/e/c/b;->f:Lcom/c/a/d;
invoke-virtual {v0}, Lcom/c/a/d;->b()V
monitor-enter p0
:try_start_36
:try_end_36
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_49
invoke-direct {p0}, Lcom/instagram/common/e/c/b;->c()V
monitor-exit p0
:try_end_3a
.catchall {:try_start_36 .. :try_end_3a} :catchall_46
:goto_3a
iget-object v0, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v1}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;Ljava/lang/String;)V
return-void
:catchall_46
move-exception v0
:try_start_47
monitor-exit p0
throw v0
:catch_49
:try_end_49
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_49} :catch_49
move-exception v0
const-string v0, "IgVideoCache"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t store cache entry for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_60
invoke-direct {p0}, Lcom/instagram/common/e/c/b;->d()V
goto :goto_3a
.end method
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/StatusLine;)V
.registers 5
monitor-enter p0
:try_start_1
invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
iput v0, p0, Lcom/instagram/common/e/c/b;->c:I
iget v0, p0, Lcom/instagram/common/e/c/b;->c:I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_40
const/16 v1, 0xc8
if-ne v0, v1, :cond_32
:try_start_d
iget-object v0, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
invoke-static {v0}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/c/a;)Lcom/c/a/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v1}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/e/c/a;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/a/a;->c(Ljava/lang/String;)Lcom/c/a/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/e/c/b;->f:Lcom/c/a/d;
new-instance v0, Ljava/io/BufferedOutputStream;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->f:Lcom/c/a/d;
invoke-virtual {v1}, Lcom/c/a/d;->a()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
:goto_32
:cond_32
:try_end_32
.catchall {:try_start_d .. :try_end_32} :catchall_40
.catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_34
monitor-exit p0
return-void
:catch_34
move-exception v0
:try_start_35
const-string v1, "IgVideoCache"
const-string v2, "can\'t open disk cache entry for video "
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/common/e/c/b;->e:Z
:try_end_3f
.catchall {:try_start_35 .. :try_end_3f} :catchall_40
goto :goto_32
:catchall_40
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
.registers 4
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/e/c/b;->d:J
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Started downloading "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
iget-object v1, v1, Lcom/instagram/common/e/a/g;->d:Ljava/lang/String;
invoke-static {v0, p1, v1}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/c/a;Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
return-void
.end method
.method public final declared-synchronized a([BI)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_19
if-eqz v0, :cond_b
:try_start_5
iget-object v0, p0, Lcom/instagram/common/e/c/b;->g:Ljava/io/BufferedOutputStream;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
:try_end_b
.catchall {:try_start_5 .. :try_end_b} :catchall_19
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_d
:cond_b
:goto_b
monitor-exit p0
return-void
:catch_d
move-exception v0
:try_start_e
const-string v1, "IgVideoCache"
const-string v2, "can\'t write video cache "
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/common/e/c/b;->e:Z
:try_end_18
.catchall {:try_start_e .. :try_end_18} :catchall_19
goto :goto_b
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b()V
.registers 3
invoke-direct {p0}, Lcom/instagram/common/e/c/b;->d()V
iget-object v0, p0, Lcom/instagram/common/e/c/b;->a:Lcom/instagram/common/e/c/a;
iget-object v1, p0, Lcom/instagram/common/e/c/b;->b:Lcom/instagram/common/e/a/g;
invoke-virtual {v1}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/e/c/a;->b(Lcom/instagram/common/e/c/a;Ljava/lang/String;)V
return-void
.end method