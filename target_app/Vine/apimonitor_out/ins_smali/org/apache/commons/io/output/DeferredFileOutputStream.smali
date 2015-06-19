.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"
.field private closed:Z
.field private currentOutputStream:Ljava/io/OutputStream;
.field private final directory:Ljava/io/File;
.field private memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
.field private outputFile:Ljava/io/File;
.field private final prefix:Ljava/lang/String;
.field private final suffix:Ljava/lang/String;
.method public constructor <init>(ILjava/io/File;)V
.registers 9
const/4 v3, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
return-void
.end method
.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.registers 7
invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z
iput-object p2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;
new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;
iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;
iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;
iput-object p5, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.registers 11
const/4 v2, 0x0
move-object v0, p0
move v1, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
if-nez p2, :cond_13
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Temporary file prefix is missing"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
return-void
.end method
.method public close()V
.registers 2
invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z
return-void
.end method
.method public getData()[B
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getFile()Ljava/io/File;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;
return-object v0
.end method
.method protected getStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;
return-object v0
.end method
.method public isInMemory()Z
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected thresholdReached()V
.registers 5
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;
if-eqz v1, :cond_10
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;
iget-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;
invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v1
iput-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;
:cond_10
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;
const/4 v1, 0x0
iput-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 5
iget-boolean v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z
if-nez v1, :cond_c
new-instance v1, Ljava/io/IOException;
const-string v2, "Stream not closed"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c
invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-virtual {v1, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
:goto_17
return-void
:cond_18
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_1f
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_26
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
goto :goto_17
:catchall_26
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v1
.end method