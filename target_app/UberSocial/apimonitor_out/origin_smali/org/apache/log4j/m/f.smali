.class Lorg/apache/log4j/m/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/m/g;


# instance fields
.field private final a:Lorg/xml/sax/InputSource;

.field private final b:Lorg/apache/log4j/m/a;


# direct methods
.method constructor <init>(Lorg/apache/log4j/m/a;Lorg/xml/sax/InputSource;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/m/f;->b:Lorg/apache/log4j/m/a;

    iput-object p2, p0, Lorg/apache/log4j/m/f;->a:Lorg/xml/sax/InputSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/m/f;->a:Lorg/xml/sax/InputSource;

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "input source ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/m/f;->a:Lorg/xml/sax/InputSource;

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
