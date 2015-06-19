.class Lcom/ibm/icu/lang/UCharacterNameIterator;
.super Ljava/lang/Object;
.source "UCharacterNameIterator.java"

# interfaces
.implements Lcom/ibm/icu/util/ValueIterator;


# static fields
.field private static GROUP_LENGTHS_:[C

.field private static GROUP_OFFSETS_:[C


# instance fields
.field private m_algorithmIndex_:I

.field private m_choice_:I

.field private m_current_:I

.field private m_groupIndex_:I

.field private m_limit_:I

.field private m_name_:Lcom/ibm/icu/impl/UCharacterName;

.field private m_start_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x21

    new-array v0, v1, [C

    sput-object v0, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    new-array v0, v1, [C

    sput-object v0, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/UCharacterName;I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UCharacterName name argument cannot be null. Missing unames.icu?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iput p2, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    const/high16 v0, 0x11

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    iget v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void
.end method

.method private iterateExtended(Lcom/ibm/icu/util/ValueIterator$Element;I)Z
    .registers 6

    :goto_0
    iget v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v1, p2, :cond_23

    iget-object v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v2, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    iget v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v1, p1, Lcom/ibm/icu/util/ValueIterator$Element;->integer:I

    iput-object v0, p1, Lcom/ibm/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1b
    return v1

    :cond_1c
    iget v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    :cond_23
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method private iterateGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    if-gez v3, :cond_10

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->getGroup(I)I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    :cond_10
    :goto_10
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget-object v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, v4, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v3, v4, :cond_6c

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, p2, :cond_6c

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v3}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v1

    if-ne v2, v1, :cond_4c

    sub-int v3, p2, v6

    invoke-static {v3}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v3

    if-ne v2, v3, :cond_39

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    :goto_38
    return v3

    :cond_39
    invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLimit(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_45

    move v3, v5

    goto :goto_38

    :cond_45
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_10

    :cond_4c
    if-le v2, v1, :cond_55

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_10

    :cond_55
    invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupMin(I)I

    move-result v0

    if-le v0, p2, :cond_5c

    move v0, p2

    :cond_5c
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_69

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateExtended(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_69

    move v3, v5

    goto :goto_38

    :cond_69
    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_10

    :cond_6c
    move v3, v6

    goto :goto_38
.end method

.method private iterateSingleGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z
    .registers 12

    sget-object v3, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    monitor-enter v3

    :try_start_3
    sget-object v4, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5f

    :try_start_6
    iget-object v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v6, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    sget-object v7, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    sget-object v8, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    invoke-virtual {v5, v6, v7, v8}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v0

    :goto_12
    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v5, p2, :cond_62

    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v5}, Lcom/ibm/icu/impl/UCharacterName;->getGroupOffset(I)I

    move-result v2

    iget-object v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    sget-object v6, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    aget-char v6, v6, v2

    add-int/2addr v6, v0

    sget-object v7, Lcom/ibm/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    aget-char v7, v7, v2

    iget v8, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_42

    :cond_35
    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_42

    iget-object v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v6, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v1

    :cond_42
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_55

    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v5, p1, Lcom/ibm/icu/util/ValueIterator$Element;->integer:I

    iput-object v1, p1, Lcom/ibm/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 v5, 0x0

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_5c

    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_5f

    move v3, v5

    :goto_54
    return v3

    :cond_55
    :try_start_55
    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_12

    :catchall_5c
    move-exception v5

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v5

    :catchall_5f
    move-exception v4

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_5f

    throw v4

    :cond_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5c

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5f

    const/4 v3, 0x1

    goto :goto_54
.end method


# virtual methods
.method public next(Lcom/ibm/icu/util/ValueIterator$Element;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v3, v4, :cond_a

    move v3, v5

    :goto_9
    return v3

    :cond_a
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-eq v3, v6, :cond_7b

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/UCharacterName;->getAlgorithmLength()I

    move-result v1

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_7b

    :goto_18
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_33

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ltz v3, :cond_2c

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->getAlgorithmEnd(I)I

    move-result v3

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, v4, :cond_33

    :cond_2c
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    goto :goto_18

    :cond_33
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_7b

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->getAlgorithmStart(I)I

    move-result v2

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, v2, :cond_58

    move v0, v2

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-gt v3, v2, :cond_4a

    iget v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    :cond_4a
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_58

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    move v3, v6

    goto :goto_9

    :cond_58
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v3, v4, :cond_60

    move v3, v5

    goto :goto_9

    :cond_60
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v3, p1, Lcom/ibm/icu/util/ValueIterator$Element;->integer:I

    iget-object v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_name_:Lcom/ibm/icu/impl/UCharacterName;

    iget v4, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    iget v5, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v4, v5}, Lcom/ibm/icu/impl/UCharacterName;->getAlgorithmName(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/ibm/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    move v3, v6

    goto :goto_9

    :cond_7b
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateGroup(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_8c

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    move v3, v6

    goto/16 :goto_9

    :cond_8c
    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a2

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/lang/UCharacterNameIterator;->iterateExtended(Lcom/ibm/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_a2

    iget v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    move v3, v6

    goto/16 :goto_9

    :cond_a2
    move v3, v5

    goto/16 :goto_9
.end method

.method public reset()V
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iput v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    return-void
.end method

.method public setRange(II)V
    .registers 5

    const/high16 v1, 0x11

    if-lt p1, p2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start or limit has to be valid Unicode codepoints and start < limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-gez p1, :cond_1a

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    :goto_11
    if-le p2, v1, :cond_1d

    iput v1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    :goto_15
    iget v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void

    :cond_1a
    iput p1, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_start_:I

    goto :goto_11

    :cond_1d
    iput p2, p0, Lcom/ibm/icu/lang/UCharacterNameIterator;->m_limit_:I

    goto :goto_15
.end method
