.class public final Lcom/ibm/icu/impl/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field public static final EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions; = null

.field private static final LDMLSINGLETON:Ljava/lang/String; = "u"

.field private static final LOCALEEXTSEP:Ljava/lang/String; = "-"

.field private static final MINLEN:I = 0x3

.field private static final PRIVUSE:Ljava/lang/String; = "x"


# instance fields
.field private _extMap:Ljava/util/TreeMap;

.field private _extensions:Ljava/lang/String;

.field private _kwdMap:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    const-string v0, ""

    :goto_7
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    return-void

    :cond_a
    move-object v0, p1

    goto :goto_7
.end method

.method private static extensionsToCanonicalString(Ljava/util/TreeMap;)Ljava/lang/String;
    .registers 11

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result v7

    if-nez v7, :cond_b

    :cond_8
    const-string v7, ""

    :goto_a
    return-object v7

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    const-string v8, "x"

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_42

    move-object v5, v6

    goto :goto_1b

    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_4d

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_59
    if-eqz v5, :cond_73

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_66

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_66
    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    goto :goto_a
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .registers 13

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    :goto_a
    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, "-"

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_25

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x2d

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_3d
    array-length v10, v9

    if-ge v3, v10, :cond_11a

    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_61

    const/4 v0, 0x1

    move v3, v4

    :goto_4a
    if-nez v0, :cond_58

    if-eqz v3, :cond_51

    if-eqz v7, :cond_ee

    const/4 v0, 0x1

    :cond_51
    :goto_51
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_f3

    const/4 v0, 0x1

    :cond_58
    :goto_58
    if-eqz v0, :cond_10a

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_a

    :cond_61
    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c7

    if-nez v5, :cond_c7

    if-eqz v8, :cond_a2

    aget-object v10, v9, v3

    invoke-virtual {v2, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    const/4 v0, 0x1

    move v3, v4

    goto :goto_4a

    :cond_79
    if-eqz v4, :cond_84

    if-eqz v7, :cond_80

    const/4 v0, 0x1

    move v3, v4

    goto :goto_4a

    :cond_80
    invoke-static {v6, v1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->keywordsToString(Ljava/util/TreeMap;Ljava/lang/StringBuffer;)V

    const/4 v4, 0x0

    :cond_84
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-nez v10, :cond_8d

    const/4 v0, 0x1

    move v3, v4

    goto :goto_4a

    :cond_8d
    new-instance v10, Ljava/lang/Character;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {v10, v8}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    aget-object v8, v9, v3

    const-string v10, "u"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x1

    :cond_b2
    :goto_b2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    aget-object v8, v9, v3

    :goto_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_bb
    aget-object v8, v9, v3

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    const/4 v5, 0x1

    goto :goto_b2

    :cond_c7
    if-eqz v4, :cond_dd

    if-nez v7, :cond_ce

    aget-object v7, v9, v3

    goto :goto_b8

    :cond_ce
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_b8

    :cond_dd
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_e8

    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e8
    aget-object v10, v9, v3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    :cond_ee
    invoke-static {v6, v1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->keywordsToString(Ljava/util/TreeMap;Ljava/lang/StringBuffer;)V

    goto/16 :goto_51

    :cond_f3
    new-instance v3, Ljava/lang/Character;

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_58

    :cond_10a
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->extensionsToCanonicalString(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    iput-object v6, v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    move-object p0, v0

    goto/16 :goto_a

    :cond_11a
    move v3, v4

    goto/16 :goto_4a
.end method

.method public static getInstance(Ljava/util/TreeMap;Ljava/util/TreeMap;)Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .registers 5

    if-nez p0, :cond_5

    sget-object v2, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    :goto_4
    return-object v2

    :cond_5
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->extensionsToCanonicalString(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    iput-object p1, v1, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    move-object v2, v1

    goto :goto_4
.end method

.method public static isValidExtensionKey(C)Z
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    return v0
.end method

.method public static isValidLDMLKey(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isValidLDMLType(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static keywordsToString(Ljava/util/TreeMap;Ljava/lang/StringBuffer;)V
    .registers 6

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1f

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getCanonicalString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getExtensionValue(C)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extMap:Ljava/util/TreeMap;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getLDMLKeywordKeys()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getLDMLKeywordType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LDML key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_kwdMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->_extensions:Ljava/lang/String;

    return-object v0
.end method
