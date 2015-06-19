.class public abstract Lorg/apache/log4j/c/h;
.super Ljava/lang/Thread;
.source "SourceFile"
.field public static final a:J = 0xea60L
.field protected b:Ljava/lang/String;
.field protected c:J
.field  d:Ljava/io/File;
.field  e:J
.field  f:Z
.field  g:Z
.method protected constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
const-string v0, "FileWatchdog"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
const-wide/32 v0, 0xea60
iput-wide v0, p0, Lorg/apache/log4j/c/h;->c:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/log4j/c/h;->e:J
iput-boolean v2, p0, Lorg/apache/log4j/c/h;->f:Z
iput-boolean v2, p0, Lorg/apache/log4j/c/h;->g:Z
iput-object p1, p0, Lorg/apache/log4j/c/h;->b:Ljava/lang/String;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lorg/apache/log4j/c/h;->d:Ljava/io/File;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/apache/log4j/c/h;->setDaemon(Z)V
invoke-virtual {p0}, Lorg/apache/log4j/c/h;->b()V
return-void
.end method
.method protected abstract a()V
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lorg/apache/log4j/c/h;->c:J
return-void
.end method
.method protected b()V
.registers 5
const/4 v2, 0x1
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/c/h;->d:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
:try_end_6
.catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_1e
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lorg/apache/log4j/c/h;->d:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v0
iget-wide v2, p0, Lorg/apache/log4j/c/h;->e:J
cmp-long v2, v0, v2
if-lez v2, :cond_1d
iput-wide v0, p0, Lorg/apache/log4j/c/h;->e:J
invoke-virtual {p0}, Lorg/apache/log4j/c/h;->a()V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/c/h;->f:Z
:goto_1d
:cond_1d
return-void
:catch_1e
move-exception v0
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Was not allowed to read check file existance, file:["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/c/h;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
iput-boolean v2, p0, Lorg/apache/log4j/c/h;->g:Z
goto :goto_1d
:cond_40
iget-boolean v0, p0, Lorg/apache/log4j/c/h;->f:Z
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/c/h;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "] does not exist."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iput-boolean v2, p0, Lorg/apache/log4j/c/h;->f:Z
goto :goto_1d
.end method
.method public run()V
.registers 3
:goto_0
iget-boolean v0, p0, Lorg/apache/log4j/c/h;->g:Z
if-nez v0, :cond_d
:try_start_4
iget-wide v0, p0, Lorg/apache/log4j/c/h;->c:J
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_e
:goto_9
invoke-virtual {p0}, Lorg/apache/log4j/c/h;->b()V
goto :goto_0
:cond_d
return-void
:catch_e
move-exception v0
goto :goto_9
.end method