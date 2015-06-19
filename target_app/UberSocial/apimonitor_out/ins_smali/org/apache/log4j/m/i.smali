.class public Lorg/apache/log4j/m/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/xml/sax/ErrorHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, " and column "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public error(Lorg/xml/sax/SAXParseException;)V
.registers 3
const-string v0, "Continuable parsing error "
invoke-static {v0, p1}, Lorg/apache/log4j/m/i;->a(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
return-void
.end method
.method public fatalError(Lorg/xml/sax/SAXParseException;)V
.registers 3
const-string v0, "Fatal parsing error "
invoke-static {v0, p1}, Lorg/apache/log4j/m/i;->a(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
return-void
.end method
.method public warning(Lorg/xml/sax/SAXParseException;)V
.registers 3
const-string v0, "Parsing warning "
invoke-static {v0, p1}, Lorg/apache/log4j/m/i;->a(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
return-void
.end method