.class public Lcom/ibm/icu/impl/RelativeDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

.field private fDateFormat:Lcom/ibm/icu/text/DateFormat;

.field fDateStyle:I

.field private transient fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

.field fLocale:Lcom/ibm/icu/util/ULocale;

.field private fTimeFormat:Lcom/ibm/icu/text/DateFormat;

.field fTimeStyle:I


# direct methods
.method public constructor <init>(IILcom/ibm/icu/util/ULocale;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    iput-object p3, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    iput p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    iput p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    iget v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-eq v1, v3, :cond_39

    iget v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    and-int/lit16 v0, v1, -0x81

    invoke-static {v0, p3}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateFormat:Lcom/ibm/icu/text/DateFormat;

    :goto_1b
    iget v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-eq v1, v3, :cond_3c

    iget v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 v0, v1, -0x81

    invoke-static {v0, p3}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeFormat:Lcom/ibm/icu/text/DateFormat;

    :goto_29
    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v2, v1}, Lcom/ibm/icu/impl/RelativeDateFormat;->initializeCalendar(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    invoke-direct {p0}, Lcom/ibm/icu/impl/RelativeDateFormat;->loadDates()V

    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;

    return-void

    :cond_39
    iput-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateFormat:Lcom/ibm/icu/text/DateFormat;

    goto :goto_1b

    :cond_3c
    iput-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeFormat:Lcom/ibm/icu/text/DateFormat;

    goto :goto_29
.end method

.method private static dayDifference(Lcom/ibm/icu/util/Calendar;)I
    .registers 7

    const/16 v5, 0x14

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clear()V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    return v0
.end method

.method private getStringForDay(I)Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/ibm/icu/impl/RelativeDateFormat;->loadDates()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v1, p1, :cond_1c

    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    :goto_1b
    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private initializeCalendar(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_c

    if-nez p1, :cond_f

    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-object v0

    :cond_f
    invoke-static {p1, p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    goto :goto_c
.end method

.method private initializeCombinedFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
    .registers 9

    const-string v2, "{1} {0}"

    :try_start_2
    new-instance v0, Lcom/ibm/icu/impl/CalendarData;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v4, v3

    const/16 v5, 0x9

    if-lt v4, v5, :cond_24

    const/16 v1, 0x8

    array-length v4, v3

    const/16 v5, 0xd

    if-lt v4, v5, :cond_22

    iget v4, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    sparse-switch v4, :sswitch_data_3c

    :cond_22
    :goto_22
    aget-object v2, v3, v1
    :try_end_24
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_24} :catch_3a

    :cond_24
    :goto_24
    new-instance v4, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v4, v2, p2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    iput-object v4, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    iget-object v4, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    return-object v4

    :sswitch_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :sswitch_31
    add-int/lit8 v1, v1, 0x2

    goto :goto_22

    :sswitch_34
    add-int/lit8 v1, v1, 0x3

    goto :goto_22

    :sswitch_37
    add-int/lit8 v1, v1, 0x4

    goto :goto_22

    :catch_3a
    move-exception v4

    goto :goto_24

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_2e
        0x1 -> :sswitch_31
        0x2 -> :sswitch_34
        0x3 -> :sswitch_37
        0x80 -> :sswitch_2e
        0x81 -> :sswitch_31
        0x82 -> :sswitch_34
        0x83 -> :sswitch_37
    .end sparse-switch
.end method

.method private declared-synchronized loadDates()V
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ibm/icu/impl/CalendarData;

    iget-object v8, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v9, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v9}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    const-string v8, "fields"

    const-string v9, "day"

    const-string v10, "relative"

    invoke-virtual {v0, v8, v9, v10}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v5

    new-instance v1, Ljava/util/TreeSet;

    new-instance v8, Lcom/ibm/icu/impl/RelativeDateFormat$1;

    invoke-direct {v8, p0}, Lcom/ibm/icu/impl/RelativeDateFormat$1;-><init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V

    invoke-direct {v1, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_26
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    invoke-direct {v6, p0, v3, v7}, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;-><init>(Lcom/ibm/icu/impl/RelativeDateFormat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    goto :goto_26

    :catchall_41
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_44
    const/4 v8, 0x0

    :try_start_45
    new-array v8, v8, [Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    iput-object v8, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    iget-object v8, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    invoke-interface {v1, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    check-cast v8, [Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    iput-object v8, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:[Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_41

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 13

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-eq v5, v6, :cond_f

    invoke-static {p1}, Lcom/ibm/icu/impl/RelativeDateFormat;->dayDifference(Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    iget v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-ne v5, v6, :cond_23

    if-eqz v1, :cond_19

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    :goto_18
    return-object p2

    :cond_19
    iget v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-eq v5, v6, :cond_18

    iget-object v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateFormat:Lcom/ibm/icu/text/DateFormat;

    invoke-virtual {v5, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_23
    if-nez v1, :cond_38

    iget v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-eq v5, v6, :cond_38

    iget-object v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateFormat:Lcom/ibm/icu/text/DateFormat;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1, v6, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_38
    new-instance v3, Ljava/text/FieldPosition;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/text/FieldPosition;-><init>(I)V

    iget-object v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeFormat:Lcom/ibm/icu/text/DateFormat;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1, v6, v3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    const/4 v7, 0x1

    aput-object v4, v6, v7

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v8}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v6, p2, v7}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-lez v5, :cond_83

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_83

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_18

    :cond_83
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-lez v5, :cond_18

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_18
.end method

.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Relative Date parse is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
