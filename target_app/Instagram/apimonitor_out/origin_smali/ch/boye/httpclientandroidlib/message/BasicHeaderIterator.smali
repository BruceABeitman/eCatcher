.class public Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderIterator;


# instance fields
.field protected final allHeaders:[Lch/boye/httpclientandroidlib/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lch/boye/httpclientandroidlib/Header;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected findNext(I)I
    .registers 5

    const/4 v0, -0x1

    if-ge p1, v0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_15

    if-ge p1, v2, :cond_15

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v1

    goto :goto_a

    :cond_15
    if-eqz v1, :cond_3

    move v0, p1

    goto :goto_3
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    if-gez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
