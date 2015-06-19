.class Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"

# interfaces
.implements Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UPropertyAliases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContiguousEnumToShort"
.end annotation


# instance fields
.field enumLimit:I

.field enumStart:I

.field offsetArray:[S


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumStart:I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumLimit:I

    iget v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumLimit:I

    iget v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumStart:I

    sub-int v0, v2, v3

    new-array v2, v0, [S

    iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->offsetArray:[S

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->offsetArray:[S

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readShort()S

    move-result v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    return-void
.end method


# virtual methods
.method public getShort(I)S
    .registers 5

    iget v0, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumStart:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumLimit:I

    if-lt p1, v0, :cond_39

    :cond_8
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid enum. enumStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enumLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enumProbe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->offsetArray:[S

    iget v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->enumStart:I

    sub-int v1, p1, v1

    aget-short v0, v0, v1

    return v0
.end method
