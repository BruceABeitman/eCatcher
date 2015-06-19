.class Lcom/facebook/katana/service/api/methods/FBJsonFactory;
.super Lorg/codehaus/jackson/JsonFactory;
.source "FBJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/FBJsonFactory$FBJsonParser;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/katana/service/api/methods/FBJsonFactory$FBJsonParser;

    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->getParserFeatures()I

    move-result v3

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FBJsonFactory$FBJsonParser;-><init>(Lcom/facebook/katana/service/api/methods/FBJsonFactory;Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method
