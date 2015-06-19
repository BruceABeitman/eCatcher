.class Lorg/apache/log4j/m/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/m/g;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lorg/apache/log4j/m/a;


# direct methods
.method constructor <init>(Lorg/apache/log4j/m/a;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/m/d;->b:Lorg/apache/log4j/m/a;

    iput-object p2, p0, Lorg/apache/log4j/m/d;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
    .registers 4

    new-instance v0, Lorg/xml/sax/InputSource;

    iget-object v1, p0, Lorg/apache/log4j/m/d;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v1, "dummy://log4j.dtd"

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "input stream ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/m/d;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
