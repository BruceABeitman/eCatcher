.class public Lcom/fsck/k9/mail/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"
.field public static final HEADER_ANDROID_ATTACHMENT_STORE_DATA:Ljava/lang/String; = "X-Android-Attachment-StoreData"
.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"
.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"
.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"
.field private static final writeOmitFields:[Ljava/lang/String;
.field protected mFields:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "X-Android-Attachment-StoreData"
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/mail/internet/MimeHeader;->writeOmitFields:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
return-void
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
new-instance v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;
invoke-static {p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p0, p1, v2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;-><init>(Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
const/4 v1, 0x0
aget-object v1, v0, v1
goto :goto_7
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;
iget-object v3, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_b
iget-object v3, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_25
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_2d
const/4 v3, 0x0
:goto_2c
return-object v3
:cond_2d
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
move-object v3, p0
goto :goto_2c
.end method
.method public getHeaderNames()Ljava/util/List;
.registers 5
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;
iget-object v3, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_1d
return-object v2
.end method
.method public hasToBeEncoded(Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x0
:goto_1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_20
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x20
if-lt v0, v2, :cond_13
const/16 v2, 0x7e
if-ge v2, v0, :cond_1d
:cond_13
const/16 v2, 0xa
if-eq v0, v2, :cond_1d
const/16 v2, 0xd
if-eq v0, v2, :cond_1d
const/4 v2, 0x1
:goto_1c
return v2
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_20
const/4 v2, 0x0
goto :goto_1c
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;
iget-object v3, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_b
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
return-void
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 8
new-instance v3, Ljava/io/BufferedWriter;
new-instance v4, Ljava/io/OutputStreamWriter;
invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
const/16 v5, 0x400
invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
iget-object v4, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_12
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_5b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;
sget-object v4, Lcom/fsck/k9/mail/internet/MimeHeader;->writeOmitFields:[Ljava/lang/String;
iget-object v5, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;
invoke-static {v4, v5}, Lcom/fsck/k9/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_12
iget-object v2, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MimeHeader;->hasToBeEncoded(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_38
iget-object v4, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;
sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
invoke-static {v4, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
move-result-object v2
:cond_38
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\r\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
goto :goto_12
:cond_5b
invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
return-void
.end method