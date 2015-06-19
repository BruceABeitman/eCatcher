.class public Lorg/apache/log4j/g/n;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.field private a:Lorg/apache/log4j/g/o;
.field private i:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
const/16 v0, 0x17
iput v0, p0, Lorg/apache/log4j/g/n;->i:I
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
if-eqz v0, :cond_e
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
invoke-virtual {v0}, Lorg/apache/log4j/g/o;->a()V
:try_start_9
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
invoke-virtual {v0}, Lorg/apache/log4j/g/o;->join()V
:try_end_e
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
:cond_e
:goto_e
return-void
:catch_f
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
goto :goto_e
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lorg/apache/log4j/g/n;->i:I
return-void
.end method
.method protected a(Lorg/apache/log4j/k/k;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
if-eqz v0, :cond_3c
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
iget-object v1, p0, Lorg/apache/log4j/g/n;->b:Lorg/apache/log4j/u;
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/g/o;->a(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/g/n;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->b()Z
move-result v0
if-eqz v0, :cond_3c
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3c
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_23
array-length v3, v1
if-ge v0, v3, :cond_33
aget-object v3, v1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_33
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/g/o;->a(Ljava/lang/String;)V
:cond_3c
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lorg/apache/log4j/g/n;->i:I
return v0
.end method
.method public i()V
.registers 3
:try_start_0
new-instance v0, Lorg/apache/log4j/g/o;
iget v1, p0, Lorg/apache/log4j/g/n;->i:I
invoke-direct {v0, p0, v1}, Lorg/apache/log4j/g/o;-><init>(Lorg/apache/log4j/g/n;I)V
iput-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
iget-object v0, p0, Lorg/apache/log4j/g/n;->a:Lorg/apache/log4j/g/o;
invoke-virtual {v0}, Lorg/apache/log4j/g/o;->start()V
:goto_e
:try_end_e
.catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_e} :catch_12
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_1e
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_23
invoke-super {p0}, Lorg/apache/log4j/b;->i()V
return-void
:catch_12
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V
goto :goto_e
:catch_1e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_e
:catch_23
move-exception v0
invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
goto :goto_e
.end method