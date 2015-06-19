.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;
.source "SourceFile"
.implements Ljavax/mail/internet/MimePart;
.field private static final answeredFlag:Ljavax/mail/Flags;
.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;
.field  cachedContent:Ljava/lang/Object;
.field protected content:[B
.field protected contentStream:Ljava/io/InputStream;
.field protected dh:Ljavax/activation/DataHandler;
.field protected flags:Ljavax/mail/Flags;
.field protected headers:Ljavax/mail/internet/InternetHeaders;
.field protected modified:Z
.field protected saved:Z
.field private strict:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljavax/mail/internet/MailDateFormat;
invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V
sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
new-instance v0, Ljavax/mail/Flags;
sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;
invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V
sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;
return-void
.end method
.method protected constructor <init>(Ljavax/mail/Folder;I)V
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V
return-void
.end method
.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
.registers 4
invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V
invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V
invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V
return-void
.end method
.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
.registers 5
invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V
iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B
invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V
return-void
.end method
.method public constructor <init>(Ljavax/mail/Session;)V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
new-instance v0, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V
return-void
.end method
.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V
invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
return-void
.end method
.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
iput-boolean v2, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I
move-result v1
if-lez v1, :cond_3b
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
:try_start_1e
:goto_1e
iget-boolean v1, p1, Ljavax/mail/internet/MimeMessage;->strict:Z
iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
new-instance v1, Ljavax/mail/util/SharedByteArrayInputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-direct {v1, v0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V
invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V
invoke-virtual {v1}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V
const/4 v0, 0x1
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
:try_end_3a
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_3a} :catch_41
return-void
:cond_3b
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
goto :goto_1e
:catch_41
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException while copying message"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
.registers 4
invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
.end method
.method private eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
.registers 10
const/4 v5, 0x0
const/4 v2, 0x0
if-nez p2, :cond_6
move-object v0, v5
:goto_5
:cond_5
return-object v0
:cond_6
move v1, v2
move v3, v2
:goto_8
array-length v0, p2
if-lt v1, v0, :cond_27
if-eqz v3, :cond_57
instance-of v0, p2, [Ljavax/mail/internet/InternetAddress;
if-eqz v0, :cond_52
array-length v0, p2
sub-int/2addr v0, v3
new-array v0, v0, [Ljavax/mail/internet/InternetAddress;
:goto_15
move v1, v2
:goto_16
array-length v3, p2
if-ge v1, v3, :cond_5
aget-object v3, p2, v1
if-eqz v3, :cond_24
add-int/lit8 v3, v2, 0x1
aget-object v4, p2, v1
aput-object v4, v0, v2
move v2, v3
:cond_24
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_27
move v4, v2
:goto_28
invoke-virtual {p1}, Ljava/util/Vector;->size()I
move-result v0
if-lt v4, v0, :cond_3a
move v0, v2
:goto_2f
if-nez v0, :cond_36
aget-object v0, p2, v1
invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_36
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_3a
invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetAddress;
aget-object v6, p2, v1
invoke-virtual {v0, v6}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
const/4 v0, 0x1
add-int/lit8 v3, v3, 0x1
aput-object v5, p2, v1
goto :goto_2f
:cond_4e
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_28
:cond_52
array-length v0, p2
sub-int/2addr v0, v3
new-array v0, v0, [Ljavax/mail/Address;
goto :goto_15
:cond_57
move-object v0, p2
goto :goto_5
.end method
.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
.registers 4
const-string v0, ","
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
goto :goto_9
.end method
.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
.registers 4
sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
if-ne p1, v0, :cond_7
const-string v0, "To"
:goto_6
return-object v0
:cond_7
sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
if-ne p1, v0, :cond_e
const-string v0, "Cc"
goto :goto_6
:cond_e
sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;
if-ne p1, v0, :cond_15
const-string v0, "Bcc"
goto :goto_6
:cond_15
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_1c
const-string v0, "Newsgroups"
goto :goto_6
:cond_1c
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "Invalid Recipient Type"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private initStrict()V
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
if-eqz v0, :cond_19
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
const-string v1, "mail.mime.address.strict"
invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1a
const-string v1, "false"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x0
:goto_17
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z
:cond_19
return-void
:cond_1a
const/4 v0, 0x1
goto :goto_17
.end method
.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
.registers 4
invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public addFrom([Ljavax/mail/Address;)V
.registers 3
const-string v0, "From"
invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
return-void
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public addHeaderLine(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V
return-void
.end method
.method public addRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
.registers 5
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_12
if-eqz p2, :cond_11
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
const-string v0, "Newsgroups"
invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_11
:cond_11
return-void
:cond_12
invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v1
invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
goto :goto_11
.end method
.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
.registers 5
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_10
invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_f
const-string v1, "Newsgroups"
invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
:cond_f
return-void
:cond_10
invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
goto :goto_f
.end method
.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
.registers 3
new-instance v0, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V
return-object v0
.end method
.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
.registers 3
new-instance v0, Ljavax/mail/internet/MimeMessage;
invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V
return-object v0
.end method
.method public getAllHeaderLines()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getAllHeaders()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getAllRecipients()[Ljavax/mail/Address;
.registers 6
const/4 v4, 0x0
invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;
move-result-object v0
sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
move-result-object v1
if-nez v1, :cond_e
:goto_d
return-object v0
:cond_e
if-nez v0, :cond_12
move-object v0, v1
goto :goto_d
:cond_12
array-length v2, v0
array-length v3, v1
add-int/2addr v2, v3
new-array v2, v2, [Ljavax/mail/Address;
array-length v3, v0
invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v0, v0
array-length v3, v1
invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v2
goto :goto_d
.end method
.method public getContent()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
if-eqz v0, :cond_7
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
:goto_6
:cond_6
return-object v0
:try_start_7
:cond_7
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;
move-result-object v0
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;
:try_end_e
.catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_7 .. :try_end_e} :catch_26
.catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_7 .. :try_end_e} :catch_35
move-result-object v0
sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z
if-eqz v1, :cond_6
instance-of v1, v0, Ljavax/mail/Multipart;
if-nez v1, :cond_1b
instance-of v1, v0, Ljavax/mail/Message;
if-eqz v1, :cond_6
:cond_1b
iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B
if-nez v1, :cond_23
iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
if-eqz v1, :cond_6
:cond_23
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
goto :goto_6
:catch_26
move-exception v0
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;
move-result-object v2
invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catch_35
move-exception v0
new-instance v1, Ljavax/mail/MessageRemovedException;
invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getContentID()Ljava/lang/String;
.registers 3
const-string v0, "Content-Id"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getContentLanguage()[Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getContentMD5()Ljava/lang/String;
.registers 3
const-string v0, "Content-MD5"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getContentStream()Ljava/io/InputStream;
.registers 6
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
if-eqz v0, :cond_11
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
check-cast v0, Ljavax/mail/internet/SharedInputStream;
const-wide/16 v1, 0x0
const-wide/16 v3, -0x1
invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
if-eqz v0, :cond_1d
new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;
iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B
invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V
goto :goto_10
:cond_1d
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "No content"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 3
const-string v0, "Content-Type"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_b
const-string v0, "text/plain"
:cond_b
return-object v0
.end method
.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
if-nez v0, :cond_11
new-instance v0, Ljavax/activation/DataHandler;
new-instance v1, Ljavax/mail/internet/MimePartDataSource;
invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V
invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
:cond_11
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_15
monitor-exit p0
return-object v0
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisposition()Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getEncoding()Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getFileName()Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized getFlags()Ljavax/mail/Flags;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-object v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getFrom()[Ljavax/mail/Address;
.registers 2
const-string v0, "From"
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
move-result-object v0
if-nez v0, :cond_e
const-string v0, "Sender"
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
move-result-object v0
:cond_e
return-object v0
.end method
.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;
move-result-object v0
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getLineCount()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getMessageID()Ljava/lang/String;
.registers 3
const-string v0, "Message-ID"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getRawInputStream()Ljava/io/InputStream;
.registers 2
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getReceivedDate()Ljava/util/Date;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
.registers 4
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_15
const-string v0, "Newsgroups"
const-string v1, ","
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
invoke-static {v0}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;
move-result-object v0
goto :goto_f
:cond_15
invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
move-result-object v0
goto :goto_f
.end method
.method public getReplyTo()[Ljavax/mail/Address;
.registers 2
const-string v0, "Reply-To"
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
move-result-object v0
if-nez v0, :cond_c
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;
move-result-object v0
:cond_c
return-object v0
.end method
.method public getSender()Ljavax/mail/Address;
.registers 3
const-string v0, "Sender"
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
move-result-object v0
if-eqz v0, :cond_b
array-length v1, v0
if-nez v1, :cond_d
:cond_b
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
const/4 v1, 0x0
aget-object v0, v0, v1
goto :goto_c
.end method
.method public getSentDate()Ljava/util/Date;
.registers 5
const/4 v1, 0x0
const-string v0, "Date"
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1a
:try_start_9
sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
monitor-enter v2
:try_start_c
:try_end_c
.catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_17
sget-object v3, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
invoke-virtual {v3, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
monitor-exit v2
:goto_13
return-object v0
:catchall_14
move-exception v0
monitor-exit v2
:try_start_16
:try_end_16
.catchall {:try_start_c .. :try_end_16} :catchall_14
throw v0
:catch_17
:try_end_17
.catch Ljava/text/ParseException; {:try_start_16 .. :try_end_17} :catch_17
move-exception v0
move-object v0, v1
goto :goto_13
:cond_1a
move-object v0, v1
goto :goto_13
.end method
.method public getSize()I
.registers 2
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
if-eqz v0, :cond_8
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
array-length v0, v0
:goto_7
:cond_7
return v0
:cond_8
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
if-eqz v0, :cond_14
:try_start_c
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
:try_end_11
.catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_16
move-result v0
if-gtz v0, :cond_7
:cond_14
:goto_14
const/4 v0, -0x1
goto :goto_7
:catch_16
move-exception v0
goto :goto_14
.end method
.method public getSubject()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
const-string v1, "Subject"
invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_a
:goto_9
return-object v0
:cond_a
:try_start_a
invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
:try_end_11
.catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_13
move-result-object v0
goto :goto_9
:catch_13
move-exception v0
move-object v0, v1
goto :goto_9
.end method
.method public isMimeType(Ljava/lang/String;)Z
.registers 3
invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected parse(Ljava/io/InputStream;)V
.registers 7
instance-of v0, p1, Ljava/io/ByteArrayInputStream;
if-nez v0, :cond_3d
instance-of v0, p1, Ljava/io/BufferedInputStream;
if-nez v0, :cond_3d
instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;
if-nez v0, :cond_3d
new-instance v0, Ljava/io/BufferedInputStream;
invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:goto_11
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
move-result-object v1
iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
instance-of v1, v0, Ljavax/mail/internet/SharedInputStream;
if-eqz v1, :cond_2d
check-cast v0, Ljavax/mail/internet/SharedInputStream;
invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J
move-result-wide v1
const-wide/16 v3, -0x1
invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
:goto_29
const/4 v0, 0x0
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
return-void
:try_start_2d
:cond_2d
invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
:try_end_33
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_34
goto :goto_29
:catch_34
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_3d
move-object v0, p1
goto :goto_11
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V
return-void
.end method
.method public reply(Z)Ljavax/mail/Message;
.registers 10
const/4 v1, 0x1
const/4 v6, 0x0
const/4 v2, 0x0
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
move-result-object v7
const-string v0, "Subject"
invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
const-string v3, "Re: "
const/4 v5, 0x4
move v4, v2
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v3
if-nez v3, :cond_2a
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Re: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_2a
const-string v3, "Subject"
invoke-virtual {v7, v3, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;
move-result-object v3
sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
invoke-virtual {v7, v0, v3}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
if-eqz p1, :cond_b2
new-instance v4, Ljava/util/Vector;
invoke-direct {v4}, Ljava/util/Vector;-><init>()V
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
move-result-object v0
if-eqz v0, :cond_4a
invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_4a
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
if-eqz v0, :cond_114
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
const-string v5, "mail.alternates"
invoke-virtual {v0, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_56
if-eqz v0, :cond_5f
invoke-static {v0, v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
:cond_5f
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
if-eqz v0, :cond_111
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
const-string v5, "mail.replyallcc"
invoke-virtual {v0, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_6b
if-eqz v0, :cond_104
const-string v5, "true"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_104
:goto_75
invoke-direct {p0, v4, v3}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
move-result-object v0
invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
move-result-object v0
if-eqz v0, :cond_8e
array-length v2, v0
if-lez v2, :cond_8e
if-eqz v1, :cond_107
sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_8e
:goto_8e
sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
move-result-object v0
invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
move-result-object v0
if-eqz v0, :cond_a2
array-length v1, v0
if-lez v1, :cond_a2
sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_a2
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
move-result-object v0
if-eqz v0, :cond_b2
array-length v1, v0
if-lez v1, :cond_b2
sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_b2
const-string v0, "Message-Id"
invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_bf
const-string v1, "In-Reply-To"
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_bf
const-string v1, "References"
const-string v2, " "
invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_d1
const-string v1, "In-Reply-To"
const-string v2, " "
invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_d1
if-eqz v0, :cond_10f
if-eqz v1, :cond_f0
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, " "
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_f0
:goto_f0
if-eqz v0, :cond_fd
const-string v1, "References"
const/16 v2, 0xc
invoke-static {v2, v0}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_start_fd
:cond_fd
sget-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
:try_end_103
.catch Ljavax/mail/MessagingException; {:try_start_fd .. :try_end_103} :catch_10d
:goto_103
return-object v7
:cond_104
move v1, v2
goto/16 :goto_75
:cond_107
sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
goto :goto_8e
:catch_10d
move-exception v0
goto :goto_103
:cond_10f
move-object v0, v1
goto :goto_f0
:cond_111
move-object v0, v6
goto/16 :goto_6b
:cond_114
move-object v0, v6
goto/16 :goto_56
.end method
.method public saveChanges()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V
return-void
.end method
.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
instance-of v0, p1, Ljavax/mail/Multipart;
if-eqz v0, :cond_a
check-cast p1, Ljavax/mail/Multipart;
invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V
:goto_9
return-void
:cond_a
new-instance v0, Ljavax/activation/DataHandler;
invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V
goto :goto_9
.end method
.method public setContent(Ljavax/mail/Multipart;)V
.registers 4
new-instance v0, Ljavax/activation/DataHandler;
invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V
invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V
return-void
.end method
.method public setContentID(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_8
const-string v0, "Content-ID"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
const-string v0, "Content-ID"
invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method
.method public setContentLanguage([Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
return-void
.end method
.method public setContentMD5(Ljava/lang/String;)V
.registers 3
const-string v0, "Content-MD5"
invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public declared-synchronized setDataHandler(Ljavax/activation/DataHandler;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setDescription(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setDisposition(Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
return-void
.end method
.method public setFileName(Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
return-void
.end method
.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
.registers 4
monitor-enter p0
if-eqz p2, :cond_a
:try_start_3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-virtual {v0, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_10
:goto_8
monitor-exit p0
return-void
:try_start_a
:cond_a
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;
invoke-virtual {v0, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
:try_end_f
.catchall {:try_start_a .. :try_end_f} :catchall_10
goto :goto_8
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setFrom()V
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V
return-void
:cond_c
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "No From address"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setFrom(Ljavax/mail/Address;)V
.registers 4
if-nez p1, :cond_8
const-string v0, "From"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
const-string v0, "From"
invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;
invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
.registers 5
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_18
if-eqz p2, :cond_c
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_12
:cond_c
const-string v0, "Newsgroups"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_11
return-void
:cond_12
const-string v0, "Newsgroups"
invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
:cond_18
invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v1
invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
goto :goto_11
.end method
.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
.registers 5
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
if-ne p1, v0, :cond_19
if-eqz p2, :cond_9
array-length v0, p2
if-nez v0, :cond_f
:cond_9
const-string v0, "Newsgroups"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
const-string v0, "Newsgroups"
invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_19
invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
goto :goto_e
.end method
.method public setReplyTo([Ljavax/mail/Address;)V
.registers 3
const-string v0, "Reply-To"
invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
return-void
.end method
.method public setSender(Ljavax/mail/Address;)V
.registers 4
if-nez p1, :cond_8
const-string v0, "Sender"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
const-string v0, "Sender"
invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method
.method public setSentDate(Ljava/util/Date;)V
.registers 5
if-nez p1, :cond_8
const-string v0, "Date"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
sget-object v1, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
monitor-enter v1
:try_start_b
const-string v0, "Date"
sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
invoke-virtual {v2, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit v1
goto :goto_7
:catchall_18
move-exception v0
monitor-exit v1
:try_end_1a
.catchall {:try_start_b .. :try_end_1a} :catchall_18
throw v0
.end method
.method public setSubject(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
if-nez p1, :cond_8
const-string v0, "Subject"
invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
:try_start_8
const-string v0, "Subject"
const/16 v1, 0x9
const/4 v2, 0x0
invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_18
.catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_18} :catch_19
goto :goto_7
:catch_19
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "Encoding error"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public setText(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setText(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "plain"
invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected updateHeaders()V
.registers 5
const/4 v3, 0x0
invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V
const-string v0, "MIME-Version"
const-string v1, "1.0"
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageID()V
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
if-eqz v0, :cond_2e
new-instance v0, Ljavax/activation/DataHandler;
iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;
iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->content:[B
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
if-eqz v0, :cond_2c
:try_start_27
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_2c
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2f
:goto_2c
:cond_2c
iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
:cond_2e
return-void
:catch_2f
move-exception v0
goto :goto_2c
.end method
.method protected updateMessageID()V
.registers 4
const-string v0, "Message-ID"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "<"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;
invoke-static {v2}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ">"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
.registers 7
iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
if-nez v0, :cond_7
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
:cond_7
iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z
if-eqz v0, :cond_f
invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
:goto_e
return-void
:cond_f
invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v1
new-instance v2, Lcom/sun/mail/util/LineOutputStream;
invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V
:goto_18
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_3d
invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
if-nez v0, :cond_4c
invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;
move-result-object v0
const/16 v1, 0x2000
new-array v1, v1, [B
:goto_2d
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v2
if-gtz v2, :cond_47
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
const/4 v0, 0x0
check-cast v0, [B
:goto_39
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
goto :goto_e
:cond_3d
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
goto :goto_18
:cond_47
const/4 v3, 0x0
invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
goto :goto_2d
:cond_4c
iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
goto :goto_39
.end method