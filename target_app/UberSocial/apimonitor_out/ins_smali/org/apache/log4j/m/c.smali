.class  Lorg/apache/log4j/m/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/m/g;
.field private final a:Ljava/net/URL;
.field private final b:Lorg/apache/log4j/m/a;
.method constructor <init>(Lorg/apache/log4j/m/a;Ljava/net/URL;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/m/c;->b:Lorg/apache/log4j/m/a;
iput-object p2, p0, Lorg/apache/log4j/m/c;->a:Ljava/net/URL;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
.registers 5
iget-object v0, p0, Lorg/apache/log4j/m/c;->a:Ljava/net/URL;
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
:try_start_e
new-instance v0, Lorg/xml/sax/InputSource;
invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
iget-object v2, p0, Lorg/apache/log4j/m/c;->a:Ljava/net/URL;
invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
:try_end_1f
.catchall {:try_start_e .. :try_end_1f} :catchall_24
move-result-object v0
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
return-object v0
:catchall_24
move-exception v0
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "url ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/m/c;->a:Ljava/net/URL;
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method