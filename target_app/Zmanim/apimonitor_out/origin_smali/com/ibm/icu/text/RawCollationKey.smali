.class public final Lcom/ibm/icu/text/RawCollationKey;
.super Lcom/ibm/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/ibm/icu/text/RawCollationKey;

    invoke-super {p0, p1}, Lcom/ibm/icu/util/ByteArrayWrapper;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v1, -0x1

    :goto_9
    return v1

    :cond_a
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    const/4 v1, 0x1

    goto :goto_9
.end method
