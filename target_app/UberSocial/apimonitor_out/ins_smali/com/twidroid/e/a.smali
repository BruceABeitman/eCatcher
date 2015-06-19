.class public Lcom/twidroid/e/a;
.super Ljavax/mail/Authenticator;
.source "SourceFile"
.field private static final a:I = 0x2710
.field private static final b:Ljava/lang/String; = "MailSender"
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:[Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Z
.field private m:Z
.field private n:Ljavax/mail/Multipart;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V
const-string v0, "smtp.mail.ru"
iput-object v0, p0, Lcom/twidroid/e/a;->i:Ljava/lang/String;
const-string v0, "2525"
iput-object v0, p0, Lcom/twidroid/e/a;->g:Ljava/lang/String;
const-string v0, "2525"
iput-object v0, p0, Lcom/twidroid/e/a;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/e/a;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/e/a;->j:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/e/a;->k:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/e/a;->m:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/e/a;->l:Z
new-instance v0, Ljavax/mail/internet/MimeMultipart;
invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V
iput-object v0, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
check-cast v0, Ljavax/activation/MailcapCommandMap;
const-string v1, "text/html;; x-java-content-handler=com.sun.mail.handlers.text_html"
invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V
const-string v1, "text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml"
invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V
const-string v1, "text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain"
invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V
const-string v1, "multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed"
invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V
const-string v1, "message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822"
invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V
invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/twidroid/e/a;-><init>()V
iput-object p1, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
return-void
.end method
.method private static a(ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/Properties;
.registers 8
const/16 v3, 0x2710
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
const-string v1, "mail.smtp.host"
invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p0, :cond_15
const-string v1, "mail.debug"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
if-eqz p3, :cond_1e
const-string v1, "mail.smtp.auth"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
const-string v1, "mail.smtp.port"
invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.port"
invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.class"
const-string v2, "javax.net.ssl.SSLSocketFactory"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.fallback"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.connectiontimeout"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.imap.timeout"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
:try_start_2
new-instance v0, Ljava/net/Socket;
invoke-direct {v0}, Ljava/net/Socket;-><init>()V
new-instance v3, Ljava/net/InetSocketAddress;
invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
const/16 v4, 0x2710
invoke-static {v0, v3, v4}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_14
.catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_14} :catch_18
.catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_14} :catch_22
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_2c
move v0, v2
:goto_15
if-nez v0, :cond_32
:goto_17
return v1
:catch_18
move-exception v0
const-string v0, "MailSender"
const-string v3, "Socket Timeout"
invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move v0, v1
goto :goto_15
:catch_22
move-exception v0
const-string v0, "MailSender"
const-string v3, "Unknown host"
invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move v0, v2
goto :goto_15
:catch_2c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
move v0, v1
goto :goto_15
:cond_32
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, p2, v3, v2}, Lcom/twidroid/e/a;->a(ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/Properties;
move-result-object v2
new-instance v3, Lcom/twidroid/e/a$1;
invoke-direct {v3, p0, p1}, Lcom/twidroid/e/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v2, v3}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
move-result-object v2
:try_start_43
const-string v3, "smtp"
invoke-virtual {v2, v3}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
move-result-object v2
invoke-virtual {v2}, Ljavax/mail/Transport;->connect()V
invoke-virtual {v2}, Ljavax/mail/Transport;->close()V
:try_end_4f
.catch Ljavax/mail/NoSuchProviderException; {:try_start_43 .. :try_end_4f} :catch_51
.catch Ljavax/mail/MessagingException; {:try_start_43 .. :try_end_4f} :catch_57
:goto_4f
move v1, v0
goto :goto_17
:catch_51
move-exception v0
invoke-virtual {v0}, Ljavax/mail/NoSuchProviderException;->printStackTrace()V
move v0, v1
goto :goto_4f
:catch_57
move-exception v0
invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V
move v0, v1
goto :goto_4f
.end method
.method private n()Ljava/util/Properties;
.registers 4
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
const-string v1, "mail.smtp.host"
iget-object v2, p0, Lcom/twidroid/e/a;->i:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-boolean v1, p0, Lcom/twidroid/e/a;->m:Z
if-eqz v1, :cond_17
const-string v1, "mail.debug"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
iget-boolean v1, p0, Lcom/twidroid/e/a;->l:Z
if-eqz v1, :cond_22
const-string v1, "mail.smtp.auth"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_22
const-string v1, "mail.smtp.port"
iget-object v2, p0, Lcom/twidroid/e/a;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.port"
iget-object v2, p0, Lcom/twidroid/e/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.class"
const-string v2, "javax.net.ssl.SSLSocketFactory"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.socketFactory.fallback"
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "mail.smtp.connectiontimeout"
const/16 v2, 0xbb8
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljavax/mail/internet/MimeBodyPart;
invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V
new-instance v1, Ljavax/activation/FileDataSource;
invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/lang/String;)V
new-instance v2, Ljavax/activation/DataHandler;
invoke-direct {v2, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V
invoke-virtual {v0, v2}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V
invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
return-void
.end method
.method public a(Ljavax/mail/Multipart;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/e/a;->l:Z
return-void
.end method
.method public a([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
return-void
.end method
.method public a()Z
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Lcom/twidroid/e/a;->n()Ljava/util/Properties;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_92
iget-object v2, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_92
iget-object v2, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
array-length v2, v2
if-lez v2, :cond_92
iget-object v2, p0, Lcom/twidroid/e/a;->f:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_92
iget-object v2, p0, Lcom/twidroid/e/a;->j:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_92
iget-object v2, p0, Lcom/twidroid/e/a;->k:Ljava/lang/String;
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_92
invoke-static {v1, p0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
move-result-object v1
new-instance v2, Ljavax/mail/internet/MimeMessage;
invoke-direct {v2, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V
new-instance v1, Ljavax/mail/internet/InternetAddress;
iget-object v3, p0, Lcom/twidroid/e/a;->f:Ljava/lang/String;
invoke-direct {v1, v3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V
iget-object v1, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
array-length v1, v1
new-array v1, v1, [Ljavax/mail/internet/InternetAddress;
:goto_54
iget-object v3, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
array-length v3, v3
if-ge v0, v3, :cond_67
new-instance v3, Ljavax/mail/internet/InternetAddress;
iget-object v4, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
aput-object v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_54
:cond_67
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
invoke-virtual {v2, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
iget-object v0, p0, Lcom/twidroid/e/a;->j:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v2, v0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V
new-instance v0, Ljavax/mail/internet/MimeBodyPart;
invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V
iget-object v1, p0, Lcom/twidroid/e/a;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
iget-object v0, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
invoke-virtual {v2, v0}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V
invoke-static {v2}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
const/4 v0, 0x1
:goto_91
return v0
:cond_92
const-string v1, "MailSender"
const-string v2, "Error in params!"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_91
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->k:Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->k:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/e/a;->m:Z
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
return-void
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
return-object v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->f:Ljava/lang/String;
return-void
.end method
.method public e()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->e:[Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->f:Ljava/lang/String;
return-object v0
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->g:Ljava/lang/String;
return-void
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->g:Ljava/lang/String;
return-object v0
.end method
.method public g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->h:Ljava/lang/String;
return-void
.end method
.method public getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
.registers 4
new-instance v0, Ljavax/mail/PasswordAuthentication;
iget-object v1, p0, Lcom/twidroid/e/a;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/e/a;->d:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->h:Ljava/lang/String;
return-object v0
.end method
.method public h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->i:Ljava/lang/String;
return-void
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->i:Ljava/lang/String;
return-object v0
.end method
.method public i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/e/a;->j:Ljava/lang/String;
return-void
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->j:Ljava/lang/String;
return-object v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/e/a;->l:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/e/a;->m:Z
return v0
.end method
.method public m()Ljavax/mail/Multipart;
.registers 2
iget-object v0, p0, Lcom/twidroid/e/a;->n:Ljavax/mail/Multipart;
return-object v0
.end method