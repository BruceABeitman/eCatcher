.class public Lcom/sun/mail/dsn/MessageHeaders;
.super Ljavax/mail/internet/MimeMessage;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B
return-void
.end method
.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V
iput-object p1, p0, Lcom/sun/mail/dsn/MessageHeaders;->headers:Ljavax/mail/internet/InternetHeaders;
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B
return-void
.end method
.method protected getContentStream()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public getSize()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setDataHandler(Ljavax/activation/DataHandler;)V
.registers 4
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "Can\'t set content for MessageHeaders"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method