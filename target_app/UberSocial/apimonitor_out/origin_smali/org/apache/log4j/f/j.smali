.class public Lorg/apache/log4j/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/f/b/d;

    invoke-static {}, Lorg/apache/log4j/f/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/d;-><init>(Ljava/util/List;)V

    invoke-static {}, Lorg/apache/log4j/f/c;->o()I

    move-result v1

    invoke-static {}, Lorg/apache/log4j/f/c;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/d;->a(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/d;->c(I)V

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->a()V

    return-void
.end method
