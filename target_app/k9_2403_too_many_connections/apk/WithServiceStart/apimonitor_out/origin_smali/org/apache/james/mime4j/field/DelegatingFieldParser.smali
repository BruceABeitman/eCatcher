.class public Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

.field private parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField$Parser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredField$Parser;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method


# virtual methods
.method public getParser(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;
    .registers 5

    iget-object v1, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/FieldParser;

    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    :goto_10
    return-object v1

    :cond_11
    move-object v1, v0

    goto :goto_10
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->getParser(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    return-object v1
.end method

.method public setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
