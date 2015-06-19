.class public final Lorg/apache/log4j/i/c;
.super Ljava/text/DateFormat;
.source "SourceFile"


# static fields
.field public static final a:I = -0x2

.field public static final b:I = -0x1

.field private static final c:J = 0x1L

.field private static final d:Ljava/lang/String; = "0123456789"

.field private static final e:I = 0x28e

.field private static final f:Ljava/lang/String; = "654"

.field private static final g:I = 0x3db

.field private static final h:Ljava/lang/String; = "987"

.field private static final i:Ljava/lang/String; = "000"


# instance fields
.field private final j:Ljava/text/DateFormat;

.field private k:I

.field private l:J

.field private m:Ljava/lang/StringBuffer;

.field private final n:I

.field private o:J

.field private final p:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;I)V
    .registers 8

    const-wide/high16 v3, -0x8000

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/apache/log4j/i/c;->p:Ljava/util/Date;

    if-nez p1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateFormat cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-gez p2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expiration must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    iput p2, p0, Lorg/apache/log4j/i/c;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/i/c;->k:I

    iput-wide v3, p0, Lorg/apache/log4j/i/c;->o:J

    iput-wide v3, p0, Lorg/apache/log4j/i/c;->l:J

    return-void
.end method

.method public static a(JLjava/lang/String;Ljava/text/DateFormat;)I
    .registers 14

    const/16 v3, 0x28e

    const/4 v5, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    div-long v0, p0, v6

    mul-long/2addr v0, v6

    cmp-long v2, v0, p0

    if-lez v2, :cond_e

    sub-long/2addr v0, v6

    :cond_e
    sub-long v6, p0, v0

    long-to-int v6, v6

    const-string v2, "654"

    if-ne v6, v3, :cond_19

    const/16 v3, 0x3db

    const-string v2, "987"

    :cond_19
    new-instance v7, Ljava/util/Date;

    int-to-long v8, v3

    add-long/2addr v8, v0

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v3, v8, :cond_30

    move v3, v5

    :cond_2f
    :goto_2f
    return v3

    :cond_30
    move v3, v4

    :goto_31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_89

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_86

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "ABC"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v8, v4}, Lorg/apache/log4j/i/c;->a(ILjava/lang/StringBuffer;I)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_84

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v4, v7, v3, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v1, "000"

    const-string v2, "000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v0, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_84
    move v3, v5

    goto :goto_2f

    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_89
    const/4 v3, -0x2

    goto :goto_2f
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_12

    const-string v1, "SSS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/16 v0, 0x3e8

    goto :goto_11
.end method

.method private static a(ILjava/lang/StringBuffer;I)V
    .registers 6

    const-string v0, "0123456789"

    div-int/lit8 v1, p0, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, p2, 0x1

    const-string v1, "0123456789"

    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, p2, 0x2

    const-string v1, "0123456789"

    rem-int/lit8 v2, p0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 10

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->o:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_d
    :goto_d
    return-object p3

    :cond_e
    iget v0, p0, Lorg/apache/log4j/i/c;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    iget v2, p0, Lorg/apache/log4j/i/c;->n:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_42

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_42

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_42

    iget v0, p0, Lorg/apache/log4j/i/c;->k:I

    if-ltz v0, :cond_3a

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/log4j/i/c;->k:I

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/i/c;->a(ILjava/lang/StringBuffer;I)V

    :cond_3a
    iput-wide p1, p0, Lorg/apache/log4j/i/c;->o:J

    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_42
    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/apache/log4j/i/c;->p:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    iget-object v2, p0, Lorg/apache/log4j/i/c;->p:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iput-wide p1, p0, Lorg/apache/log4j/i/c;->o:J

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->o:J

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    iget-wide v2, p0, Lorg/apache/log4j/i/c;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_74

    iget-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/log4j/i/c;->l:J

    :cond_74
    iget v0, p0, Lorg/apache/log4j/i/c;->k:I

    if-ltz v0, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/i/c;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/log4j/i/c;->a(JLjava/lang/String;Ljava/text/DateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/i/c;->k:I

    goto :goto_d
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/log4j/i/c;->a(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 5

    const-wide/high16 v1, -0x8000

    iget-object v0, p0, Lorg/apache/log4j/i/c;->j:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iput-wide v1, p0, Lorg/apache/log4j/i/c;->o:J

    iput-wide v1, p0, Lorg/apache/log4j/i/c;->l:J

    return-void
.end method
