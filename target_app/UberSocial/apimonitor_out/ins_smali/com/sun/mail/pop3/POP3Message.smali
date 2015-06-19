.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "SourceFile"
.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"
.field private folder:Lcom/sun/mail/pop3/POP3Folder;
.field private hdrSize:I
.field private msgSize:I
.field  uid:Ljava/lang/String;
.method public constructor <init>(Ljavax/mail/Folder;I)V
.registers 4
const/4 v0, -0x1
invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
const-string v0, "UNKNOWN"
iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
check-cast p1, Lcom/sun/mail/pop3/POP3Folder;
iput-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
return-void
.end method
.method private loadHeaders()V
.registers 5
const/4 v3, 0x0
:try_start_1
monitor-enter p0
:try_start_2
:try_end_2
.catch Ljava/io/EOFException; {:try_start_1 .. :try_end_2} :catch_2f
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_4f
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-eqz v0, :cond_8
monitor-exit p0
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;
move-result-object v0
check-cast v0, Lcom/sun/mail/pop3/POP3Store;
iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z
if-nez v0, :cond_23
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;
move-result-object v0
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_41
:cond_23
invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:goto_2a
monitor-exit p0
goto :goto_7
:catchall_2c
move-exception v0
monitor-exit p0
:try_start_2e
:try_end_2e
.catchall {:try_start_2 .. :try_end_2e} :catchall_2c
throw v0
:try_end_2f
.catch Ljava/io/EOFException; {:try_start_2e .. :try_end_2f} :catch_2f
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_4f
:catch_2f
move-exception v0
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v1, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
new-instance v1, Ljavax/mail/FolderClosedException;
iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:cond_41
:try_start_41
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v1
iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
new-instance v1, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V
iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
:try_end_4e
.catchall {:try_start_41 .. :try_end_4e} :catchall_2c
goto :goto_2a
:catch_4f
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "error loading POP3 headers"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "POP3 messages are read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addHeaderLine(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "POP3 messages are read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getAllHeaderLines()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getAllHeaders()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method protected getContentStream()Ljava/io/InputStream;
.registers 9
const/16 v6, 0xa
const/4 v3, 0x0
:try_start_3
monitor-enter p0
:try_start_4
:try_end_4
.catch Ljava/io/EOFException; {:try_start_3 .. :try_end_4} :catch_2b
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_4} :catch_ad
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
if-nez v1, :cond_6e
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;
move-result-object v2
iget v4, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
if-lez v1, :cond_3d
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
add-int/2addr v1, v5
:goto_19
invoke-virtual {v2, v4, v1}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;
move-result-object v2
if-nez v2, :cond_3f
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z
new-instance v1, Ljavax/mail/MessageRemovedException;
invoke-direct {v1}, Ljavax/mail/MessageRemovedException;-><init>()V
throw v1
:catchall_28
move-exception v1
monitor-exit p0
:try_start_2a
:try_end_2a
.catchall {:try_start_4 .. :try_end_2a} :catchall_28
throw v1
:catch_2b
:try_end_2b
.catch Ljava/io/EOFException; {:try_start_2a .. :try_end_2b} :catch_2b
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_2b} :catch_ad
move-exception v1
iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
new-instance v2, Ljavax/mail/FolderClosedException;
iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:cond_3d
move v1, v3
goto :goto_19
:try_start_3f
:cond_3f
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-eqz v1, :cond_4f
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;
move-result-object v1
check-cast v1, Lcom/sun/mail/pop3/POP3Store;
iget-boolean v1, v1, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z
if-eqz v1, :cond_74
:cond_4f
new-instance v1, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v1, v2}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V
iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
move-object v0, v2
check-cast v0, Ljavax/mail/internet/SharedInputStream;
move-object v1, v0
invoke-interface {v1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J
move-result-wide v4
long-to-int v1, v4
iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
:goto_61
check-cast v2, Ljavax/mail/internet/SharedInputStream;
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
int-to-long v4, v1
const-wide/16 v6, -0x1
invoke-interface {v2, v4, v5, v6, v7}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;
move-result-object v1
iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
:cond_6e
monitor-exit p0
:try_end_6f
.catchall {:try_start_3f .. :try_end_6f} :catchall_28
invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;
move-result-object v1
return-object v1
:cond_74
move v1, v3
:goto_75
:try_start_75
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v4
if-gez v4, :cond_8d
:cond_7b
:goto_7b
invoke-virtual {v2}, Ljava/io/InputStream;->available()I
move-result v4
if-nez v4, :cond_aa
:goto_81
move-object v0, v2
check-cast v0, Ljavax/mail/internet/SharedInputStream;
move-object v1, v0
invoke-interface {v1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J
move-result-wide v4
long-to-int v1, v4
iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
goto :goto_61
:cond_8d
if-eq v4, v6, :cond_7b
const/16 v5, 0xd
if-ne v4, v5, :cond_a7
invoke-virtual {v2}, Ljava/io/InputStream;->available()I
move-result v4
if-lez v4, :cond_7b
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v4
if-eq v4, v6, :cond_7b
invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
:try_end_a6
.catchall {:try_start_75 .. :try_end_a6} :catchall_28
goto :goto_7b
:cond_a7
add-int/lit8 v1, v1, 0x1
goto :goto_75
:cond_aa
if-nez v1, :cond_74
goto :goto_81
:catch_ad
move-exception v1
new-instance v2, Ljavax/mail/MessagingException;
const-string v3, "error fetching POP3 content"
invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
.end method
.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_7
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getSize()I
.registers 4
:try_start_0
monitor-enter p0
:try_start_1
:try_end_1
.catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_27
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_4c
iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
if-ltz v0, :cond_9
iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
monitor-exit p0
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
if-gez v0, :cond_20
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_14
invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V
:cond_14
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
:cond_20
:goto_20
iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
monitor-exit p0
goto :goto_8
:catchall_24
move-exception v0
monitor-exit p0
:try_end_26
.catchall {:try_start_1 .. :try_end_26} :catchall_24
:try_start_26
throw v0
:catch_27
:try_end_27
.catch Ljava/io/EOFException; {:try_start_26 .. :try_end_27} :catch_27
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_4c
move-exception v0
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
new-instance v1, Ljavax/mail/FolderClosedException;
iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:try_start_3a
:cond_3a
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;
move-result-object v0
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I
invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->list(I)I
move-result v0
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
:try_end_4b
.catchall {:try_start_3a .. :try_end_4b} :catchall_24
goto :goto_20
:catch_4c
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "error getting size"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public declared-synchronized invalidate(Z)V
.registers 3
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
const/4 v0, -0x1
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
if-eqz p1, :cond_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
const/4 v0, -0x1
iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
:cond_12
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "POP3 messages are read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public saveChanges()V
.registers 3
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "POP3 messages are read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setFlags(Ljavax/mail/Flags;Z)V
.registers 5
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;
invoke-virtual {v1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
const/4 v1, 0x1
invoke-virtual {v0, v1, p0}, Lcom/sun/mail/pop3/POP3Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V
:cond_19
return-void
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "POP3 messages are read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public top(I)Ljava/io/InputStream;
.registers 5
:try_start_0
monitor-enter p0
:try_start_1
:try_end_1
.catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_12
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_25
iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;
move-result-object v0
iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I
invoke-virtual {v0, v1, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_f
move-exception v0
monitor-exit p0
:try_start_11
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_f
throw v0
:catch_12
:try_end_12
.catch Ljava/io/EOFException; {:try_start_11 .. :try_end_12} :catch_12
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_12} :catch_25
move-exception v0
iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
new-instance v1, Ljavax/mail/FolderClosedException;
iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;
invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catch_25
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "error getting size"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method