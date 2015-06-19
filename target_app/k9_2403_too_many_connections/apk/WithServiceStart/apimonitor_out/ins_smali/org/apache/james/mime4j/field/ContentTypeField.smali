.class public Lorg/apache/james/mime4j/field/ContentTypeField;
.super Lorg/apache/james/mime4j/field/Field;
.source "ContentTypeField.java"
.field public static final PARAM_BOUNDARY:Ljava/lang/String; = "boundary"
.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"
.field public static final TYPE_MESSAGE_RFC822:Ljava/lang/String; = "message/rfc822"
.field public static final TYPE_MULTIPART_DIGEST:Ljava/lang/String; = "multipart/digest"
.field public static final TYPE_MULTIPART_PREFIX:Ljava/lang/String; = "multipart/"
.field public static final TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"
.field private mimeType:Ljava/lang/String;
.field private parameters:Ljava/util/Map;
.field private parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V
.registers 8
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, ""
iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
iput-object p4, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;
iput-object p5, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
iput-object p6, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
return-void
.end method
.method public static getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_17
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_17
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:cond_17
const-string v0, "us-ascii"
goto :goto_16
.end method
.method public static getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
.registers 3
if-eqz p0, :cond_18
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMultipart()Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_28
:cond_18
if-eqz p1, :cond_25
const-string v0, "multipart/digest"
invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
const-string v0, "message/rfc822"
:goto_24
return-object v0
:cond_25
const-string v0, "text/plain"
goto :goto_24
:cond_28
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;
move-result-object v0
goto :goto_24
.end method
.method public getBoundary()Ljava/lang/String;
.registers 2
const-string v0, "boundary"
invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCharset()Ljava/lang/String;
.registers 2
const-string v0, "charset"
invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getMimeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;
return-object v0
.end method
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
if-eqz v0, :cond_12
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
move-object v0, p0
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public getParameters()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
goto :goto_a
.end method
.method public getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
return-object v0
.end method
.method public isMimeType(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public isMultipart()Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;
const-string v1, "multipart/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method