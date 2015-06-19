.class public abstract Lcom/squareup/wire/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field unknownFieldMap:Lcom/squareup/wire/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/Message;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/squareup/wire/Message;->a(Lcom/squareup/wire/Message;)Lcom/squareup/wire/r;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/squareup/wire/r;

    invoke-static {p1}, Lcom/squareup/wire/Message;->a(Lcom/squareup/wire/Message;)Lcom/squareup/wire/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/r;-><init>(Lcom/squareup/wire/r;)V

    iput-object v0, p0, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;

    :cond_16
    return-void
.end method

.method protected static checkForNulls(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1e
    return-object p0
.end method

.method private ensureUnknownFieldMap()Lcom/squareup/wire/r;
    .registers 2

    iget-object v0, p0, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;

    if-nez v0, :cond_b

    new-instance v0, Lcom/squareup/wire/r;

    invoke-direct {v0}, Lcom/squareup/wire/r;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;

    :cond_b
    iget-object v0, p0, Lcom/squareup/wire/g;->unknownFieldMap:Lcom/squareup/wire/r;

    return-object v0
.end method


# virtual methods
.method public addFixed32(II)V
    .registers 5

    invoke-direct {p0}, Lcom/squareup/wire/g;->ensureUnknownFieldMap()Lcom/squareup/wire/r;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/r;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public addFixed64(IJ)V
    .registers 6

    invoke-direct {p0}, Lcom/squareup/wire/g;->ensureUnknownFieldMap()Lcom/squareup/wire/r;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/r;->b(ILjava/lang/Long;)V

    return-void
.end method

.method public addLengthDelimited(ILokio/ByteString;)V
    .registers 4

    invoke-direct {p0}, Lcom/squareup/wire/g;->ensureUnknownFieldMap()Lcom/squareup/wire/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/r;->a(ILokio/ByteString;)V

    return-void
.end method

.method public addVarint(IJ)V
    .registers 6

    invoke-direct {p0}, Lcom/squareup/wire/g;->ensureUnknownFieldMap()Lcom/squareup/wire/r;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/r;->a(ILjava/lang/Long;)V

    return-void
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public checkRequiredFields()V
    .registers 3

    invoke-static {}, Lcom/squareup/wire/Message;->d()Lcom/squareup/wire/x;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->b(Ljava/lang/Class;)Lcom/squareup/wire/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/a;->a(Lcom/squareup/wire/g;)V

    return-void
.end method
