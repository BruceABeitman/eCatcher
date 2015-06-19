.class public Lcom/ibm/icu/impl/duration/BasicDurationFormat;
.super Lcom/ibm/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static checkXMLDuration:Z = false

.field private static final serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

.field transient pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

.field transient pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->checkXMLDuration:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/text/DurationFormat;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-static {}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DurationFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-static {}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DurationFormat;
    .registers 2

    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_13

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    :goto_12
    return-object v1

    :cond_13
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_22

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    goto :goto_12

    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot format given Object as a Duration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
