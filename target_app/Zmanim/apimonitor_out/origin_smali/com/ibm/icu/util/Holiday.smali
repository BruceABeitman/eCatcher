.class public abstract Lcom/ibm/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# static fields
.field private static noHolidays:[Lcom/ibm/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Lcom/ibm/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    sput-object v0, Lcom/ibm/icu/util/Holiday;->noHolidays:[Lcom/ibm/icu/util/Holiday;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method

.method public static getHolidays()[Lcom/ibm/icu/util/Holiday;
    .registers 1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/Holiday;->getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method

.method public static getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;
    .registers 5

    sget-object v2, Lcom/ibm/icu/util/Holiday;->noHolidays:[Lcom/ibm/icu/util/Holiday;

    :try_start_2
    const-string v3, "com.ibm.icu.impl.data.HolidayBundle"

    invoke-static {v3, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v3, "holidays"

    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/ibm/icu/util/Holiday;

    move-object v0, p0

    check-cast v0, [Lcom/ibm/icu/util/Holiday;

    move-object v2, v0
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_14} :catch_15

    :goto_14
    return-object v2

    :catch_15
    move-exception v3

    goto :goto_14
.end method

.method public static getHolidays(Ljava/util/Locale;)[Lcom/ibm/icu/util/Holiday;
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/Holiday;->getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Holiday;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    :try_start_2
    const-string v2, "com.ibm.icu.impl.data.HolidayBundle"

    invoke-static {v2, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v1

    :goto_e
    return-object v1

    :catch_f
    move-exception v2

    goto :goto_e
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Holiday;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRule()Lcom/ibm/icu/util/DateRule;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isOn(Ljava/util/Date;)Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public setRule(Lcom/ibm/icu/util/DateRule;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method
