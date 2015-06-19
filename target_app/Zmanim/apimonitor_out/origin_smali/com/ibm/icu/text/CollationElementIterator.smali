.class public final Lcom/ibm/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationElementIterator$Backup;
    }
.end annotation


# static fields
.field private static final CE_BUFFER_INIT_SIZE_:I = 0x200

.field private static final CE_BYTE_COMMON_:I = 0x5

.field private static final CE_CHARSET_TAG_:I = 0x4

.field private static final CE_CJK_IMPLICIT_TAG_:I = 0x9

.field private static final CE_CONTRACTION_:I = -0xe000000

.field static final CE_CONTRACTION_TAG_:I = 0x2

.field static final CE_DIGIT_TAG_:I = 0xd

.field static final CE_EXPANSION_TAG_:I = 0x1

.field private static final CE_HANGUL_SYLLABLE_TAG_:I = 0x6

.field private static final CE_IMPLICIT_TAG_:I = 0xa

.field private static final CE_LEAD_SURROGATE_TAG_:I = 0x7

.field private static final CE_LONG_PRIMARY_TAG_:I = 0xc

.field static final CE_NOT_FOUND_:I = -0x10000000

.field private static final CE_NOT_FOUND_TAG_:I = 0x0

.field static final CE_SPEC_PROC_TAG_:I = 0xb

.field private static final CE_TRAIL_SURROGATE_TAG_:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FULL_ZERO_COMBINING_CLASS_FAST_LIMIT_:I = 0xc0

.field private static final HANGUL_LBASE_:I = 0x1100

.field private static final HANGUL_SBASE_:I = 0xac00

.field private static final HANGUL_TBASE_:I = 0x11a7

.field private static final HANGUL_TCOUNT_:I = 0x1c

.field private static final HANGUL_VBASE_:I = 0x1161

.field private static final HANGUL_VCOUNT_:I = 0x15

.field public static final IGNORABLE:I = 0x0

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final LEAD_ZERO_COMBINING_CLASS_FAST_LIMIT_:I = 0x300

.field public static final NULLORDER:I = -0x1

.field private static final SECOND_LAST_BYTE_SHIFT_:I = 0x8


# instance fields
.field m_CEBufferOffset_:I

.field m_CEBufferSize_:I

.field private m_CEBuffer_:[I

.field private m_FCDLimit_:I

.field m_FCDStart_:I

.field private m_bufferOffset_:I

.field private m_buffer_:Ljava/lang/StringBuffer;

.field private m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

.field m_isCodePointHiragana_:Z

.field private m_isForwards_:Z

.field private m_source_:Lcom/ibm/icu/text/UCharacterIterator;

.field private m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

.field private m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

.field private m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

.field private m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

.field private m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

.field private m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "collator"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/CollationElementIterator;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-direct {v0}, Lcom/ibm/icu/impl/StringUCharacterIterator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iput-object p2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollationElementIterator$Backup;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/StringUCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iput-object p2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollationElementIterator$Backup;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method constructor <init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-direct {v0}, Lcom/ibm/icu/impl/StringUCharacterIterator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iput-object p2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollationElementIterator$Backup;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method private FCDCheck(CI)Z
    .registers 10

    const/4 v4, 0x1

    iput p2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5, p2}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v5

    int-to-char p1, v5

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v1

    :cond_2a
    :goto_2a
    and-int/lit16 v3, v1, 0xff

    if-eqz v3, :cond_3c

    :goto_2e
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_53

    :cond_3c
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v5

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    invoke-virtual {v5, v6}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    return v4

    :cond_51
    const/4 v1, 0x0

    goto :goto_2a

    :cond_53
    int-to-char p1, v0

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v1

    if-eqz v1, :cond_76

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v5

    int-to-char p1, v5

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v1

    :cond_76
    :goto_76
    ushr-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3c

    if-ge v2, v3, :cond_7d

    const/4 v4, 0x0

    :cond_7d
    and-int/lit16 v3, v1, 0xff

    goto :goto_2e

    :cond_80
    const/4 v1, 0x0

    goto :goto_76
.end method

.method private FCDCheckBackwards(CI)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v6, p2, 0x1

    iput v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6, p2}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v0

    :cond_15
    :goto_15
    ushr-int/lit8 v1, v0, 0x8

    :goto_17
    if-eqz v1, :cond_21

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result p2

    if-nez p2, :cond_52

    :cond_21
    if-nez v0, :cond_94

    iput p2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    :goto_25
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v7, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    invoke-virtual {v6, v7}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    return v3

    :cond_2d
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_15

    iget v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    if-lez v6, :cond_15

    move v5, p1

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v6

    int-to-char p1, v6

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v0, v5}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v0

    goto :goto_15

    :cond_50
    const/4 v0, 0x0

    goto :goto_15

    :cond_52
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v6

    int-to-char p1, v6

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_6b

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v0

    :cond_63
    :goto_63
    and-int/lit16 v2, v0, 0xff

    if-ge v1, v2, :cond_68

    const/4 v3, 0x0

    :cond_68
    ushr-int/lit8 v1, v0, 0x8

    goto :goto_17

    :cond_6b
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v6

    if-lez v6, :cond_92

    move v4, p1

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v6

    int-to-char p1, v6

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v0

    :cond_8b
    if-eqz v0, :cond_63

    invoke-static {v0, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v0

    goto :goto_63

    :cond_92
    const/4 v0, 0x0

    goto :goto_63

    :cond_94
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v6

    iput v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    goto :goto_25
.end method

.method private backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_offset_:I

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iput v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_FCDLimit_:I

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iput v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_FCDStart_:I

    iget-boolean v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    iput-boolean v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_isCodePointHiragana_:Z

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iput v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_bufferOffset_:I

    iget-object v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_buffer_:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v0, :cond_2d

    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->isJDK14OrHigher:Z

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_buffer_:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_buffer_:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d
.end method

.method private currentChar()I
    .registers 4

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    goto :goto_f
.end method

.method private getCombiningClass(I)I
    .registers 4

    const/16 v0, 0x300

    if-lt p1, v0, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    const v0, 0xffff

    if-le p1, v0, :cond_17

    :cond_12
    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getCombiningClass(I)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 5

    const v0, 0xffffff

    and-int/2addr v0, p2

    iget v1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getExpansionCount(I)I
    .registers 3

    and-int/lit8 v0, p1, 0xf

    return v0
.end method

.method private getExpansionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 5

    const v0, 0xfffff0

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x4

    iget v1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private goBackOne()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    goto :goto_a
.end method

.method private goForwardOne()V
    .registers 3

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v0, :cond_12

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    goto :goto_11
.end method

.method private final isBackwardsStart()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    if-gtz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isContractionTag(I)Z
    .registers 4

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final isEnd()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v0, :cond_20

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq v0, v1, :cond_12

    move v0, v2

    :goto_11
    return v0

    :cond_12
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_1e

    move v0, v3

    goto :goto_11

    :cond_1e
    move v0, v2

    goto :goto_11

    :cond_20
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_30

    move v0, v3

    goto :goto_11

    :cond_30
    move v0, v2

    goto :goto_11
.end method

.method private isSpecialPrefixTag(I)Z
    .registers 4

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private nextChar()I
    .registers 9

    const/16 v7, 0x300

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v3, :cond_31

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v1

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    const/16 v3, 0xc0

    if-lt v1, v3, :cond_2a

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2a

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v3, :cond_2a

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    if-le v3, v2, :cond_5b

    :cond_2a
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move v3, v1

    :goto_30
    return v3

    :cond_31
    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v3, v4, :cond_4e

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v3

    goto :goto_30

    :cond_4e
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    goto :goto_30

    :cond_5b
    if-ge v1, v7, :cond_6e

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    if-eq v0, v5, :cond_6c

    if-ge v0, v7, :cond_6e

    :cond_6c
    move v3, v1

    goto :goto_30

    :cond_6e
    int-to-char v3, v1

    invoke-direct {p0, v3, v2}, Lcom/ibm/icu/text/CollationElementIterator;->FCDCheck(CI)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->normalize()V

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/4 v3, 0x1

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    :cond_81
    move v3, v1

    goto :goto_30
.end method

.method private nextContraction(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 16

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v10}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v11

    aget v3, v10, v11

    :cond_d
    :goto_d
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v4

    move v8, v4

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isEnd()Z

    move-result v10

    if-eqz v10, :cond_27

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v10, v8

    const/high16 v10, -0x1000

    if-ne p2, v10, :cond_26

    move p2, v3

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v10}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_26
    :goto_26
    return p2

    :cond_27
    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v10, v10, v8

    and-int/lit16 v5, v10, 0xff

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v10, v10, v8

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v0, v10

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v10

    int-to-char v1, v10

    add-int/lit8 v8, v8, 0x1

    :goto_3b
    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v10, v10, v8

    if-le v1, v10, :cond_44

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_44
    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v10, v10, v8

    if-ne v1, v10, :cond_59

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v10, v8

    :goto_4e
    const/high16 v10, -0x1000

    if-ne p2, v10, :cond_b3

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v10}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    move p2, v3

    goto :goto_26

    :cond_59
    move v6, v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_69

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v10

    int-to-char v10, v10

    invoke-static {v1, v10}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v6

    :cond_69
    if-eqz v5, :cond_7d

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->getCombiningClass(I)I

    move-result v9

    if-eqz v9, :cond_7d

    if-gt v9, v5, :cond_7d

    if-eqz v0, :cond_77

    if-eq v9, v5, :cond_7d

    :cond_77
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isEnd()Z

    move-result v10

    if-eqz v10, :cond_8d

    :cond_7d
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    const v10, 0xffff

    if-le v6, v10, :cond_88

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_88
    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v10, v4

    goto :goto_4e

    :cond_8d
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_97

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_97
    int-to-char v7, v2

    invoke-direct {p0, v7}, Lcom/ibm/icu/text/CollationElementIterator;->getCombiningClass(I)I

    move-result v10

    if-nez v10, :cond_ae

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    const v10, 0xffff

    if-le v6, v10, :cond_a9

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_a9
    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v10, v4

    goto :goto_4e

    :cond_ae
    invoke-direct {p0, p1, v4}, Lcom/ibm/icu/text/CollationElementIterator;->nextDiscontiguous(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result p2

    goto :goto_4e

    :cond_b3
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->isContractionTag(I)Z

    move-result v10

    if-eqz v10, :cond_26

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v10, v10, v4

    const/high16 v11, -0x1000

    if-eq v10, v11, :cond_d

    iget-object v10, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v3, v10, v4

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v10}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    iget v10, v10, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_bufferOffset_:I

    if-ltz v10, :cond_da

    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    iget v11, v10, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_bufferOffset_:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_bufferOffset_:I

    goto/16 :goto_d

    :cond_da
    iget-object v10, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    iget v11, v10, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_offset_:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_offset_:I

    goto/16 :goto_d
.end method

.method private nextDigit(Lcom/ibm/icu/text/RuleBasedCollator;II)I
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z

    if-eqz v14, :cond_1e8

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v6

    const/4 v5, 0x1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x1

    if-lt v5, v14, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    shl-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_3c
    if-nez v6, :cond_40

    if-eqz v10, :cond_71

    :cond_40
    if-eqz v6, :cond_45

    if-nez v10, :cond_45

    const/4 v10, 0x1

    :cond_45
    rem-int/lit8 v14, v5, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10a

    add-int/2addr v4, v6

    if-nez v4, :cond_105

    if-nez v13, :cond_105

    const/4 v14, 0x1

    sub-int v14, v5, v14

    ushr-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v14, 0x2

    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x1

    sub-int v15, v5, v15

    ushr-int/lit8 v15, v15, 0x1

    add-int/lit8 v15, v15, 0x2

    shl-int/lit8 v16, v4, 0x1

    add-int/lit8 v16, v16, 0x6

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 v4, 0x0

    :goto_6f
    add-int/lit8 v5, v5, 0x1

    :cond_71
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->isEnd()Z

    move-result v14

    if-nez v14, :cond_b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v3

    int-to-char v2, v3

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_a2

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->isEnd()Z

    move-result v14

    if-nez v14, :cond_a2

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v14

    int-to-char v12, v14

    invoke-static {v12}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_123

    invoke-static {v2, v12}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    :cond_a2
    :goto_a2
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_b4
    if-nez v10, :cond_c2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x2

    const/16 v16, 0x6

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_c2
    if-eqz v13, :cond_128

    move v7, v13

    :goto_c5
    rem-int/lit8 v14, v5, 0x2

    if-eqz v14, :cond_130

    const/4 v8, 0x2

    :goto_ca
    if-ge v8, v7, :cond_12e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v15, v0

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    const/16 v16, 0x6

    sub-int v15, v15, v16

    ushr-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0xa

    mul-int/lit8 v15, v15, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    const/16 v17, 0x6

    sub-int v16, v16, v17

    ushr-int/lit8 v16, v16, 0x1

    div-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    shl-int/lit8 v15, v15, 0x1

    add-int/lit8 v15, v15, 0x6

    int-to-char v15, v15

    invoke-virtual {v14, v8, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_ca

    :cond_105
    if-eqz v13, :cond_56

    const/4 v13, 0x0

    goto/16 :goto_56

    :cond_10a
    mul-int/lit8 v4, v6, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    ushr-int/lit8 v15, v5, 0x1

    add-int/lit8 v15, v15, 0x2

    shl-int/lit8 v16, v4, 0x1

    add-int/lit8 v16, v16, 0x6

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto/16 :goto_6f

    :cond_123
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->goBackOne()V

    goto/16 :goto_a2

    :cond_128
    ushr-int/lit8 v14, v5, 0x1

    add-int/lit8 v14, v14, 0x2

    move v7, v14

    goto :goto_c5

    :cond_12e
    add-int/lit8 v5, v5, -0x1

    :cond_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x1

    sub-int v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v7, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x27

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x1

    ushr-int/lit8 v16, v5, 0x1

    and-int/lit8 v16, v16, 0x7f

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    or-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x10

    or-int/lit16 v14, v14, 0x500

    or-int/lit8 p2, v14, 0x5

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    move-object v14, v0

    const/4 v15, 0x0

    aput p2, v14, v15

    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    move v9, v8

    :goto_1a9
    if-ge v9, v7, :cond_1e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    shl-int/lit8 v11, v14, 0x8

    if-ge v8, v7, :cond_1c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    or-int/2addr v11, v14

    move v8, v9

    :cond_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    shl-int/lit8 v16, v11, 0x10

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    aput v16, v14, v15

    move v9, v8

    goto :goto_1a9

    :cond_1e5
    move/from16 v14, p2

    :goto_1e7
    return v14

    :cond_1e8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    move-object v14, v0

    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v15

    aget v14, v14, v15

    goto :goto_1e7
.end method

.method private nextDiscontiguous(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 14

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x1000

    move v5, p2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    if-nez v6, :cond_50

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    :goto_11
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->currentChar()I

    move-result v6

    int-to-char v1, v6

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->currentChar()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    if-nez v6, :cond_2b

    new-instance v6, Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {v6}, Lcom/ibm/icu/text/CollationElementIterator$Backup;-><init>()V

    iput-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    :cond_2b
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    move v4, v1

    :cond_31
    :goto_31
    move v1, v4

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v2

    int-to-char v4, v2

    if-eq v2, v9, :cond_3f

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/CollationElementIterator;->getCombiningClass(I)I

    move-result v6

    if-nez v6, :cond_56

    :cond_3f
    if-eqz v3, :cond_6d

    if-eq v2, v9, :cond_46

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_46
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->setDiscontiguous(Ljava/lang/StringBuffer;)V

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v6, v6, v5

    :goto_4f
    return v6

    :cond_50
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_11

    :cond_56
    add-int/lit8 v5, v5, 0x1

    :goto_58
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    array-length v6, v6

    if-ge v5, v6, :cond_66

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v6, v6, v5

    if-le v4, v6, :cond_66

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_66
    const/high16 v0, -0x1000

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    array-length v6, v6

    if-lt v5, v6, :cond_7a

    :cond_6d
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v6, v6, p2

    goto :goto_4f

    :cond_7a
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v6, v6, v5

    if-ne v4, v6, :cond_8a

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/CollationElementIterator;->getCombiningClass(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->getCombiningClass(I)I

    move-result v7

    if-ne v6, v7, :cond_a6

    :cond_8a
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9f

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_a4

    iget v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-gez v6, :cond_a4

    :cond_9f
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a4
    move v5, p2

    goto :goto_31

    :cond_a6
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v0, v6, v5

    if-eq v0, v8, :cond_6d

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationElementIterator;->isContractionTag(I)Z

    move-result v6

    if-eqz v6, :cond_c4

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v5

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget v6, v6, v5

    if-eq v6, v8, :cond_31

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialDiscontiguousBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    goto/16 :goto_31

    :cond_c4
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSkippedBuffer_:Ljava/lang/StringBuffer;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->setDiscontiguous(Ljava/lang/StringBuffer;)V

    move v6, v0

    goto :goto_4f
.end method

.method private nextExpansion(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionCount(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    aget v3, v3, v1

    aput v3, v2, v5

    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-eqz v2, :cond_2c

    const/4 v0, 0x1

    :goto_1b
    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-ge v0, v2, :cond_45

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2c
    iput v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    :goto_2e
    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    aget v2, v2, v1

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v4, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    add-int/lit8 v1, v1, 0x1

    aget v4, v4, v1

    aput v4, v2, v3

    goto :goto_2e

    :cond_45
    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-ne v2, v6, :cond_4d

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    :cond_4d
    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    aget v2, v2, v5

    return v2
.end method

.method private nextHangul(Lcom/ibm/icu/text/RuleBasedCollator;C)I
    .registers 12

    const/16 v8, 0x11a7

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v3, 0xac00

    sub-int v3, p2, v3

    int-to-char v0, v3

    rem-int/lit8 v3, v0, 0x1c

    int-to-char v1, v3

    div-int/lit8 v3, v0, 0x1c

    int-to-char v0, v3

    rem-int/lit8 v3, v0, 0x15

    int-to-char v2, v3

    div-int/lit8 v3, v0, 0x15

    int-to-char v0, v3

    add-int/lit16 v3, v0, 0x1100

    int-to-char v0, v3

    add-int/lit16 v3, v2, 0x1161

    int-to-char v2, v3

    add-int/lit16 v3, v1, 0x11a7

    int-to-char v1, v3

    iput v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-boolean v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    if-eq v1, v8, :cond_57

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v1}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    :cond_57
    iput v7, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    aget v3, v3, v6

    :goto_5d
    return v3

    :cond_5e
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_6f

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6f
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    sub-int/2addr v3, v7

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    move v3, v6

    goto :goto_5d
.end method

.method private nextImplicit(I)I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v3

    :goto_9
    return v1

    :cond_a
    sget-object v1, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromCodePoint(I)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const/high16 v2, -0x1

    and-int/2addr v2, v0

    or-int/lit16 v2, v2, 0x505

    aput v2, v1, v3

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const v2, 0xffff

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x10

    or-int/lit16 v2, v2, 0xc0

    aput v2, v1, v4

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    aget v1, v1, v3

    goto :goto_9
.end method

.method private nextLongPrimary(I)I
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/lit16 v1, v1, 0xc0

    aput v1, v0, v3

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const v1, 0xffff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    or-int/lit16 v1, v1, 0x500

    or-int/lit8 v1, v1, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    aget v0, v0, v2

    return v0
.end method

.method private nextSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I
    .registers 9

    const/4 v4, 0x0

    move v0, p3

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    if-eqz v1, :cond_1e

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    :goto_9
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_c
    :try_start_c
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v3

    packed-switch v3, :pswitch_data_8c

    :pswitch_13
    const/4 p2, 0x0

    :goto_14
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_87

    move-result v3

    if-nez v3, :cond_c

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move v3, p2

    :goto_1d
    return v3

    :cond_1e
    new-instance v1, Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {v1}, Lcom/ibm/icu/text/CollationElementIterator$Backup;-><init>()V

    goto :goto_9

    :pswitch_24
    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move v3, p2

    goto :goto_1d

    :pswitch_28
    :try_start_28
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isEnd()Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_87

    move-result v3

    if-eqz v3, :cond_32

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move v3, v4

    goto :goto_1d

    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v3

    int-to-char v2, v3

    invoke-direct {p0, p1, p2, v2}, Lcom/ibm/icu/text/CollationElementIterator;->nextSurrogate(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result p2

    invoke-static {p3, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v0

    goto :goto_14

    :pswitch_45
    invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/text/CollationElementIterator;->nextSpecialPrefix(Lcom/ibm/icu/text/RuleBasedCollator;ILcom/ibm/icu/text/CollationElementIterator$Backup;)I

    move-result p2

    goto :goto_14

    :pswitch_4a
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->nextContraction(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result p2

    goto :goto_14

    :pswitch_4f
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->nextLongPrimary(I)I
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_56
    :try_start_56
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->nextExpansion(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_5d
    :try_start_5d
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextDigit(Lcom/ibm/icu/text/RuleBasedCollator;II)I

    move-result p2

    goto :goto_14

    :pswitch_62
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextImplicit(I)I
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_69
    :try_start_69
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextImplicit(I)I
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_70
    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move v3, v4

    goto :goto_1d

    :pswitch_74
    :try_start_74
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->nextSurrogate(C)I
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_7b
    :try_start_7b
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/CollationElementIterator;->nextHangul(Lcom/ibm/icu/text/RuleBasedCollator;C)I
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_87

    move-result v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :pswitch_82
    const/high16 v3, -0x1000

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    goto :goto_1d

    :catchall_87
    move-exception v3

    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialEntryBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    throw v3

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_56
        :pswitch_4a
        :pswitch_13
        :pswitch_82
        :pswitch_28
        :pswitch_7b
        :pswitch_74
        :pswitch_70
        :pswitch_62
        :pswitch_69
        :pswitch_45
        :pswitch_4f
        :pswitch_5d
    .end packed-switch
.end method

.method private nextSpecialPrefix(Lcom/ibm/icu/text/RuleBasedCollator;ILcom/ibm/icu/text/CollationElementIterator$Backup;)I
    .registers 8

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v0

    move v1, v0

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v3, v1

    :goto_1a
    const/high16 v3, -0x1000

    if-eq p2, v3, :cond_48

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :goto_23
    return p2

    :cond_24
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v3

    int-to-char v2, v3

    :goto_29
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v3, v3, v1

    if-le v2, v3, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_32
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v3, v3, v1

    if-ne v2, v3, :cond_43

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v3, v1

    :goto_3c
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->isSpecialPrefixTag(I)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1a

    :cond_43
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v3, v0

    goto :goto_3c

    :cond_48
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    goto :goto_23
.end method

.method private nextSurrogate(C)I
    .registers 7

    const v4, 0xffff

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v0

    int-to-char v2, v0

    if-eq v0, v4, :cond_19

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->nextImplicit(I)I

    move-result v3

    :goto_18
    return v3

    :cond_19
    if-eq v2, v4, :cond_1e

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    :cond_1e
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private final nextSurrogate(Lcom/ibm/icu/text/RuleBasedCollator;IC)I
    .registers 6

    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    iget-object v1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v1, p2, p3}, Lcom/ibm/icu/impl/IntTrie;->getTrailValue(IC)I

    move-result v0

    const/high16 v1, -0x1000

    if-ne v0, v1, :cond_1c

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_1c
    move v1, v0

    goto :goto_c
.end method

.method private normalize()V
    .registers 7

    const/4 v5, 0x0

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_25

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    return-void
.end method

.method private normalizeBackwards()V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->normalize()V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    return-void
.end method

.method private previousChar()I
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v3, :cond_3b

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v3, :cond_19

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    :goto_18
    return v3

    :cond_19
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    if-nez v3, :cond_2b

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3, v5}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    move v3, v4

    goto :goto_18

    :cond_2b
    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v3

    goto :goto_18

    :cond_3b
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v1

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    const/16 v3, 0x300

    if-lt v1, v3, :cond_61

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_61

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    if-le v3, v2, :cond_61

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    if-nez v3, :cond_63

    :cond_61
    move v3, v1

    goto :goto_18

    :cond_63
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_74

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move v3, v1

    goto :goto_18

    :cond_74
    int-to-char v3, v1

    invoke-direct {p0, v3, v2}, Lcom/ibm/icu/text/CollationElementIterator;->FCDCheckBackwards(CI)Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->normalizeBackwards()V

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    :goto_8b
    move v3, v1

    goto :goto_18

    :cond_8d
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    goto :goto_8b
.end method

.method private previousContraction(Lcom/ibm/icu/text/RuleBasedCollator;IC)I
    .registers 14

    const/4 v9, -0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v5

    int-to-char v3, v5

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1, p3}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7, p3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move p3, v3

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v5

    if-eqz v5, :cond_79

    const/4 v0, 0x1

    :cond_20
    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    :cond_25
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7, p3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I

    move-result v2

    const/16 v5, 0x10

    invoke-virtual {p1, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    if-nez v5, :cond_7f

    new-instance v5, Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    iput-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    :goto_44
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result p2

    iput v7, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    :goto_4c
    if-eq p2, v9, :cond_9d

    iget v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    array-length v6, v6

    if-ne v5, v6, :cond_68

    :try_start_55
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x32

    new-array v4, v5, [I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I
    :try_end_68
    .catch Ljava/util/MissingResourceException; {:try_start_55 .. :try_end_68} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_68} :catch_92

    :cond_68
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    aput p2, v5, v6

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result p2

    goto :goto_4c

    :cond_79
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v5

    int-to-char v3, v5

    goto :goto_d

    :cond_7f
    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iput-object p1, v5, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    goto :goto_44

    :catch_8f
    move-exception v5

    move-object v1, v5

    throw v1

    :catch_92
    move-exception v5

    move-object v1, v5

    sget-boolean v5, Lcom/ibm/icu/text/CollationElementIterator;->DEBUG:Z

    if-eqz v5, :cond_9b

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    move v5, v9

    :goto_9c
    return v5

    :cond_9d
    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V

    iget v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v5, v5, v6

    goto :goto_9c
.end method

.method private previousDigit(Lcom/ibm/icu/text/RuleBasedCollator;IC)I
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z

    if-eqz v13, :cond_1f4

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v2, p3

    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v13

    if-nez v13, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v13

    int-to-char v9, v13

    invoke-static {v9}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_1a5

    move v0, v9

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    :cond_35
    :goto_35
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v5

    const/4 v4, 0x0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    const/4 v14, 0x2

    sub-int/2addr v13, v14

    shl-int/lit8 v13, v13, 0x1

    if-lt v4, v13, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    shl-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_5c
    if-nez v5, :cond_60

    if-eqz v11, :cond_8d

    :cond_60
    if-eqz v5, :cond_65

    if-nez v11, :cond_65

    const/4 v11, 0x1

    :cond_65
    rem-int/lit8 v13, v4, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1af

    mul-int/lit8 v13, v5, 0xa

    add-int/2addr v3, v13

    if-nez v3, :cond_1aa

    if-nez v10, :cond_1aa

    const/4 v13, 0x1

    sub-int v13, v4, v13

    ushr-int/lit8 v13, v13, 0x1

    add-int/lit8 v10, v13, 0x2

    :cond_78
    :goto_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x1

    sub-int v14, v4, v14

    ushr-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x2

    shl-int/lit8 v15, v3, 0x1

    add-int/lit8 v15, v15, 0x6

    int-to-char v15, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 v3, 0x0

    :cond_8d
    :goto_8d
    add-int/lit8 v4, v4, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v13

    if-nez v13, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v2

    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_c2

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v13

    if-nez v13, :cond_c2

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v13

    int-to-char v9, v13

    invoke-static {v9}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_1b2

    move v0, v9

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    :cond_c2
    :goto_c2
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v5

    const/4 v13, -0x1

    if-ne v5, v13, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_d4
    if-nez v11, :cond_e1

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x2

    const/4 v15, 0x6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_e1
    rem-int/lit8 v13, v4, 0x2

    if-eqz v13, :cond_f0

    if-nez v3, :cond_1bf

    if-nez v10, :cond_1bf

    const/4 v13, 0x1

    sub-int v13, v4, v13

    ushr-int/lit8 v13, v13, 0x1

    add-int/lit8 v10, v13, 0x2

    :cond_f0
    :goto_f0
    if-eqz v10, :cond_1d4

    move v6, v10

    :goto_f3
    const/4 v13, 0x2

    sub-int v13, v6, v13

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v15, v0

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x0

    const/16 v15, 0x27

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    const/4 v14, 0x1

    ushr-int/lit8 v15, v4, 0x1

    and-int/lit8 v15, v15, 0x7f

    add-int/lit16 v15, v15, 0x80

    int-to-char v15, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move v14, v0

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    or-int v15, v15, v16

    shl-int/lit8 v15, v15, 0x10

    or-int/lit16 v15, v15, 0x500

    or-int/lit8 v15, v15, 0x5

    aput v15, v13, v14

    const/4 v13, 0x1

    sub-int v7, v6, v13

    move v8, v7

    :goto_16c
    const/4 v13, 0x2

    if-lt v8, v13, :cond_1db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    shl-int/lit8 v12, v13, 0x8

    const/4 v13, 0x2

    if-lt v7, v13, :cond_18c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    or-int/2addr v12, v13

    move v7, v8

    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move v14, v0

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    shl-int/lit8 v15, v12, 0x10

    or-int/lit16 v15, v15, 0xc0

    aput v15, v13, v14

    move v8, v7

    goto :goto_16c

    :cond_1a5
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationElementIterator;->goForwardOne()V

    goto/16 :goto_35

    :cond_1aa
    if-eqz v10, :cond_78

    const/4 v10, 0x0

    goto/16 :goto_78

    :cond_1af
    move v3, v5

    goto/16 :goto_8d

    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    goto/16 :goto_c2

    :cond_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    move-object v13, v0

    ushr-int/lit8 v14, v4, 0x1

    add-int/lit8 v14, v14, 0x2

    shl-int/lit8 v15, v3, 0x1

    add-int/lit8 v15, v15, 0x6

    int-to-char v15, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f0

    :cond_1d4
    ushr-int/lit8 v13, v4, 0x1

    add-int/lit8 v13, v13, 0x2

    move v6, v13

    goto/16 :goto_f3

    :cond_1db
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    move v14, v0

    aget v13, v13, v14

    :goto_1f3
    return v13

    :cond_1f4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    move-object v13, v0

    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v14

    aget v13, v13, v14

    goto :goto_1f3
.end method

.method private previousExpansion(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getExpansionCount(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-eqz v2, :cond_20

    const/4 v0, 0x0

    :goto_f
    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_20
    :goto_20
    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v4, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    iget v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v2, v3

    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    goto :goto_20

    :cond_3d
    iget v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v2, v2, v3

    return v2
.end method

.method private previousHangul(Lcom/ibm/icu/text/RuleBasedCollator;C)I
    .registers 10

    const/16 v6, 0x11a7

    const/4 v4, 0x0

    const v3, 0xac00

    sub-int v3, p2, v3

    int-to-char v0, v3

    rem-int/lit8 v3, v0, 0x1c

    int-to-char v1, v3

    div-int/lit8 v3, v0, 0x1c

    int-to-char v0, v3

    rem-int/lit8 v3, v0, 0x15

    int-to-char v2, v3

    div-int/lit8 v3, v0, 0x15

    int-to-char v0, v3

    add-int/lit16 v3, v0, 0x1100

    int-to-char v0, v3

    add-int/lit16 v3, v2, 0x1161

    int-to-char v2, v3

    add-int/lit16 v3, v1, 0x11a7

    int-to-char v1, v3

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-boolean v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z

    if-nez v3, :cond_63

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    if-eq v1, v6, :cond_56

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5, v1}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v5

    aput v5, v3, v4

    :cond_56
    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v3, v3, v4

    :goto_62
    return v3

    :cond_63
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v1, v6, :cond_74

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_74
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    move v3, v4

    goto :goto_62
.end method

.method private previousImplicit(I)I
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v4

    :goto_9
    return v1

    :cond_a
    sget-object v1, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromCodePoint(I)I

    move-result v0

    const/4 v1, 0x2

    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const/high16 v2, -0x1

    and-int/2addr v2, v0

    or-int/lit16 v2, v2, 0x505

    aput v2, v1, v4

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    const v2, 0xffff

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x10

    or-int/lit16 v2, v2, 0xc0

    aput v2, v1, v3

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    aget v1, v1, v3

    goto :goto_9
.end method

.method private previousLongPrimary(I)I
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const v2, 0xffff00

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x8

    or-int/lit16 v2, v2, 0x500

    or-int/lit8 v2, v2, 0x5

    aput v2, v0, v1

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/lit16 v2, v2, 0xc0

    aput v2, v0, v1

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v0, v0, v1

    return v0
.end method

.method private previousSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I
    .registers 7

    const/4 v2, 0x0

    :cond_1
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v0

    packed-switch v0, :pswitch_data_56

    :pswitch_8
    const/4 p2, 0x0

    :goto_9
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, p2

    :goto_10
    return v0

    :pswitch_11
    move v0, p2

    goto :goto_10

    :pswitch_13
    move v0, v2

    goto :goto_10

    :pswitch_15
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->previousSpecialPrefix(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result p2

    goto :goto_9

    :pswitch_1a
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v1

    aget p2, v0, v1

    goto :goto_9

    :cond_29
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousContraction(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v0

    goto :goto_10

    :pswitch_2e
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->previousLongPrimary(I)I

    move-result v0

    goto :goto_10

    :pswitch_33
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->previousExpansion(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v0

    goto :goto_10

    :pswitch_38
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousDigit(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result p2

    goto :goto_9

    :pswitch_3d
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousHangul(Lcom/ibm/icu/text/RuleBasedCollator;C)I

    move-result v0

    goto :goto_10

    :pswitch_42
    move v0, v2

    goto :goto_10

    :pswitch_44
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousSurrogate(C)I

    move-result v0

    goto :goto_10

    :pswitch_49
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousImplicit(I)I

    move-result v0

    goto :goto_10

    :pswitch_4e
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/CollationElementIterator;->previousImplicit(I)I

    move-result v0

    goto :goto_10

    :pswitch_53
    const/high16 v0, -0x1000

    goto :goto_10

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_11
        :pswitch_33
        :pswitch_1a
        :pswitch_8
        :pswitch_53
        :pswitch_13
        :pswitch_3d
        :pswitch_42
        :pswitch_44
        :pswitch_49
        :pswitch_4e
        :pswitch_15
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method private previousSpecialPrefix(Lcom/ibm/icu/text/RuleBasedCollator;I)I
    .registers 11

    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->backupInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    :cond_5
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getContractionOffset(Lcom/ibm/icu/text/RuleBasedCollator;I)I

    move-result v4

    move v0, v4

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v6, v4

    :goto_14
    iget-object v6, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_utilSpecialBackUp_:Lcom/ibm/icu/text/CollationElementIterator$Backup;

    invoke-direct {p0, v6}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V

    return p2

    :cond_1a
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v6

    int-to-char v5, v6

    :goto_1f
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v6, v6, v4

    if-le v5, v6, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_28
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    aget-char v6, v6, v4

    if-ne v5, v6, :cond_39

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v6, v4

    :goto_32
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;->isSpecialPrefixTag(I)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_14

    :cond_39
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_76

    :cond_4d
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v6

    int-to-char v3, v6

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_7b

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v6, v3}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_73

    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v6, v2, v5}, Lcom/ibm/icu/impl/IntTrie;->getTrailValue(IC)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_73
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    :cond_76
    iget-object v6, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    aget p2, v6, v0

    goto :goto_32

    :cond_7b
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    goto :goto_5
.end method

.method private previousSurrogate(C)I
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    return v1

    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v1

    int-to-char v0, v1

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->previousImplicit(I)I

    move-result v1

    goto :goto_8

    :cond_1d
    const v1, 0xffff

    if-eq v0, v1, :cond_25

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    :cond_25
    move v1, v2

    goto :goto_8
.end method

.method public static final primaryOrder(I)I
    .registers 2

    const/high16 v0, -0x1

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static final secondaryOrder(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private setDiscontiguous(Ljava/lang/StringBuffer;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_10
    iput v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10
.end method

.method public static final tertiaryOrder(I)I
    .registers 2

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private updateInternalState()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    return-void
.end method

.method private updateInternalState(Lcom/ibm/icu/text/CollationElementIterator$Backup;)V
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget v1, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_offset_:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    iget-boolean v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_isCodePointHiragana_:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    iget v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_bufferOffset_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    iget v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_FCDLimit_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    iget v0, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_FCDStart_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-ltz v0, :cond_2c

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_buffer_:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_buffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    instance-of v2, p1, Lcom/ibm/icu/text/CollationElementIterator;

    if-eqz v2, :cond_3e

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/CollationElementIterator;

    move-object v1, v0

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v4

    goto :goto_5

    :cond_1a
    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    iget-object v3, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v5

    goto :goto_5

    :cond_3c
    move v2, v4

    goto :goto_5

    :cond_3e
    move v2, v4

    goto :goto_5
.end method

.method public getMaxExpansion(I)I
    .registers 14

    const-wide v10, 0xffffffffL

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    array-length v0, v8

    int-to-long v8, p1

    and-long v6, v8, v10

    :goto_e
    const/4 v8, 0x1

    sub-int v8, v0, v8

    if-ge v5, v8, :cond_2a

    sub-int v8, v0, v5

    shr-int/lit8 v8, v8, 0x1

    add-int v1, v5, v8

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    aget v8, v8, v1

    int-to-long v8, v8

    and-long v2, v8, v10

    cmp-long v8, v6, v2

    if-gtz v8, :cond_28

    move v0, v1

    goto :goto_e

    :cond_28
    move v5, v1

    goto :goto_e

    :cond_2a
    const/4 v4, 0x1

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    aget v8, v8, v5

    if-ne v8, p1, :cond_3a

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B

    aget-byte v4, v8, v5

    :cond_39
    :goto_39
    return v4

    :cond_3a
    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    array-length v8, v8

    if-ge v0, v8, :cond_50

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    aget v8, v8, v0

    if-ne v8, p1, :cond_50

    iget-object v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B

    aget-byte v4, v8, v0

    goto :goto_39

    :cond_50
    const v8, 0xffff

    and-int/2addr v8, p1

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_39

    const/4 v4, 0x2

    goto :goto_39
.end method

.method public getOffset()I
    .registers 3

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDLimit_:I

    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_FCDStart_:I

    goto :goto_b

    :cond_f
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    goto :goto_b
.end method

.method isInBuffer()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_bufferOffset_:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()I
    .registers 10

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, -0x1000

    const/4 v5, 0x0

    iput-boolean v8, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-lez v3, :cond_20

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-ge v3, v4, :cond_1c

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v3, v3, v4

    :goto_1b
    return v3

    :cond_1c
    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v5, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    :cond_20
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->nextChar()I

    move-result v1

    if-ne v1, v7, :cond_28

    move v3, v7

    goto :goto_1b

    :cond_28
    int-to-char v0, v1

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-boolean v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z

    if-eqz v3, :cond_4e

    iget-boolean v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    if-eqz v3, :cond_3b

    const/16 v3, 0x3099

    if-lt v0, v3, :cond_3b

    const/16 v3, 0x309c

    if-le v0, v3, :cond_4b

    :cond_3b
    const/16 v3, 0x3040

    if-lt v0, v3, :cond_6f

    const/16 v3, 0x309e

    if-gt v0, v3, :cond_6f

    const/16 v3, 0x3094

    if-le v0, v3, :cond_4b

    const/16 v3, 0x309d

    if-lt v0, v3, :cond_6f

    :cond_4b
    move v3, v8

    :goto_4c
    iput-boolean v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    :cond_4e
    const/4 v2, -0x1

    const/16 v3, 0xff

    if-gt v0, v3, :cond_71

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLatin1LinearValue(C)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v3, v2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    :cond_67
    :goto_67
    if-ne v2, v6, :cond_6d

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextImplicit(I)I

    move-result v2

    :cond_6d
    move v3, v2

    goto :goto_1b

    :cond_6f
    move v3, v5

    goto :goto_4c

    :cond_71
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v3, v2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    :cond_85
    if-ne v2, v6, :cond_67

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz v3, :cond_67

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v3

    if-eqz v3, :cond_67

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v3, v2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->nextSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    goto :goto_67
.end method

.method public previous()I
    .registers 9

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, -0x1000

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    if-gtz v3, :cond_19

    iget-boolean v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Lcom/ibm/icu/text/UCharacterIterator;->setToLimit()V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    :cond_19
    iput-boolean v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    const/4 v2, -0x1

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    if-lez v3, :cond_32

    iget v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    if-lez v3, :cond_2e

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBuffer_:[I

    iget v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    aget v3, v3, v4

    :goto_2d
    return v3

    :cond_2e
    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferSize_:I

    iput v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_CEBufferOffset_:I

    :cond_32
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->previousChar()I

    move-result v1

    if-ne v1, v6, :cond_3a

    move v3, v6

    goto :goto_2d

    :cond_3a
    int-to-char v0, v1

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-boolean v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z

    if-eqz v3, :cond_4c

    const/16 v3, 0x3040

    if-lt v0, v3, :cond_6a

    const/16 v3, 0x309f

    if-gt v0, v3, :cond_6a

    move v3, v7

    :goto_4a
    iput-boolean v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z

    :cond_4c
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isContractionEnd(C)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/high16 v4, -0xe00

    invoke-direct {p0, v3, v4, v0}, Lcom/ibm/icu/text/CollationElementIterator;->previousSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    :cond_62
    :goto_62
    if-ne v2, v5, :cond_68

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationElementIterator;->previousImplicit(I)I

    move-result v2

    :cond_68
    move v3, v2

    goto :goto_2d

    :cond_6a
    move v3, v4

    goto :goto_4a

    :cond_6c
    const/16 v3, 0xff

    if-gt v0, v3, :cond_a7

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLatin1LinearValue(C)I

    move-result v2

    :goto_78
    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v3, v2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->previousSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    :cond_84
    if-ne v2, v5, :cond_62

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->isBackwardsStart()Z

    move-result v3

    if-nez v3, :cond_b0

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isContractionEnd(C)Z

    move-result v3

    if-eqz v3, :cond_b0

    const/high16 v2, -0xe00

    :cond_96
    :goto_96
    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v3

    if-eqz v3, :cond_62

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz v3, :cond_62

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v3, v2, v0}, Lcom/ibm/icu/text/CollationElementIterator;->previousSpecial(Lcom/ibm/icu/text/RuleBasedCollator;IC)I

    move-result v2

    goto :goto_62

    :cond_a7
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    goto :goto_78

    :cond_b0
    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz v3, :cond_96

    sget-object v3, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    goto :goto_96
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method setCollator(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method setExactOffset(I)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method public setOffset(I)V
    .registers 7

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v1

    int-to-char v0, v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2f

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v4

    int-to-char v2, v4

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result p1

    if-nez p1, :cond_71

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v4

    int-to-char v0, v4

    :cond_45
    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v4

    if-lez v4, :cond_55

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z

    move-result v4

    if-nez v4, :cond_3e

    :cond_55
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    const/4 v3, 0x0

    :goto_59
    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v4

    if-gt v4, p1, :cond_6b

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    goto :goto_59

    :cond_6b
    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    goto :goto_2f

    :cond_71
    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v4

    if-ne p1, v4, :cond_3d

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_isForwards_:Z

    goto :goto_3d
.end method

.method public setText(Lcom/ibm/icu/text/UCharacterIterator;)V
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method setText(Lcom/ibm/icu/text/UCharacterIterator;I)V
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 3

    new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->m_source_:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->updateInternalState()V

    return-void
.end method
