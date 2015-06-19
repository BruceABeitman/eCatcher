.class public Lcom/ibm/icu/impl/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"


# instance fields
.field private fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private fFallbackType:Ljava/lang/String;

.field private fMainType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz p2, :cond_17

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "gregorian"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_17
    const-string v0, "gregorian"

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    iput-object p2, p0, Lcom/ibm/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    const-string v0, "gregorian"

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    goto :goto_1e
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4

    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_24
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v1

    :goto_25
    return-object v1

    :catch_26
    move-exception v1

    move-object v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_25

    :cond_52
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/format/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_2e
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v1

    :goto_2f
    return-object v1

    :catch_30
    move-exception v1

    move-object v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/format/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_2f

    :cond_66
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_38
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v1

    :goto_39
    return-object v1

    :catch_3a
    move-exception v1

    move-object v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_39

    :cond_7a
    throw v0
.end method

.method public getDateTimePatterns()[Ljava/lang/String;
    .registers 8

    const-string v6, "DateTimePatterns"

    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_f
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_44

    goto :goto_f

    :sswitch_21
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :sswitch_29
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_21
        0x8 -> :sswitch_29
    .end sparse-switch
.end method

.method public getEras(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eras/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOverrides()[Ljava/lang/String;
    .registers 8

    const-string v6, "DateTimePatterns"

    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_f
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_40

    goto :goto_f

    :sswitch_21
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :sswitch_26
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_21
        0x8 -> :sswitch_26
    .end sparse-switch
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/CalendarData;->fBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method
