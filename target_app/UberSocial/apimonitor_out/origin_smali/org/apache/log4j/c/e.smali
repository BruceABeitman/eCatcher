.class public Lorg/apache/log4j/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lorg/apache/log4j/k/k;

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput p1, p0, Lorg/apache/log4j/c/e;->e:I

    new-array v0, p1, [Lorg/apache/log4j/k/k;

    iput-object v0, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iput v1, p0, Lorg/apache/log4j/c/e;->b:I

    iput v1, p0, Lorg/apache/log4j/c/e;->c:I

    iput v1, p0, Lorg/apache/log4j/c/e;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/c/e;->e:I

    return v0
.end method

.method public a(I)Lorg/apache/log4j/k/k;
    .registers 5

    if-ltz p1, :cond_6

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    if-lt p1, v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v1, p0, Lorg/apache/log4j/c/e;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/log4j/c/e;->e:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v1, p0, Lorg/apache/log4j/c/e;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lorg/apache/log4j/c/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/e;->c:I

    iget v1, p0, Lorg/apache/log4j/c/e;->e:I

    if-ne v0, v1, :cond_13

    iput v2, p0, Lorg/apache/log4j/c/e;->c:I

    :cond_13
    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    iget v1, p0, Lorg/apache/log4j/c/e;->e:I

    if-ge v0, v1, :cond_20

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/e;->d:I

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget v0, p0, Lorg/apache/log4j/c/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/e;->b:I

    iget v1, p0, Lorg/apache/log4j/c/e;->e:I

    if-ne v0, v1, :cond_1f

    iput v2, p0, Lorg/apache/log4j/c/e;->b:I

    goto :goto_1f
.end method

.method public b()Lorg/apache/log4j/k/k;
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    if-lez v0, :cond_25

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/log4j/c/e;->d:I

    iget-object v0, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v2, p0, Lorg/apache/log4j/c/e;->b:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v3, p0, Lorg/apache/log4j/c/e;->b:I

    aput-object v1, v2, v3

    iget v1, p0, Lorg/apache/log4j/c/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/c/e;->b:I

    iget v2, p0, Lorg/apache/log4j/c/e;->e:I

    if-ne v1, v2, :cond_24

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/c/e;->b:I

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    move-object v0, v1

    goto :goto_24
.end method

.method public b(I)V
    .registers 9

    const/4 v2, 0x0

    if-gez p1, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative array size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    if-ne p1, v0, :cond_27

    :goto_26
    return-void

    :cond_27
    new-array v3, p1, [Lorg/apache/log4j/k/k;

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    if-ge p1, v0, :cond_4f

    move v0, p1

    :goto_2e
    move v1, v2

    :goto_2f
    if-ge v1, v0, :cond_52

    iget-object v4, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v5, p0, Lorg/apache/log4j/c/e;->b:I

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iget v5, p0, Lorg/apache/log4j/c/e;->b:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iget v4, p0, Lorg/apache/log4j/c/e;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/log4j/c/e;->b:I

    iget v5, p0, Lorg/apache/log4j/c/e;->d:I

    if-ne v4, v5, :cond_4c

    iput v2, p0, Lorg/apache/log4j/c/e;->b:I

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4f
    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    goto :goto_2e

    :cond_52
    iput-object v3, p0, Lorg/apache/log4j/c/e;->a:[Lorg/apache/log4j/k/k;

    iput v2, p0, Lorg/apache/log4j/c/e;->b:I

    iput v0, p0, Lorg/apache/log4j/c/e;->d:I

    iput p1, p0, Lorg/apache/log4j/c/e;->e:I

    if-ne v0, p1, :cond_5f

    iput v2, p0, Lorg/apache/log4j/c/e;->c:I

    goto :goto_26

    :cond_5f
    iput v0, p0, Lorg/apache/log4j/c/e;->c:I

    goto :goto_26
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/c/e;->d:I

    return v0
.end method
