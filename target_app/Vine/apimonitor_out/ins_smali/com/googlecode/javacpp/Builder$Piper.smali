.class public Lcom/googlecode/javacpp/Builder$Piper;
.super Ljava/lang/Thread;
.source "Builder.java"
.field  is:Ljava/io/InputStream;
.field  os:Ljava/io/OutputStream;
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/googlecode/javacpp/Builder$Piper;->is:Ljava/io/InputStream;
iput-object p2, p0, Lcom/googlecode/javacpp/Builder$Piper;->os:Ljava/io/OutputStream;
return-void
.end method
.method public run()V
.registers 7
const/16 v3, 0x400
:try_start_2
new-array v0, v3, [B
:goto_4
iget-object v3, p0, Lcom/googlecode/javacpp/Builder$Piper;->is:Ljava/io/InputStream;
invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_31
iget-object v3, p0, Lcom/googlecode/javacpp/Builder$Piper;->os:Ljava/io/OutputStream;
const/4 v4, 0x0
invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
:try_end_13
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_4
:catch_14
move-exception v1
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Could not pipe from the InputStream to the OutputStream: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_31
return-void
.end method