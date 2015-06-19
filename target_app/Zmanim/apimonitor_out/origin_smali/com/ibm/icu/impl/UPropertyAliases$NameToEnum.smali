.class Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UPropertyAliases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameToEnum"
.end annotation


# instance fields
.field enumArray:[I

.field nameArray:[S

.field final synthetic this$0:Lcom/ibm/icu/impl/UPropertyAliases;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UPropertyAliases;Lcom/ibm/icu/impl/UPropertyAliases$Builder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->this$0:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->enumArray:[I

    new-array v2, v0, [S

    iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->nameArray:[S

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->enumArray:[I

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_31

    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->nameArray:[S

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readShort()S

    move-result v3

    #calls: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringOffsetToIndex(S)S
    invoke-static {p2, v3}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$400(Lcom/ibm/icu/impl/UPropertyAliases$Builder;S)S

    move-result v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_31
    return-void
.end method


# virtual methods
.method getEnum(Ljava/lang/String;)I
    .registers 7

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->nameArray:[S

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->this$0:Lcom/ibm/icu/impl/UPropertyAliases;

    #getter for: Lcom/ibm/icu/impl/UPropertyAliases;->stringPool:[Ljava/lang/String;
    invoke-static {v2}, Lcom/ibm/icu/impl/UPropertyAliases;->access$300(Lcom/ibm/icu/impl/UPropertyAliases;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->nameArray:[S

    aget-short v3, v3, v1

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1b
    if-gez v0, :cond_36

    :cond_1d
    new-instance v2, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->enumArray:[I

    aget v2, v2, v1

    return v2
.end method
