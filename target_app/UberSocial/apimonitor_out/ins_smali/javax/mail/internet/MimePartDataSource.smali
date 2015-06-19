.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;
.field private static ignoreMultipartEncoding:Z
.field private context:Ljavax/mail/MessageContext;
.field protected part:Ljavax/mail/internet/MimePart;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
:try_start_3
const-string v1, "mail.mime.ignoremultipartencoding"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_14
const-string v2, "false"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_14
const/4 v0, 0x0
:cond_14
sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
:try_end_16
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_17
:goto_16
return-void
:catch_17
move-exception v0
goto :goto_16
.end method
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
return-void
.end method
.method private static restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
.registers 4
sget-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
if-eqz v0, :cond_6
if-nez p0, :cond_7
:goto_6
:cond_6
return-object p0
:cond_7
const-string v0, "7bit"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6
const-string v0, "8bit"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6
const-string v0, "binary"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6
invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6
:try_start_25
new-instance v1, Ljavax/mail/internet/ContentType;
invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
const-string v0, "multipart/*"
invoke-virtual {v1, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const-string v0, "message/*"
invoke-virtual {v1, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
:try_end_37
.catch Ljavax/mail/internet/ParseException; {:try_start_25 .. :try_end_37} :catch_3c
move-result v0
if-eqz v0, :cond_6
:cond_3a
const/4 p0, 0x0
goto :goto_6
:catch_3c
move-exception v0
goto :goto_6
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
:try_start_0
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
invoke-interface {v0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;
:try_end_5
.catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const-string v0, "application/octet-stream"
goto :goto_6
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 4
:try_start_0
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;
if-eqz v0, :cond_21
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
check-cast v0, Ljavax/mail/internet/MimeBodyPart;
invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;
move-result-object v0
:goto_e
iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
invoke-static {v1, v2}, Ljavax/mail/internet/MimePartDataSource;->restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_20
invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
:cond_20
return-object v0
:cond_21
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
instance-of v0, v0, Ljavax/mail/internet/MimeMessage;
if-eqz v0, :cond_30
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
check-cast v0, Ljavax/mail/internet/MimeMessage;
invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;
move-result-object v0
goto :goto_e
:cond_30
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "Unknown part"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:catch_38
:try_end_38
.catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_38} :catch_38
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
if-nez v0, :cond_e
new-instance v0, Ljavax/mail/MessageContext;
iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V
iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
:cond_e
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-object v0
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
:try_start_0
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;
if-eqz v0, :cond_10
iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;
check-cast v0, Ljavax/mail/internet/MimeBodyPart;
invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;
:try_end_d
.catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_d} :catch_f
move-result-object v0
:goto_e
return-object v0
:catch_f
move-exception v0
:cond_10
const-string v0, ""
goto :goto_e
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 2
new-instance v0, Ljava/net/UnknownServiceException;
invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V
throw v0
.end method