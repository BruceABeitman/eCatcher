.class public Lorg/apache/log4j/f/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/f/a/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .registers 2

    invoke-static {p0, p0}, Lorg/apache/log4j/f/a/g;->a(Ljava/lang/Object;Lorg/apache/log4j/f/a/f;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/InputStreamReader;
    .registers 3

    invoke-static {p0, p0}, Lorg/apache/log4j/f/a/g;->a(Ljava/lang/Object;Lorg/apache/log4j/f/a/f;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_7
.end method

.method public d()Ljava/net/URL;
    .registers 2

    invoke-static {p0, p0}, Lorg/apache/log4j/f/a/g;->b(Ljava/lang/Object;Lorg/apache/log4j/f/a/f;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
