.class public abstract Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.super Ljava/lang/Object;
.source "ICULocaleService.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocaleKeyFactory"
.end annotation


# static fields
.field public static final INVISIBLE:Z = false

.field public static final VISIBLE:Z = true


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final visible:Z


# direct methods
.method protected constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    iput-object p2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v1

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v4

    :goto_16
    return-object v4

    :cond_17
    const/4 v4, 0x0

    goto :goto_16
.end method

.method public getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 5

    if-nez p2, :cond_4

    move-object v1, p1

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .registers 2

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z
    .registers 5

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    const-string v1, ", visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .registers 6

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    if-eqz v3, :cond_1c

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1c
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method
