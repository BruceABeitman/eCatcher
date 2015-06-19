.class  Lorg/apache/log4j/m/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/m/g;
.field private final a:Ljava/lang/String;
.field private final b:Lorg/apache/log4j/m/a;
.method constructor <init>(Lorg/apache/log4j/m/a;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/m/b;->b:Lorg/apache/log4j/m/a;
iput-object p2, p0, Lorg/apache/log4j/m/b;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
.registers 4
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lorg/apache/log4j/m/b;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "file ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/m/b;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method