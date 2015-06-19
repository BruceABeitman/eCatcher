.class public Lorg/apache/log4j/r;
.super Lorg/apache/log4j/ap;
.source "SourceFile"
.field protected t:Z
.field protected u:Ljava/lang/String;
.field protected v:Z
.field protected w:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/ap;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/r;->t:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/r;->v:Z
const/16 v0, 0x2000
iput v0, p0, Lorg/apache/log4j/r;->w:I
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/r;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;Z)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lorg/apache/log4j/ap;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/r;->t:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
iput-boolean v1, p0, Lorg/apache/log4j/r;->v:Z
const/16 v0, 0x2000
iput v0, p0, Lorg/apache/log4j/r;->w:I
iput-object p1, p0, Lorg/apache/log4j/r;->b:Lorg/apache/log4j/u;
iget v0, p0, Lorg/apache/log4j/r;->w:I
invoke-virtual {p0, p2, p3, v1, v0}, Lorg/apache/log4j/r;->a(Ljava/lang/String;ZZI)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;ZZI)V
.registers 7
invoke-direct {p0}, Lorg/apache/log4j/ap;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/r;->t:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/r;->v:Z
const/16 v0, 0x2000
iput v0, p0, Lorg/apache/log4j/r;->w:I
iput-object p1, p0, Lorg/apache/log4j/r;->b:Lorg/apache/log4j/u;
invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/log4j/r;->a(Ljava/lang/String;ZZI)V
return-void
.end method
.method protected a(Ljava/io/Writer;)V
.registers 4
new-instance v0, Lorg/apache/log4j/c/aa;
iget-object v1, p0, Lorg/apache/log4j/r;->e:Lorg/apache/log4j/k/e;
invoke-direct {v0, p1, v1}, Lorg/apache/log4j/c/aa;-><init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V
iput-object v0, p0, Lorg/apache/log4j/r;->z:Lorg/apache/log4j/c/aa;
return-void
.end method
.method public declared-synchronized a(Ljava/lang/String;ZZI)V
.registers 8
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "setFile called: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
if-eqz p3, :cond_27
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lorg/apache/log4j/r;->c(Z)V
:cond_27
invoke-virtual {p0}, Lorg/apache/log4j/r;->t()V
:try_end_2a
.catchall {:try_start_1 .. :try_end_2a} :catchall_72
:try_start_2a
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
:try_start_2f
:goto_2f
:try_end_2f
.catchall {:try_start_2a .. :try_end_2f} :catchall_72
.catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2f} :catch_4f
invoke-virtual {p0, v0}, Lorg/apache/log4j/r;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
move-result-object v1
if-eqz p3, :cond_77
new-instance v0, Ljava/io/BufferedWriter;
invoke-direct {v0, v1, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
:goto_3a
invoke-virtual {p0, v0}, Lorg/apache/log4j/r;->a(Ljava/io/Writer;)V
iput-object p1, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
iput-boolean p2, p0, Lorg/apache/log4j/r;->t:Z
iput-boolean p3, p0, Lorg/apache/log4j/r;->v:Z
iput p4, p0, Lorg/apache/log4j/r;->w:I
invoke-virtual {p0}, Lorg/apache/log4j/r;->y()V
const-string v0, "setFile ended"
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
:try_end_4d
.catchall {:try_start_2f .. :try_end_4d} :catchall_72
monitor-exit p0
return-void
:catch_4f
move-exception v0
:try_start_50
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_76
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
move-result v1
if-eqz v1, :cond_75
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
:try_end_71
.catchall {:try_start_50 .. :try_end_71} :catchall_72
goto :goto_2f
:catchall_72
move-exception v0
monitor-exit p0
throw v0
:try_start_75
:cond_75
throw v0
:cond_76
throw v0
:try_end_77
.catchall {:try_start_75 .. :try_end_77} :catchall_72
:cond_77
move-object v0, v1
goto :goto_3a
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/r;->t:Z
return-void
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lorg/apache/log4j/r;->w:I
return-void
.end method
.method public b(Z)V
.registers 3
iput-boolean p1, p0, Lorg/apache/log4j/r;->v:Z
if-eqz p1, :cond_7
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/r;->x:Z
:cond_7
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
return-void
.end method
.method public i()V
.registers 5
iget-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
if-eqz v0, :cond_3f
:try_start_4
iget-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
iget-boolean v1, p0, Lorg/apache/log4j/r;->t:Z
iget-boolean v2, p0, Lorg/apache/log4j/r;->v:Z
iget v3, p0, Lorg/apache/log4j/r;->w:I
invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/log4j/r;->a(Ljava/lang/String;ZZI)V
:goto_f
:try_end_f
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
iget-object v1, p0, Lorg/apache/log4j/r;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "setFile("
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-boolean v3, p0, Lorg/apache/log4j/r;->t:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, ") call failed."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x4
invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
goto :goto_f
:cond_3f
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "File option not set for appender ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/r;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
const-string v0, "Are you using FileAppender instead of ConsoleAppender?"
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
goto :goto_f
.end method
.method public o()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/r;->t:Z
return v0
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
return-object v0
.end method
.method protected q()V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/r;->z:Lorg/apache/log4j/c/aa;
if-eqz v0, :cond_9
:try_start_4
iget-object v0, p0, Lorg/apache/log4j/r;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v0}, Lorg/apache/log4j/c/aa;->close()V
:try_end_9
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a
:goto_9
:cond_9
return-void
:catch_a
move-exception v0
instance-of v1, v0, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_16
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_16
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not close "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/r;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public r()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/r;->v:Z
return v0
.end method
.method public s()I
.registers 2
iget v0, p0, Lorg/apache/log4j/r;->w:I
return v0
.end method
.method protected t()V
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/r;->q()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/r;->u:Ljava/lang/String;
invoke-super {p0}, Lorg/apache/log4j/ap;->t()V
return-void
.end method