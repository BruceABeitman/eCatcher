.class public final Lorg/apache/log4j/i/b;
.super Lorg/apache/log4j/c/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/r;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Lorg/apache/log4j/c/q;
    .registers 3

    new-instance v0, Lorg/apache/log4j/i/a;

    iget-object v1, p0, Lorg/apache/log4j/i/b;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
