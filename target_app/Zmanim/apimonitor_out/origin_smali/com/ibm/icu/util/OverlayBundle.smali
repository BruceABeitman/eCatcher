.class public Lcom/ibm/icu/util/OverlayBundle;
.super Ljava/util/ResourceBundle;
.source "OverlayBundle.java"


# instance fields
.field private baseNames:[Ljava/lang/String;

.field private bundles:[Ljava/util/ResourceBundle;

.field private locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    array-length v0, p1

    new-array v0, v0, [Ljava/util/ResourceBundle;

    iput-object v0, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    return-void
.end method

.method private load(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    if-nez v3, :cond_26

    const/4 v1, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    aput-object v4, v3, p1

    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3
    :try_end_36
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_36} :catch_65

    sub-int/2addr v3, v6

    if-eq p1, v3, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_26

    new-instance v2, Ljava/util/Locale;

    const-string v3, "xx"

    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4f
    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    aput-object v4, v3, p1
    :try_end_5b
    .catch Ljava/util/MissingResourceException; {:try_start_4f .. :try_end_5b} :catch_5c

    goto :goto_26

    :catch_5c
    move-exception v3

    move-object v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    if-nez v3, :cond_26

    throw v0

    :catch_65
    move-exception v3

    move-object v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ne p1, v3, :cond_6e

    throw v0

    :cond_6e
    const/4 v1, 0x1

    goto :goto_3a
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .registers 4

    iget-object v1, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/OverlayBundle;->load(I)V

    iget-object v1, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v3, v2

    :goto_3
    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v4, v4

    if-ge v1, v4, :cond_16

    invoke-direct {p0, v1}, Lcom/ibm/icu/util/OverlayBundle;->load(I)V

    :try_start_b
    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_12} :catch_17

    move-result-object v2

    move-object v3, v2

    :cond_14
    if-eqz v3, :cond_21

    :cond_16
    return-object v3

    :catch_17
    move-exception v4

    move-object v0, v4

    iget-object v4, p0, Lcom/ibm/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_14

    throw v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
