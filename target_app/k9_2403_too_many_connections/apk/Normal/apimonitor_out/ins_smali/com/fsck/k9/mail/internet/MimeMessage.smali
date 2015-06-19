.class public Lcom/fsck/k9/mail/internet/MimeMessage;
.super Lcom/fsck/k9/mail/Message;
.source "MimeMessage.java"
.field protected mBcc:[Lcom/fsck/k9/mail/Address;
.field protected mBody:Lcom/fsck/k9/mail/Body;
.field protected mCc:[Lcom/fsck/k9/mail/Address;
.field protected mDateFormat:Ljava/text/SimpleDateFormat;
.field protected mFrom:[Lcom/fsck/k9/mail/Address;
.field protected mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
.field protected mInReplyTo:[Ljava/lang/String;
.field protected mMessageId:Ljava/lang/String;
.field protected mReferences:[Ljava/lang/String;
.field protected mReplyTo:[Lcom/fsck/k9/mail/Address;
.field protected mSentDate:Ljava/util/Date;
.field protected mSize:I
.field protected mTo:[Lcom/fsck/k9/mail/Address;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/Message;-><init>()V
new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0}, Lcom/fsck/k9/mail/Message;-><init>()V
new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V
return-void
.end method
.method private generateMessageId()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "@email.android.com>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public addSentDate(Ljava/util/Date;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;
if-nez v0, :cond_f
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;
:cond_f
const-string v0, "Date"
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalSentDate(Ljava/util/Date;)V
return-void
.end method
.method public getBody()Lcom/fsck/k9/mail/Body;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;
return-object v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 3
const-string v1, "Content-Type"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
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
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
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
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getFrom()[Lcom/fsck/k9/mail/Address;
.registers 3
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
if-nez v1, :cond_26
const-string v1, "From"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_20
:cond_16
const-string v1, "Sender"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_20
invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
:cond_26
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
return-object v1
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeaderNames()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeaderNames()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getMessageId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
if-nez v0, :cond_c
const-string v0, "Message-ID"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
:cond_c
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
if-nez v0, :cond_17
invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->generateMessageId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V
:cond_17
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
return-object v0
.end method
.method public getMimeType()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getReceivedDate()Ljava/util/Date;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
.registers 4
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_1b
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
if-nez v0, :cond_18
const-string v0, "To"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
:cond_18
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
:goto_1a
return-object v0
:cond_1b
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_36
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
if-nez v0, :cond_33
const-string v0, "CC"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
:cond_33
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
goto :goto_1a
:cond_36
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_51
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
if-nez v0, :cond_4e
const-string v0, "BCC"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
:cond_4e
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
goto :goto_1a
:cond_51
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "Unrecognized recipient type."
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getReferences()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;
if-nez v0, :cond_c
const-string v0, "References"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;
:cond_c
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;
return-object v0
.end method
.method public getReplyTo()[Lcom/fsck/k9/mail/Address;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
if-nez v0, :cond_14
const-string v0, "Reply-to"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
:cond_14
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
return-object v0
.end method
.method public getSentDate()Ljava/util/Date;
.registers 4
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
if-nez v1, :cond_2d
:try_start_4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Date: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Date"
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
move-result-object v0
check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_30
:goto_2d
:cond_2d
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
return-object v1
:catch_30
move-exception v1
goto :goto_2d
.end method
.method public getSize()I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I
return v0
.end method
.method public getSubject()Ljava/lang/String;
.registers 2
const-string v0, "Subject"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected parse(Ljava/io/InputStream;)V
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->clear()V
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInReplyTo:[Ljava/lang/String;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;
new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;
invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V
new-instance v1, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;
invoke-direct {v1, p0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;)V
invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;
invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V
return-void
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V
return-void
.end method
.method public saveChanges()V
.registers 3
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "saveChanges not yet implemented"
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setBody(Lcom/fsck/k9/mail/Body;)V
.registers 9
const-string v6, "Content-Type"
iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;
instance-of v2, p1, Lcom/fsck/k9/mail/Multipart;
if-eqz v2, :cond_20
move-object v0, p1
check-cast v0, Lcom/fsck/k9/mail/Multipart;
move-object v1, v0
invoke-virtual {v1, p0}, Lcom/fsck/k9/mail/Multipart;->setParent(Lcom/fsck/k9/mail/Part;)V
const-string v2, "Content-Type"
invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getContentType()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v6, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "MIME-Version"
const-string v3, "1.0"
invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f
:goto_1f
return-void
:cond_20
instance-of v2, p1, Lcom/fsck/k9/mail/internet/TextBody;
if-eqz v2, :cond_1f
const-string v2, "Content-Type"
const-string v2, "%s;\n charset=utf-8"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v6, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "Content-Transfer-Encoding"
const-string v3, "base64"
invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
.end method
.method public setFrom(Lcom/fsck/k9/mail/Address;)V
.registers 4
if-eqz p1, :cond_14
const-string v0, "From"
invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
new-array v0, v0, [Lcom/fsck/k9/mail/Address;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
:goto_13
return-void
:cond_14
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
goto :goto_13
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setInReplyTo(Ljava/lang/String;)V
.registers 3
const-string v0, "In-Reply-To"
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setInternalSentDate(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
return-void
.end method
.method public setMessageId(Ljava/lang/String;)V
.registers 3
const-string v0, "Message-ID"
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;
return-void
.end method
.method public setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
.registers 8
const/4 v1, 0x0
const-string v4, "To"
const-string v3, "CC"
const-string v2, "BCC"
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_24
if-eqz p2, :cond_10
array-length v0, p2
if-nez v0, :cond_18
:cond_10
const-string v0, "To"
invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
:goto_17
return-void
:cond_18
const-string v0, "To"
invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v4, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;
goto :goto_17
:cond_24
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_41
if-eqz p2, :cond_2d
array-length v0, p2
if-nez v0, :cond_35
:cond_2d
const-string v0, "CC"
invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
goto :goto_17
:cond_35
const-string v0, "CC"
invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v3, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;
goto :goto_17
:cond_41
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_5e
if-eqz p2, :cond_4a
array-length v0, p2
if-nez v0, :cond_52
:cond_4a
const-string v0, "BCC"
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
goto :goto_17
:cond_52
const-string v0, "BCC"
invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
goto :goto_17
:cond_5e
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "Unrecognized recipient type."
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setReferences(Ljava/lang/String;)V
.registers 3
const-string v0, "References"
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
.registers 4
const-string v1, "Reply-to"
if-eqz p1, :cond_7
array-length v0, p1
if-nez v0, :cond_10
:cond_7
const-string v0, "Reply-to"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
:goto_f
return-void
:cond_10
const-string v0, "Reply-to"
invoke-static {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
goto :goto_f
.end method
.method public setSentDate(Ljava/util/Date;)V
.registers 3
const-string v0, "Date"
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V
return-void
.end method
.method public setSubject(Ljava/lang/String;)V
.registers 3
const-string v0, "Subject"
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 5
new-instance v0, Ljava/io/BufferedWriter;
new-instance v1, Ljava/io/OutputStreamWriter;
invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
const/16 v2, 0x400
invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;
invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;
invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V
:cond_22
return-void
.end method