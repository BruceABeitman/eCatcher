.class public Lcom/sun/mail/smtp/SMTPAddressFailedException;
.super Ljavax/mail/SendFailedException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0xb2b55b6465c5351L
.field protected addr:Ljavax/mail/internet/InternetAddress;
.field protected cmd:Ljava/lang/String;
.field protected rc:I
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
.registers 5
invoke-direct {p0, p4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->addr:Ljavax/mail/internet/InternetAddress;
iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->cmd:Ljava/lang/String;
iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->rc:I
return-void
.end method
.method public getAddress()Ljavax/mail/internet/InternetAddress;
.registers 2
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->addr:Ljavax/mail/internet/InternetAddress;
return-object v0
.end method
.method public getCommand()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->cmd:Ljava/lang/String;
return-object v0
.end method
.method public getReturnCode()I
.registers 2
iget v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->rc:I
return v0
.end method