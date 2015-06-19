.class public abstract Lcom/ibm/icu/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Collator$ServiceShim;,
        Lcom/ibm/icu/text/Collator$CollatorFactory;
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b/coll"

.field public static final CANONICAL_DECOMPOSITION:I = 0x11

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FULL_DECOMPOSITION:I = 0xf

.field public static final IDENTICAL:I = 0xf

.field private static final KEYWORDS:[Ljava/lang/String; = null

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field private static final RESOURCE:Ljava/lang/String; = "collations"

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static shim:Lcom/ibm/icu/text/Collator$ServiceShim;


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private m_decomposition_:I

.field private m_strength_:I

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "collation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const-string v0, "collator"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/Collator;->m_strength_:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/ibm/icu/text/Collator;->m_decomposition_:I

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_b

    const-string v0, "com/ibm/icu/impl/data/icudt42b/coll"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    goto :goto_a
.end method

.method public static final getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_b

    const-string v0, "com/ibm/icu/impl/data/icudt42b/coll"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    goto :goto_a
.end method

.method public static getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .registers 9

    const-string v0, "com/ibm/icu/impl/data/icudt42b/coll"

    const-string v1, "collations"

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[ZZ)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/Collator;
    .registers 1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const-string v0, "com/ibm/icu/impl/data/icudt42b/coll"

    const-string v1, "collations"

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
    .registers 16

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    const-string v12, "com/ibm/icu/impl/data/icudt42b/coll"

    invoke-static {v12, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const/4 v6, 0x0

    :goto_10
    if-eqz v1, :cond_4a

    const-string v12, "collations"

    invoke-virtual {v1, v12}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_43

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v12, "default"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    if-nez v6, :cond_1c

    const-string v12, "default"

    invoke-virtual {v4, v12}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_39
    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_43
    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    goto :goto_10

    :cond_4a
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v10, v12

    const/4 v7, 0x1

    :cond_58
    :goto_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_58

    add-int/lit8 v8, v7, 0x1

    aput-object v3, v10, v7

    move v7, v8

    goto :goto_58

    :cond_70
    return-object v10
.end method

.method public static final getKeywords()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method private static getShim()Lcom/ibm/icu/text/Collator$ServiceShim;
    .registers 4

    sget-object v2, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v2, :cond_12

    :try_start_4
    const-string v2, "com.ibm.icu.text.CollatorServiceShim"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Collator$ServiceShim;

    sput-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_18

    :cond_12
    sget-object v2, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    return-object v2

    :catch_15
    move-exception v2

    move-object v1, v2

    throw v1

    :catch_18
    move-exception v2

    move-object v1, v2

    sget-boolean v2, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/Collator$ServiceShim;->registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final unregister(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments have to be of type String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Lcom/ibm/icu/text/CollationKey;
.end method

.method public getDecomposition()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/Collator;->m_decomposition_:I

    return v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .registers 3

    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/Collator;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/Collator;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_6
.end method

.method public abstract getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
.end method

.method public getStrength()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/Collator;->m_strength_:I

    return v0
.end method

.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .registers 4

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    return-object v0
.end method

.method public abstract getUCAVersion()Lcom/ibm/icu/util/VersionInfo;
.end method

.method public abstract getVariableTop()I
.end method

.method public abstract getVersion()Lcom/ibm/icu/util/VersionInfo;
.end method

.method public setDecomposition(I)V
    .registers 4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_10

    const/16 v0, 0x11

    if-eq p1, v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong decomposition mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput p1, p0, Lcom/ibm/icu/text/Collator;->m_decomposition_:I

    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_10

    move v0, v2

    :goto_5
    if-nez p2, :cond_8

    move v1, v2

    :cond_8
    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    move v0, v1

    goto :goto_5

    :cond_12
    iput-object p1, p0, Lcom/ibm/icu/text/Collator;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p2, p0, Lcom/ibm/icu/text/Collator;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method public setStrength(I)V
    .registers 4

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/16 v0, 0xf

    if-eq p1, v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect comparison level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Lcom/ibm/icu/text/Collator;->m_strength_:I

    return-void
.end method

.method public abstract setVariableTop(Ljava/lang/String;)I
.end method

.method public abstract setVariableTop(I)V
.end method
