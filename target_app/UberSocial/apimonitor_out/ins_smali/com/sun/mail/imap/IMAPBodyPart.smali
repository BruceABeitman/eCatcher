.class public Lcom/sun/mail/imap/IMAPBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "SourceFile"
.field private bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.field private description:Ljava/lang/String;
.field private headersLoaded:Z
.field private message:Lcom/sun/mail/imap/IMAPMessage;
.field private sectionId:Ljava/lang/String;
.field private type:Ljava/lang/String;
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
.registers 8
invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iput-object p2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
iput-object p3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
new-instance v0, Ljavax/mail/internet/ContentType;
iget-object v1, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
iget-object v2, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
iget-object v3, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;
return-void
.end method
.method private declared-synchronized loadHeaders()V
.registers 6
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_67
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
if-nez v0, :cond_12
new-instance v0, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
:cond_12
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_19
:try_end_19
.catchall {:try_start_7 .. :try_end_19} :catchall_67
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z
move-result v2
if-eqz v2, :cond_8e
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, ".MIME"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
if-nez v0, :cond_6a
new-instance v0, Ljavax/mail/MessagingException;
const-string v2, "Failed to fetch headers"
invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_53
.catchall {:try_start_19 .. :try_end_53} :catchall_64
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_19 .. :try_end_53} :catch_53
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_19 .. :try_end_53} :catch_78
:catch_53
move-exception v0
:try_start_54
new-instance v2, Ljavax/mail/FolderClosedException;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;
move-result-object v3
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catchall_64
move-exception v0
monitor-exit v1
:try_end_66
.catchall {:try_start_54 .. :try_end_66} :catchall_64
:try_start_66
throw v0
:try_end_67
.catchall {:try_start_66 .. :try_end_67} :catchall_67
:catchall_67
move-exception v0
monitor-exit p0
throw v0
:cond_6a
:try_start_6a
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
move-result-object v0
if-nez v0, :cond_83
new-instance v0, Ljavax/mail/MessagingException;
const-string v2, "Failed to fetch headers"
invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_78
.catchall {:try_start_6a .. :try_end_78} :catchall_64
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6a .. :try_end_78} :catch_53
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6a .. :try_end_78} :catch_78
:catch_78
move-exception v0
:try_start_79
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_83
.catchall {:try_start_79 .. :try_end_83} :catchall_64
:try_start_83
:cond_83
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v2, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V
:try_end_88
.catchall {:try_start_83 .. :try_end_88} :catchall_64
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_83 .. :try_end_88} :catch_53
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_83 .. :try_end_88} :catch_78
:goto_88
:cond_88
:try_start_88
monitor-exit v1
:try_end_89
.catchall {:try_start_88 .. :try_end_89} :catchall_64
const/4 v0, 0x1
:try_start_8a
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
:try_end_8c
.catchall {:try_start_8a .. :try_end_8c} :catchall_67
goto/16 :goto_5
:cond_8e
:try_start_8e
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
const-string v2, "Content-Type"
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
const-string v2, "Content-Transfer-Encoding"
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
if-eqz v0, :cond_b3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
const-string v2, "Content-Description"
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_b3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;
if-eqz v0, :cond_c4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
const-string v2, "Content-ID"
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_c4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;
if-eqz v0, :cond_88
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;
const-string v2, "Content-MD5"
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_d5
.catchall {:try_start_8e .. :try_end_d5} :catchall_64
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8e .. :try_end_d5} :catch_53
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8e .. :try_end_d5} :catch_78
goto :goto_88
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addHeaderLine(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getAllHeaderLines()Ljava/util/Enumeration;
.registers 2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getAllHeaders()Ljava/util/Enumeration;
.registers 2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getContentID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;
return-object v0
.end method
.method public getContentMD5()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;
return-object v0
.end method
.method protected getContentStream()Ljava/io/InputStream;
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z
move-result v1
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_e
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v3
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V
invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z
move-result v4
if-eqz v4, :cond_37
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_37
new-instance v0, Lcom/sun/mail/imap/IMAPInputStream;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget v5, v5, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
invoke-direct {v0, v3, v4, v5, v1}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
:try_start_35
:try_end_35
.catchall {:try_start_e .. :try_end_35} :catchall_6e
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_35} :catch_5d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_35} :catch_71
monitor-exit v2
:cond_36
:try_end_36
.catchall {:try_start_35 .. :try_end_36} :catchall_6e
return-object v0
:cond_37
:try_start_37
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v4
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
invoke-virtual {v3, v4, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v1
:goto_45
if-eqz v1, :cond_4b
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
:try_end_4a
.catchall {:try_start_37 .. :try_end_4a} :catchall_6e
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_37 .. :try_end_4a} :catch_5d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_37 .. :try_end_4a} :catch_71
move-result-object v0
:cond_4b
:try_start_4b
monitor-exit v2
:try_end_4c
.catchall {:try_start_4b .. :try_end_4c} :catchall_6e
if-nez v0, :cond_36
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "No content"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_56
:try_start_56
iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
invoke-virtual {v3, v4, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
:try_end_5b
.catchall {:try_start_56 .. :try_end_5b} :catchall_6e
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_56 .. :try_end_5b} :catch_5d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_56 .. :try_end_5b} :catch_71
move-result-object v1
goto :goto_45
:catch_5d
move-exception v0
:try_start_5e
new-instance v1, Ljavax/mail/FolderClosedException;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;
move-result-object v3
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_6e
move-exception v0
monitor-exit v2
:try_end_70
.catchall {:try_start_5e .. :try_end_70} :catchall_6e
throw v0
:catch_71
move-exception v0
:try_start_72
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_7c
.catchall {:try_start_72 .. :try_end_7c} :catchall_6e
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;
return-object v0
.end method
.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;
if-nez v0, :cond_21
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z
move-result v0
if-eqz v0, :cond_27
new-instance v0, Ljavax/activation/DataHandler;
new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;
:goto_21
:cond_21
invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_55
move-result-object v0
monitor-exit p0
return-object v0
:cond_27
:try_start_27
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Ljavax/activation/DataHandler;
new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
const/4 v4, 0x0
aget-object v3, v3, v4
iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;
:try_end_54
.catchall {:try_start_27 .. :try_end_54} :catchall_55
goto :goto_21
:catchall_55
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
if-nez v0, :cond_f
const/4 v0, 0x0
goto :goto_6
:cond_f
:try_start_f
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
:try_end_19
.catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_19} :catch_1c
:goto_19
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
goto :goto_6
:catch_1c
move-exception v0
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
goto :goto_19
.end method
.method public getDisposition()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;
return-object v0
.end method
.method public getEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;
return-object v0
.end method
.method public getFileName()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;
if-eqz v1, :cond_11
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;
const-string v1, "filename"
invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_11
if-nez v0, :cond_23
iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
if-eqz v1, :cond_23
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_23
return-object v0
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLineCount()I
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
return v0
.end method
.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V
invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getSize()I
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
return v0
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setContent(Ljavax/mail/Multipart;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setContentMD5(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setDataHandler(Ljavax/activation/DataHandler;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setDisposition(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setFileName(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/IllegalWriteException;
const-string v1, "IMAPBodyPart is read-only"
invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected updateHeaders()V
.registers 1
return-void
.end method