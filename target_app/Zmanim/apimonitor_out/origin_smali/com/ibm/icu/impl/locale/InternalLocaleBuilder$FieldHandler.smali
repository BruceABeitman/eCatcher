.class public Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldHandler"
.end annotation


# static fields
.field public static DEFAULT:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->DEFAULT:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected map(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    packed-switch p1, :pswitch_data_56

    :cond_3
    :goto_3
    return-object p2

    :pswitch_4
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_3a
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_3f
    const-string v2, "-"

    const-string v3, "_"

    invoke-static {p2, v2, v3}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_48
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, "-"

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4
        :pswitch_9
        :pswitch_3a
        :pswitch_3f
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public process(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->map(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->validate(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    move-object v0, p2

    goto :goto_11
.end method

.method protected validate(ILjava/lang/String;)Z
    .registers 8

    const/16 v4, 0x2d

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5c

    :cond_6
    :goto_6
    return v1

    :pswitch_7
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguageSubtag(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :pswitch_c
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScriptSubtag(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :pswitch_11
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegionSubtag(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :pswitch_16
    const/16 v4, 0x5f

    invoke-static {p2, v4}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1d
    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariantSubtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :pswitch_2b
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidLDMLKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :pswitch_30
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidLDMLType(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :pswitch_35
    invoke-static {p2, v4}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_3a
    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :pswitch_48
    invoke-static {p2, v4}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_4d
    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseValueSubtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
        :pswitch_11
        :pswitch_16
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_48
    .end packed-switch
.end method
