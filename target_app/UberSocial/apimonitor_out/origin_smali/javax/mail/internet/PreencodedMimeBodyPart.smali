.class public Ljavax/mail/internet/PreencodedMimeBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "SourceFile"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected updateHeaders()V
    .registers 2

    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5

    instance-of v0, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    move-object v1, v0

    :goto_8
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_20
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    goto :goto_8

    :cond_27
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_c
.end method
