.class public abstract Ld/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x3db29529c4356102L


# instance fields
.field private transient b:Lorg/apache/commons/codec/binary/Base64;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Ld/a/e/c;->b:Lorg/apache/commons/codec/binary/Base64;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Ld/a/e/c;->b:Lorg/apache/commons/codec/binary/Base64;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ld/a/d/b;Ld/a/d/a;)Ljava/lang/String;
.end method

.method protected a([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/a/e/c;->b:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v1, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld/a/e/c;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/e/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ld/a/e/c;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/e/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Ld/a/e/c;->b:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method
