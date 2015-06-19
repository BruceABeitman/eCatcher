.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 11

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    if-nez v0, :cond_12

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    :cond_12
    array-length v1, v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    :goto_16
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ne v6, v7, :cond_22

    :cond_1c
    :goto_1c
    if-ne v6, v7, :cond_60

    if-nez v1, :cond_60

    const/4 v0, 0x0

    :goto_21
    return-object v0

    :cond_22
    if-eq v6, v8, :cond_1c

    if-ne v6, v9, :cond_44

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v9, :cond_6a

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    move v4, v0

    :goto_31
    if-eq v4, v8, :cond_1c

    instance-of v0, v5, Ljava/io/PushbackInputStream;

    if-nez v0, :cond_68

    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    :goto_3e
    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1c

    :cond_44
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_65

    add-int/lit16 v0, v1, 0x80

    new-array v4, v0, [C

    array-length v0, v4

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, -0x1

    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    :goto_57
    add-int/lit8 v0, v1, 0x1

    int-to-char v6, v6

    aput-char v6, v4, v1

    move v1, v0

    move v0, v3

    move-object v3, v4

    goto :goto_16

    :cond_60
    invoke-static {v3, v2, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_65
    move-object v4, v3

    move v3, v0

    goto :goto_57

    :cond_68
    move-object v0, v5

    goto :goto_3e

    :cond_6a
    move v4, v0

    goto :goto_31
.end method
