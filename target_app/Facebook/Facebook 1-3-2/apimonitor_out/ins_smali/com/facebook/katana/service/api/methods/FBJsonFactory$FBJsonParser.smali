.class  Lcom/facebook/katana/service/api/methods/FBJsonFactory$FBJsonParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParser;
.source "FBJson.java"
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/FBJsonFactory;Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
.registers 13
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FBJsonFactory$FBJsonParser;->this$0:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
move-object v0, p0
move-object v1, p2
move v2, p3
move-object v3, p4
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
return-void
.end method
.method public nextToken()Lorg/codehaus/jackson/JsonToken;
.registers 4
invoke-super {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
if-nez v0, :cond_e
new-instance v1, Ljava/io/IOException;
const-string v2, "Unexpected end of json input"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
return-object v0
.end method