.class public final Lcom/ibm/icu/impl/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
    }
.end annotation


# static fields
.field private static final BASELOCALECACHE:Lcom/ibm/icu/impl/locale/LocaleObjectCache; = null

.field public static final ROOT:Lcom/ibm/icu/impl/locale/BaseLocale; = null

.field private static final SEPCHAR:C = '_'


# instance fields
.field private transient _id:Ljava/lang/String;

.field private transient _java6string:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private transient _parent:Lcom/ibm/icu/impl/locale/BaseLocale;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/BaseLocale;->BASELOCALECACHE:Lcom/ibm/icu/impl/locale/LocaleObjectCache;

    new-instance v0, Lcom/ibm/icu/impl/locale/BaseLocale;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/BaseLocale;->ROOT:Lcom/ibm/icu/impl/locale/BaseLocale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_java6string:Ljava/lang/String;

    if-eqz p1, :cond_1f

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    :cond_1f
    if-eqz p2, :cond_23

    iput-object p2, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    :cond_23
    if-eqz p3, :cond_27

    iput-object p3, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    :cond_27
    if-eqz p4, :cond_2b

    iput-object p4, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method private canonicalize()Lcom/ibm/icu/impl/locale/BaseLocale;
    .registers 14

    const/4 v12, 0x0

    const/16 v9, 0x5f

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v3, :cond_33

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    if-lez v6, :cond_72

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_48
    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_60

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_72
    if-lez v5, :cond_88

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_88
    if-lez v7, :cond_9f

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    if-nez v5, :cond_97

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_97
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    if-nez v3, :cond_cd

    if-nez v5, :cond_cd

    if-lez v7, :cond_cd

    const-string v8, ""

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_java6string:Ljava/lang/String;

    :goto_b3
    if-lez v7, :cond_117

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_104

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v9, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    iget-object v10, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v8, v9, v10, v11}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    :goto_cc
    return-object p0

    :cond_cd
    if-gtz v6, :cond_d3

    if-nez v5, :cond_ff

    if-lez v7, :cond_ff

    :cond_d3
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-lez v5, :cond_f9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e4
    :goto_e4
    if-lez v7, :cond_ee

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ee
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_java6string:Ljava/lang/String;

    goto :goto_b3

    :cond_f9
    if-lez v7, :cond_e4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e4

    :cond_ff
    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_java6string:Ljava/lang/String;

    goto :goto_b3

    :cond_104
    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v9, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    iget-object v10, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    iget-object v11, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    goto :goto_cc

    :cond_117
    if-lez v5, :cond_128

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v9, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    invoke-static {v8, v9, v10, v11}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    goto :goto_cc

    :cond_128
    if-lez v6, :cond_139

    iget-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-static {v8, v9, v10, v11}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    goto :goto_cc

    :cond_139
    if-lez v3, :cond_140

    sget-object v8, Lcom/ibm/icu/impl/locale/BaseLocale;->ROOT:Lcom/ibm/icu/impl/locale/BaseLocale;

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    goto :goto_cc

    :cond_140
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    goto :goto_cc
.end method

.method private createKey()Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
    .registers 6

    new-instance v0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;
    .registers 8

    new-instance v1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ibm/icu/impl/locale/BaseLocale;->BASELOCALECACHE:Lcom/ibm/icu/impl/locale/LocaleObjectCache;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_21

    new-instance v2, Lcom/ibm/icu/impl/locale/BaseLocale;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ibm/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2}, Lcom/ibm/icu/impl/locale/BaseLocale;->canonicalize()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/impl/locale/BaseLocale;->BASELOCALECACHE:Lcom/ibm/icu/impl/locale/LocaleObjectCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->createKey()Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/ibm/icu/impl/locale/BaseLocale;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/impl/locale/BaseLocale;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getJava6String()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_java6string:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ibm/icu/impl/locale/BaseLocale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_parent:Lcom/ibm/icu/impl/locale/BaseLocale;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale;->_id:Ljava/lang/String;

    return-object v0
.end method
