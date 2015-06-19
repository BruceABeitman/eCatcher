.class public Lcom/sun/mail/smtp/SMTPSSLTransport;
.super Lcom/sun/mail/smtp/SMTPTransport;
.source "SourceFile"
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
.registers 9
const-string v3, "smtps"
const/16 v4, 0x1d1
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
return-void
.end method