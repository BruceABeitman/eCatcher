.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getResponseBuffer()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget-object v0, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .registers 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "* BYE JavaMail Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Lcom/sun/mail/iap/Response;->type:I

    return-object v1
.end method

.method private parse()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_4d

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_30
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string v0, ""

    :cond_3a
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    :goto_48
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    goto :goto_19

    :cond_4d
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    goto :goto_30

    :cond_5a
    const-string v2, "NO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_48

    :cond_69
    const-string v2, "BAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_48

    :cond_78
    const-string v2, "BYE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_48

    :cond_87
    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_48
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .registers 9

    const/16 v5, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_5a

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_18
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v3

    if-ne v1, v5, :cond_2f

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eqz p2, :cond_50

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_39

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    :cond_39
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v1, v0, :cond_47

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    :cond_47
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_18

    :cond_50
    new-instance v1, Lcom/sun/mail/iap/ByteArray;

    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    move-object v0, v1

    goto :goto_2e

    :cond_5a
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_97

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_64
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_88

    :try_start_6e
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v2, v1, v3}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_75} :catch_bb

    move-result v1

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v0, 0x3

    add-int v0, v2, v1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eqz p2, :cond_8f

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_88
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_64

    :cond_8f
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {v0, v3, v2, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_2e

    :cond_97
    if-eqz p1, :cond_ab

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2e

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {v0, v2, v1, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_2e

    :cond_ab
    const/16 v2, 0x4e

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2e

    :cond_b3
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto/16 :goto_2e

    :catch_bb
    move-exception v1

    goto/16 :goto_2e
.end method


# virtual methods
.method public getRest()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isBYE()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isContinuation()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNO()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOK()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSynthetic()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTagged()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isUnTagged()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public peekByte()B
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public readAtom()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtom(C)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_d
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_3d

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_3d

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x29

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x25

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_3d

    if-eqz p1, :cond_46

    if-ne v1, p1, :cond_46

    :cond_3d
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_46
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_d
.end method

.method public readAtomString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readByte()B
    .registers 4

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    :goto_18
    return-object v0

    :cond_19
    invoke-direct {p0, v1, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    goto :goto_18
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public readLong()J
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_5
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_18

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_18
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2d

    :try_start_1c
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_2c

    move-result-wide v0

    :goto_24
    return-wide v0

    :cond_25
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_5

    :catch_2c
    move-exception v0

    :cond_2d
    const-wide/16 v0, -0x1

    goto :goto_24
.end method

.method public readNumber()I
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_5
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_18

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_18
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2d

    :try_start_1c
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_2c

    move-result v0

    :goto_24
    return v0

    :cond_25
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_5

    :catch_2c
    move-exception v0

    :cond_2d
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public readString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_d
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1b

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-ne v1, p1, :cond_24

    :cond_1b
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_24
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_d
.end method

.method public readStringList()[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :cond_1a
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1a

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_e

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    return-void
.end method

.method public skip(I)V
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    return-void
.end method

.method public skipSpaces()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11

    :cond_10
    return-void

    :cond_11
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public skipToken()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    :cond_10
    return-void

    :cond_11
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
