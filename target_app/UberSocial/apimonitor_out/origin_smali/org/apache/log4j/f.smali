.class public Lorg/apache/log4j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 4

    invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;

    move-result-object v0

    new-instance v1, Lorg/apache/log4j/i;

    new-instance v2, Lorg/apache/log4j/af;

    const-string v3, "%r [%t] %p %c %x - %m%n"

    invoke-direct {v2, v3}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/i;-><init>(Lorg/apache/log4j/u;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V

    return-void
.end method

.method public static a(Lorg/apache/log4j/a;)V
    .registers 2

    invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V

    return-void
.end method

.method public static b()V
    .registers 0

    invoke-static {}, Lorg/apache/log4j/x;->e()V

    return-void
.end method
