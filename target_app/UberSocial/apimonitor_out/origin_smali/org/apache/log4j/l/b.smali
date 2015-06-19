.class public Lorg/apache/log4j/l/b;
.super Lorg/apache/log4j/al;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "RollOver"

.field public static final k:Ljava/lang/String; = "OK"


# instance fields
.field l:I

.field m:Lorg/apache/log4j/l/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/al;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/l/b;->l:I

    return-void
.end method


# virtual methods
.method public c(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/l/b;->l:I

    return-void
.end method

.method public i()V
    .registers 3

    invoke-super {p0}, Lorg/apache/log4j/al;->i()V

    iget v0, p0, Lorg/apache/log4j/l/b;->l:I

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/apache/log4j/l/b;->m:Lorg/apache/log4j/l/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/log4j/l/b;->m:Lorg/apache/log4j/l/d;

    invoke-virtual {v0}, Lorg/apache/log4j/l/d;->interrupt()V

    :cond_10
    new-instance v0, Lorg/apache/log4j/l/d;

    iget v1, p0, Lorg/apache/log4j/l/b;->l:I

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/l/d;-><init>(Lorg/apache/log4j/l/b;I)V

    iput-object v0, p0, Lorg/apache/log4j/l/b;->m:Lorg/apache/log4j/l/d;

    iget-object v0, p0, Lorg/apache/log4j/l/b;->m:Lorg/apache/log4j/l/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/l/d;->setDaemon(Z)V

    iget-object v0, p0, Lorg/apache/log4j/l/b;->m:Lorg/apache/log4j/l/d;

    invoke-virtual {v0}, Lorg/apache/log4j/l/d;->start()V

    :cond_24
    return-void
.end method

.method public z()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/l/b;->l:I

    return v0
.end method
