.class public Lcom/sun/mail/imap/protocol/IMAPResponse;
.super Lcom/sun/mail/iap/Response;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBAD()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBYE()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    :try_start_27
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Response;)V

    iget-object v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iget v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return-void
.end method

.method public static readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;
    .registers 3

    new-instance v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    const-string v0, "FETCH"

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    :goto_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto :goto_12
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return v0
.end method

.method public keyEquals(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readSimpleList()[Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v0, v0, v2

    const/16 v2, 0x28

    if-eq v0, v2, :cond_10

    move-object v0, v1

    :goto_f
    return-object v0

    :cond_10
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    :goto_1d
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_48

    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    if-le v3, v0, :cond_36

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v0, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_36
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_68

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_f

    :cond_48
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_61

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v0, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    :cond_61
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    goto :goto_1d

    :cond_68
    move-object v0, v1

    goto :goto_f
.end method
