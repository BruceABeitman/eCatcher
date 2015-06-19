.class public Lcom/fsck/k9/mail/internet/MimeBodyPart;
.super Lcom/fsck/k9/mail/BodyPart;
.source "MimeBodyPart.java"
.field protected mBody:Lcom/fsck/k9/mail/Body;
.field protected mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
.field protected mSize:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/mail/Body;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/fsck/k9/mail/BodyPart;-><init>()V
new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
if-eqz p2, :cond_11
const-string v0, "Content-Type"
invoke-virtual {p0, v0, p2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setBody(Lcom/fsck/k9/mail/Body;)V
return-void
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public getBody()Lcom/fsck/k9/mail/Body;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;
return-object v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 3
const-string v1, "Content-Type"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_b
const-string v1, "text/plain"
:goto_a
return-object v1
:cond_b
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
goto :goto_a
.end method
.method public getDisposition()Ljava/lang/String;
.registers 3
const-string v1, "Content-Disposition"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
move-object v1, v0
goto :goto_9
.end method
.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getMimeType()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSize()I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mSize:I
return v0
.end method
.method public isMimeType(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V
return-void
.end method
.method public setBody(Lcom/fsck/k9/mail/Body;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const-string v9, "Content-Type"
iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;
instance-of v4, p1, Lcom/fsck/k9/mail/Multipart;
if-eqz v4, :cond_1b
move-object v0, p1
check-cast v0, Lcom/fsck/k9/mail/Multipart;
move-object v2, v0
invoke-virtual {v2, p0}, Lcom/fsck/k9/mail/Multipart;->setParent(Lcom/fsck/k9/mail/Part;)V
const-string v4, "Content-Type"
invoke-virtual {v2}, Lcom/fsck/k9/mail/Multipart;->getContentType()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v9, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_1a
:cond_1a
return-void
:cond_1b
instance-of v4, p1, Lcom/fsck/k9/mail/internet/TextBody;
if-eqz v4, :cond_1a
const-string v4, "%s;\n charset=utf-8"
new-array v5, v8, [Ljava/lang/Object;
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;
move-result-object v4
const-string v5, "name"
invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_54
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ";\n name=\"%s\""
new-array v6, v8, [Ljava/lang/Object;
aput-object v3, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_54
const-string v4, "Content-Type"
invoke-virtual {p0, v9, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "Content-Transfer-Encoding"
const-string v5, "base64"
invoke-virtual {p0, v4, v5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 5
new-instance v0, Ljava/io/BufferedWriter;
new-instance v1, Ljava/io/OutputStreamWriter;
invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
const/16 v2, 0x400
invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;
invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V
:cond_22
return-void
.end method