.class public final Lcom/ibm/icu/impl/UPropertyAliases;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UPropertyAliases$Builder;,
        Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;,
        Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;,
        Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;,
        Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;,
        Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;
    }
.end annotation


# static fields
.field private static final DATA_BUFFER_SIZE:I = 0x2000

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "data/icudt42b/pnames.icu"

.field private static final DATA_FORMAT_ID:[B = null

.field private static final DATA_FORMAT_VERSION:B = 0x1t

.field private static DEBUG:Z


# instance fields
.field private enumToName:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

.field private enumToValue:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

.field private nameGroupPool:[S

.field private nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;

.field private stringPool:[Ljava/lang/String;

.field private valueMapArray:[Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "pnames"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/UPropertyAliases;->DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->DATA_FORMAT_ID:[B

    return-void

    nop

    :array_12
    .array-data 0x1
        0x70t
        0x6et
        0x61t
        0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v19, "data/icudt42b/pnames.icu"

    invoke-static/range {v19 .. v19}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v19, 0x2000

    move-object v0, v3

    move-object v1, v9

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v19, Lcom/ibm/icu/impl/UPropertyAliases;->DATA_FORMAT_ID:[B

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x100

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v16

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v18

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v17

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v15

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v14

    sget-boolean v19, Lcom/ibm/icu/impl/UPropertyAliases;->DEBUG:Z

    if-eqz v19, :cond_120

    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enumToName_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "nameToEnum_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "enumToValue_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "total_size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "valueMap_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "valueMap_count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "nameGroupPool_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "nameGroupPool_count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "stringPool_offset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "stringPool_count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_120
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v13, v0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->reset()V

    invoke-virtual {v5, v13}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    new-instance v4, Lcom/ibm/icu/impl/UPropertyAliases$Builder;

    invoke-direct {v4, v13}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;-><init>([B)V

    invoke-virtual {v4, v15, v14}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readStringPool(SS)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->stringPool:[Ljava/lang/String;

    invoke-virtual {v4, v11, v10}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readNameGroupPool(SS)[S

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->nameGroupPool:[S

    move-object v0, v4

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->setupValueMap_map(SS)V

    invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    new-instance v19, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;-><init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/UPropertyAliases;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    #calls: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroupOffsetToIndex([S)V
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$000(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V

    invoke-virtual {v4, v12}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    new-instance v19, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;-><init>(Lcom/ibm/icu/impl/UPropertyAliases;Lcom/ibm/icu/impl/UPropertyAliases$Builder;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;

    invoke-virtual {v4, v7}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    new-instance v19, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;-><init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->enumToValue:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/UPropertyAliases;->enumToValue:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    #calls: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMapOffsetToIndex([S)V
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$100(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V

    move/from16 v0, v17

    new-array v0, v0, [Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/UPropertyAliases;->valueMapArray:[Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    const/4 v8, 0x0

    :goto_1b5
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1db

    #getter for: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S
    invoke-static {v4}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$200(Lcom/ibm/icu/impl/UPropertyAliases$Builder;)[S

    move-result-object v19

    aget-short v19, v19, v8

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMapArray:[Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    move-object/from16 v19, v0

    new-instance v20, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;-><init>(Lcom/ibm/icu/impl/UPropertyAliases;Lcom/ibm/icu/impl/UPropertyAliases$Builder;)V

    aput-object v20, v19, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b5

    :cond_1db
    invoke-virtual {v4}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->close()V

    return-void
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/UPropertyAliases;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases;->stringPool:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/ibm/icu/impl/UPropertyAliases;->DEBUG:Z

    return v0
.end method

.method private chooseNameInGroup(SI)Ljava/lang/String;
    .registers 8

    if-gez p2, :cond_a

    new-instance v3, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v4, "Invalid name choice"

    invoke-direct {v3, v4}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move v1, p2

    move v2, p1

    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_21

    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases;->nameGroupPool:[S

    add-int/lit8 v4, v2, 0x1

    int-to-short p1, v4

    aget-short v3, v3, v2

    if-gez v3, :cond_a

    new-instance v3, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v4, "Invalid name choice"

    invoke-direct {v3, v4}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_21
    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases;->nameGroupPool:[S

    aget-short v0, v3, v2

    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases;->stringPool:[Ljava/lang/String;

    if-gez v0, :cond_2d

    neg-int v4, v0

    :goto_2a
    aget-object v3, v3, v4

    return-object v3

    :cond_2d
    move v4, v0

    goto :goto_2a
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_13

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_56

    :cond_13
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_20

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_78

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_3a

    move v2, v10

    :goto_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_3c

    move v3, v10

    :goto_2e
    if-eqz v2, :cond_4d

    if-eqz v3, :cond_3e

    move v7, v9

    :goto_33
    return v7

    :sswitch_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :sswitch_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_3a
    move v2, v9

    goto :goto_27

    :cond_3c
    move v3, v9

    goto :goto_2e

    :cond_3e
    const/4 v0, 0x0

    :cond_3f
    :goto_3f
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v7

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v8

    sub-int v6, v7, v8

    if-eqz v6, :cond_51

    move v7, v6

    goto :goto_33

    :cond_4d
    if-eqz v3, :cond_3f

    const/4 v1, 0x0

    goto :goto_3f

    :cond_51
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :sswitch_data_56
    .sparse-switch
        0x9 -> :sswitch_34
        0xa -> :sswitch_34
        0xb -> :sswitch_34
        0xc -> :sswitch_34
        0xd -> :sswitch_34
        0x20 -> :sswitch_34
        0x2d -> :sswitch_34
        0x5f -> :sswitch_34
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        0x9 -> :sswitch_37
        0xa -> :sswitch_37
        0xb -> :sswitch_37
        0xc -> :sswitch_37
        0xd -> :sswitch_37
        0x20 -> :sswitch_37
        0x2d -> :sswitch_37
        0x5f -> :sswitch_37
    .end sparse-switch
.end method

.method private getValueMap(I)Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;
    .registers 4

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->enumToValue:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->getShort(I)S

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMapArray:[Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    aget-object v1, v1, v0

    return-object v1
.end method


# virtual methods
.method public getPropertyEnum(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases;->nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->getEnum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPropertyName(II)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->getShort(I)S

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->chooseNameInGroup(SI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPropertyValueEnum(ILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getValueMap(I)Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    move-result-object v0

    iget-object v1, v0, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;

    invoke-virtual {v1, p2}, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;->getEnum(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getPropertyValueName(III)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getValueMap(I)Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;

    move-result-object v1

    iget-object v2, v1, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;

    invoke-interface {v2, p2}, Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;->getShort(I)S

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/impl/UPropertyAliases;->chooseNameInGroup(SI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isDataVersionAcceptable([B)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-byte v0, p1, v1

    if-ne v0, v2, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method
