.class public Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleStoreCountryCodeBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sfID"

.field private static countryCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143460"

    const-string v2, "Australia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143445"

    const-string v2, "Austria"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143446"

    const-string v2, "Belgium"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143455"

    const-string v2, "Canada"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143458"

    const-string v2, "Denmark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143447"

    const-string v2, "Finland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143442"

    const-string v2, "France"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143443"

    const-string v2, "Germany"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143448"

    const-string v2, "Greece"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143449"

    const-string v2, "Ireland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143450"

    const-string v2, "Italy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143462"

    const-string v2, "Japan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143451"

    const-string v2, "Luxembourg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143452"

    const-string v2, "Netherlands"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143461"

    const-string v2, "New Zealand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143457"

    const-string v2, "Norway"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143453"

    const-string v2, "Portugal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143454"

    const-string v2, "Spain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143456"

    const-string v2, "Sweden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143459"

    const-string v2, "Switzerland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143444"

    const-string v2, "United Kingdom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    const-string v1, "143441"

    const-string v2, "United States"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "sfID"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint32AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method


# virtual methods
.method public getReadableValue()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->countryCodes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown country code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AppleStoreCountryCodeBox;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
