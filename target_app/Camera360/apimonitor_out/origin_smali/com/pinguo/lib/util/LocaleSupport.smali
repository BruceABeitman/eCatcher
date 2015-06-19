.class public abstract Lcom/pinguo/lib/util/LocaleSupport;
.super Ljava/lang/Object;
.source "LocaleSupport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final en_US:Ljava/util/Locale;

.field private static sLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSupportLocaleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSupportLocales:[Ljava/util/Locale;

.field public static final th_TH:Ljava/util/Locale;

.field public static final zh_CN:Ljava/util/Locale;

.field public static final zh_HK:Ljava/util/Locale;

.field public static final zh_TW:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "CN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->zh_CN:Ljava/util/Locale;

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "HK"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->zh_HK:Ljava/util/Locale;

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "TW"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->zh_TW:Ljava/util/Locale;

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "en"

    const-string/jumbo v4, "US"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->en_US:Ljava/util/Locale;

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "th"

    const-string/jumbo v4, "TH"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->th_TH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_CN:Ljava/util/Locale;

    aput-object v3, v2, v1

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_HK:Ljava/util/Locale;

    aput-object v3, v2, v5

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_TW:Ljava/util/Locale;

    aput-object v3, v2, v6

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->en_US:Ljava/util/Locale;

    aput-object v3, v2, v7

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->th_TH:Ljava/util/Locale;

    aput-object v3, v2, v8

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_CN:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_HK:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->zh_TW:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->en_US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    sget-object v3, Lcom/pinguo/lib/util/LocaleSupport;->th_TH:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocaleNames:Ljava/util/Set;

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;

    array-length v3, v2

    :goto_a7
    if-lt v1, v3, :cond_aa

    return-void

    :cond_aa
    aget-object v0, v2, v1

    sget-object v4, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocaleNames:Ljava/util/Set;

    invoke-static {v0}, Lcom/pinguo/lib/util/LocaleSupport;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndex(Ljava/util/Locale;)I
    .registers 5

    const/4 v1, 0x3

    sget-object v2, Lcom/pinguo/lib/util/LocaleSupport;->sLocaleMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_f
    :goto_f
    return v1

    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x0

    goto :goto_f

    :cond_1f
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    goto :goto_f
.end method

.method public static getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/pinguo/lib/util/LocaleSupport;->getIndex(Ljava/util/Locale;)I

    move-result v0

    sget-object v1, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract getLocaleObject(Ljava/util/Locale;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation
.end method
