.class public abstract Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "DOMDeserializer.java"
.field private static final _parserFactory:Ljavax/xml/parsers/DocumentBuilderFactory; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;->_parserFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public abstract _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method protected final parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
.registers 6
:try_start_0
sget-object v0, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;->_parserFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
move-result-object v0
new-instance v1, Lorg/xml/sax/InputSource;
new-instance v2, Ljava/io/StringReader;
invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15
move-result-object v0
return-object v0
:catch_15
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to parse JSON String as XML: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method