.class public Lorg/apache/log4j/l/g;
.super Lorg/apache/log4j/k/f;
.source "SourceFile"


# instance fields
.field e:Z

.field f:Lorg/apache/log4j/v;

.field g:Lorg/apache/log4j/v;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/k/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/l/g;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)I
    .registers 5

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/log4j/l/g;->f:Lorg/apache/log4j/v;

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/l/g;->f:Lorg/apache/log4j/v;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lorg/apache/log4j/l/g;->g:Lorg/apache/log4j/v;

    if-eqz v1, :cond_26

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/v;->c()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/l/g;->g:Lorg/apache/log4j/v;

    invoke-virtual {v2}, Lorg/apache/log4j/v;->c()I

    move-result v2

    if-gt v1, v2, :cond_11

    :cond_26
    iget-boolean v0, p0, Lorg/apache/log4j/l/g;->e:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_11

    :cond_2c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(Lorg/apache/log4j/v;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/l/g;->g:Lorg/apache/log4j/v;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/l/g;->e:Z

    return-void
.end method

.method public b()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/l/g;->g:Lorg/apache/log4j/v;

    return-object v0
.end method

.method public b(Lorg/apache/log4j/v;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/l/g;->f:Lorg/apache/log4j/v;

    return-void
.end method

.method public c()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/l/g;->f:Lorg/apache/log4j/v;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/l/g;->e:Z

    return v0
.end method
