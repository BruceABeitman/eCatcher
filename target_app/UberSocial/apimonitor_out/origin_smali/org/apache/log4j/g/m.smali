.class public Lorg/apache/log4j/g/m;
.super Lorg/apache/log4j/b;
.source "SourceFile"


# static fields
.field public static final A:I = 0xb8

.field protected static final B:I = 0x0

.field protected static final C:I = 0x1

.field static final D:Ljava/lang/String; = "    "

.field public static final a:I = 0x0

.field public static final i:I = 0x8

.field public static final j:I = 0x10

.field public static final k:I = 0x18

.field public static final l:I = 0x20

.field public static final m:I = 0x28

.field public static final n:I = 0x30

.field public static final o:I = 0x38

.field public static final p:I = 0x40

.field public static final q:I = 0x48

.field public static final r:I = 0x50

.field public static final s:I = 0x58

.field public static final t:I = 0x80

.field public static final u:I = 0x88

.field public static final v:I = 0x90

.field public static final w:I = 0x98

.field public static final x:I = 0xa0

.field public static final y:I = 0xa8

.field public static final z:I = 0xb0


# instance fields
.field E:I

.field F:Ljava/lang/String;

.field G:Z

.field H:Lorg/apache/log4j/c/ac;

.field I:Ljava/lang/String;

.field private J:Z

.field private final K:Ljava/text/SimpleDateFormat;

.field private L:Ljava/lang/String;

.field private M:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/g/m;->E:I

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->G:Z

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->J:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/g/m;->K:Ljava/text/SimpleDateFormat;

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->M:Z

    invoke-direct {p0}, Lorg/apache/log4j/g/m;->o()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/g/m;->E:I

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->G:Z

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->J:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/g/m;->K:Ljava/text/SimpleDateFormat;

    iput-boolean v3, p0, Lorg/apache/log4j/g/m;->M:Z

    iput-object p1, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    iput p2, p0, Lorg/apache/log4j/g/m;->E:I

    invoke-direct {p0}, Lorg/apache/log4j/g/m;->o()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/g/m;-><init>(Lorg/apache/log4j/u;I)V

    invoke-virtual {p0, p2}, Lorg/apache/log4j/g/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_42

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    const-string v0, "kern"

    goto :goto_4

    :sswitch_8
    const-string v0, "user"

    goto :goto_4

    :sswitch_b
    const-string v0, "mail"

    goto :goto_4

    :sswitch_e
    const-string v0, "daemon"

    goto :goto_4

    :sswitch_11
    const-string v0, "auth"

    goto :goto_4

    :sswitch_14
    const-string v0, "syslog"

    goto :goto_4

    :sswitch_17
    const-string v0, "lpr"

    goto :goto_4

    :sswitch_1a
    const-string v0, "news"

    goto :goto_4

    :sswitch_1d
    const-string v0, "uucp"

    goto :goto_4

    :sswitch_20
    const-string v0, "cron"

    goto :goto_4

    :sswitch_23
    const-string v0, "authpriv"

    goto :goto_4

    :sswitch_26
    const-string v0, "ftp"

    goto :goto_4

    :sswitch_29
    const-string v0, "local0"

    goto :goto_4

    :sswitch_2c
    const-string v0, "local1"

    goto :goto_4

    :sswitch_2f
    const-string v0, "local2"

    goto :goto_4

    :sswitch_32
    const-string v0, "local3"

    goto :goto_4

    :sswitch_35
    const-string v0, "local4"

    goto :goto_4

    :sswitch_38
    const-string v0, "local5"

    goto :goto_4

    :sswitch_3b
    const-string v0, "local6"

    goto :goto_4

    :sswitch_3e
    const-string v0, "local7"

    goto :goto_4

    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_8
        0x10 -> :sswitch_b
        0x18 -> :sswitch_e
        0x20 -> :sswitch_11
        0x28 -> :sswitch_14
        0x30 -> :sswitch_17
        0x38 -> :sswitch_1a
        0x40 -> :sswitch_1d
        0x48 -> :sswitch_20
        0x50 -> :sswitch_23
        0x58 -> :sswitch_26
        0x80 -> :sswitch_29
        0x88 -> :sswitch_2c
        0x90 -> :sswitch_2f
        0x98 -> :sswitch_32
        0xa0 -> :sswitch_35
        0xa8 -> :sswitch_38
        0xb0 -> :sswitch_3b
        0xb8 -> :sswitch_3e
    .end sparse-switch
.end method

.method private a(J)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x20

    const/4 v3, 0x4

    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->J:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/g/m;->K:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_22
    invoke-direct {p0}, Lorg/apache/log4j/g/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    const-string v0, ""

    goto :goto_30
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3fb

    if-gt v0, v1, :cond_f

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    invoke-virtual {v0, p2}, Lorg/apache/log4j/c/ac;->write(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/log4j/g/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/g/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_6
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    goto :goto_f

    :cond_1b
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x10

    goto :goto_f

    :cond_26
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x18

    goto :goto_f

    :cond_31
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x20

    goto :goto_f

    :cond_3c
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x28

    goto :goto_f

    :cond_47
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 v0, 0x30

    goto :goto_f

    :cond_52
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/16 v0, 0x38

    goto :goto_f

    :cond_5d
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/16 v0, 0x40

    goto :goto_f

    :cond_68
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x48

    goto :goto_f

    :cond_73
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v0, 0x50

    goto :goto_f

    :cond_7e
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    const/16 v0, 0x58

    goto :goto_f

    :cond_89
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/16 v0, 0x80

    goto/16 :goto_f

    :cond_95
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/16 v0, 0x88

    goto/16 :goto_f

    :cond_a1
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const/16 v0, 0x90

    goto/16 :goto_f

    :cond_ad
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const/16 v0, 0x98

    goto/16 :goto_f

    :cond_b9
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const/16 v0, 0xa0

    goto/16 :goto_f

    :cond_c5
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const/16 v0, 0xa8

    goto/16 :goto_f

    :cond_d1
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xb0

    goto/16 :goto_f

    :cond_dd
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/16 v0, 0xb8

    goto/16 :goto_f

    :cond_e9
    const/4 v0, -0x1

    goto/16 :goto_f
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/g/m;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/g/m;->G:Z

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    :cond_1b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->G:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_30
    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/log4j/c/ac;->a(I)V

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/ac;->write(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private o()V
    .registers 4

    iget v0, p0, Lorg/apache/log4j/g/m;->E:I

    invoke-static {v0}, Lorg/apache/log4j/g/m;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    if-nez v0, :cond_35

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/g/m;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" is an unknown syslog facility. Defaulting to \"USER\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/g/m;->E:I

    const-string v0, "user:"

    iput-object v0, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    :goto_34
    return-void

    :cond_35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    goto :goto_34
.end method

.method private p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/m;->L:Ljava/lang/String;

    if-nez v0, :cond_e

    :try_start_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/m;->L:Ljava/lang/String;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/apache/log4j/g/m;->L:Ljava/lang/String;

    return-object v0

    :catch_11
    move-exception v0

    const-string v0, "UNKNOWN_HOST"

    iput-object v0, p0, Lorg/apache/log4j/g/m;->L:Ljava/lang/String;

    goto :goto_e
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/log4j/g/m;->h:Z

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_37

    if-eqz v0, :cond_29

    :try_start_8
    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->M:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/g/m;->e(Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    invoke-virtual {v0}, Lorg/apache/log4j/c/ac;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_37
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_29} :catch_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_3a

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_37

    goto :goto_29

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3a
    move-exception v0

    const/4 v0, 0x0

    :try_start_3c
    iput-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_37

    goto :goto_29
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 9

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/g/m;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    if-nez v0, :cond_31

    iget-object v0, p0, Lorg/apache/log4j/g/m;->e:Lorg/apache/log4j/k/e;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No syslog host is set for SyslogAppedender named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/g/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_31
    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->M:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/g/m;->e(Ljava/lang/String;)V

    :cond_4a
    iput-boolean v6, p0, Lorg/apache/log4j/g/m;->M:Z

    :cond_4c
    iget-wide v0, p1, Lorg/apache/log4j/k/k;->d:J

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/g/m;->a(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    if-nez v0, :cond_da

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    iget-boolean v2, p0, Lorg/apache/log4j/g/m;->G:Z

    if-nez v2, :cond_68

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7d

    :cond_68
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/apache/log4j/g/m;->G:Z

    if-eqz v3, :cond_76

    iget-object v3, p0, Lorg/apache/log4j/g/m;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7d
    iget-object v2, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/log4j/v;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/c/ac;->a(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_e2

    invoke-direct {p0, v1, v0}, Lorg/apache/log4j/g/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_95
    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a1
    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    :goto_a8
    array-length v3, v2

    if-ge v0, v3, :cond_b

    aget-object v3, v2, v0

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e8

    iget-object v3, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/c/ac;->write(Ljava/lang/String;)V

    :goto_d7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    :cond_da
    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    :cond_e2
    iget-object v2, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/c/ac;->write(Ljava/lang/String;)V

    goto :goto_95

    :cond_e8
    iget-object v3, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/c/ac;->write(Ljava/lang/String;)V

    goto :goto_d7
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/m;->G:Z

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/m;->J:Z

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/m;->I:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lorg/apache/log4j/c/ac;

    new-instance v1, Lorg/apache/log4j/c/ad;

    invoke-direct {v1, p1}, Lorg/apache/log4j/c/ad;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/log4j/g/m;->E:I

    iget-object v3, p0, Lorg/apache/log4j/g/m;->e:Lorg/apache/log4j/k/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ac;-><init>(Ljava/io/Writer;ILorg/apache/log4j/k/e;)V

    iput-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    iput-object p1, p0, Lorg/apache/log4j/g/m;->I:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lorg/apache/log4j/g/m;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/g/m;->E:I

    iget v0, p0, Lorg/apache/log4j/g/m;->E:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is an unknown syslog facility. Defaulting to [USER]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/g/m;->E:I

    :cond_30
    invoke-direct {p0}, Lorg/apache/log4j/g/m;->o()V

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/g/m;->H:Lorg/apache/log4j/c/ac;

    iget v1, p0, Lorg/apache/log4j/g/m;->E:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/c/ac;->b(I)V

    goto :goto_2
.end method

.method public i()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->J:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/apache/log4j/g/m;->p()Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/log4j/g/m;->b:Lorg/apache/log4j/u;

    invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/g/m;->e(Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/g/m;->M:Z

    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/apache/log4j/g/m;->E:I

    invoke-static {v0}, Lorg/apache/log4j/g/m;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->G:Z

    return v0
.end method

.method public final n()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/m;->J:Z

    return v0
.end method
