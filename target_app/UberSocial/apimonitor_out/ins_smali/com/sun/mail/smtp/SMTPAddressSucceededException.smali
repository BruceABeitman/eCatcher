.class public Lcom/sun/mail/smtp/SMTPAddressSucceededException;
.super Ljavax/mail/MessagingException;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x1036c343a388c3adL
.field protected addr:Ljavax/mail/internet/InternetAddress;
.field protected cmd:Ljava/lang/String;
.field protected rc:I
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
.registers 5
invoke-direct {p0, p4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->addr:Ljavax/mail/internet/InternetAddress;
iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->cmd:Ljava/lang/String;
iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->rc:I
return-void
.end method
.method public getAddress()Ljavax/mail/internet/InternetAddress;
.registers 2
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->addr:Ljavax/mail/internet/InternetAddress;
return-object v0
.end method
.method public getCommand()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->cmd:Ljava/lang/String;
return-object v0
.end method
.method public getReturnCode()I
.registers 2
iget v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->rc:I
return v0
.end method