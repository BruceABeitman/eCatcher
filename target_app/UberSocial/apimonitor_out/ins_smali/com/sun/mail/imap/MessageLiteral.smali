.class  Lcom/sun/mail/imap/MessageLiteral;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/iap/Literal;
.field private buf:[B
.field private msg:Ljavax/mail/Message;
.field private msgSize:I
.method public constructor <init>(Ljavax/mail/Message;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I
iput-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;
new-instance v0, Lcom/sun/mail/imap/LengthCounter;
invoke-direct {v0, p2}, Lcom/sun/mail/imap/LengthCounter;-><init>(I)V
new-instance v1, Lcom/sun/mail/util/CRLFOutputStream;
invoke-direct {v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getSize()I
move-result v1
iput v1, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I
invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getBytes()[B
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B
return-void
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I
return v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B
const/4 v1, 0x0
iget v2, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I
invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
:goto_c
return-void
:cond_d
new-instance v0, Lcom/sun/mail/util/CRLFOutputStream;
invoke-direct {v0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;
invoke-virtual {v1, v0}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
:try_end_17
.catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_17} :catch_18
goto :goto_c
:catch_18
move-exception v0
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "MessagingException while appending message: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method