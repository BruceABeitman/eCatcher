.class public Lorg/apache/log4j/l/f;
.super Lorg/apache/log4j/k/f;
.source "SourceFile"


# instance fields
.field e:Z

.field f:Lorg/apache/log4j/v;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/k/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/l/f;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/log4j/l/f;->f:Lorg/apache/log4j/v;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/l/f;->f:Lorg/apache/log4j/v;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v1

    :goto_14
    if-eqz v2, :cond_6

    iget-boolean v0, p0, Lorg/apache/log4j/l/f;->e:Z

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_6

    :cond_1c
    const/4 v0, -0x1

    goto :goto_6

    :cond_1e
    move v2, v0

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/l/f;->f:Lorg/apache/log4j/v;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/l/f;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/l/f;->f:Lorg/apache/log4j/v;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/l/f;->f:Lorg/apache/log4j/v;

    invoke-virtual {v0}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/l/f;->e:Z

    return v0
.end method
