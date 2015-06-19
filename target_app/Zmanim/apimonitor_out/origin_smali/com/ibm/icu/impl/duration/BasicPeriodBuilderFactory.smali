.class Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    }
.end annotation


# static fields
.field private static final allBits:S = 0xffs


# instance fields
.field private ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

.field private settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    return-object v0
.end method

.method static approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J
    .registers 3

    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->approxDurations:[J

    iget-byte v1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private getSettings()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setInUse()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public getFixedUnitBuilder(Lcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->get(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getMultiUnitBuilder(I)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->get(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/MultiUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getOneOrTwoUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;->get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getSingleUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAllowZero(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAvailableUnitRange(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 8

    const/4 v1, 0x0

    iget-byte v0, p2, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    :goto_3
    iget-byte v2, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    if-gt v0, v2, :cond_d

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    if-nez v1, :cond_38

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    iget-object v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMaxLimit(F)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMaxLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMinLimit(F)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMinLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 2

    return-object p0
.end method

.method public setUnitIsAvailable(Lcom/ibm/icu/impl/duration/TimeUnit;Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-short v0, v1, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-eqz p2, :cond_15

    iget-byte v1, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    :goto_c
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0

    :cond_15
    iget-byte v1, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v1, v2, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    goto :goto_c
.end method

.method public setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method
