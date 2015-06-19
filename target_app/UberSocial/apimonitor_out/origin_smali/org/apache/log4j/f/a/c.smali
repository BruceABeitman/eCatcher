.class public Lorg/apache/log4j/f/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String; = "[slf5s.start]"

.field public static final b:Ljava/lang/String; = "[slf5s."

.field public static final c:Ljava/lang/String; = "[slf5s.DATE]"

.field public static final d:Ljava/lang/String; = "[slf5s.THREAD]"

.field public static final e:Ljava/lang/String; = "[slf5s.CATEGORY]"

.field public static final f:Ljava/lang/String; = "[slf5s.LOCATION]"

.field public static final g:Ljava/lang/String; = "[slf5s.MESSAGE]"

.field public static final h:Ljava/lang/String; = "[slf5s.PRIORITY]"

.field public static final i:Ljava/lang/String; = "[slf5s.NDC]"

.field private static k:Ljava/text/SimpleDateFormat;


# instance fields
.field j:Lorg/apache/log4j/f/b/as;

.field private l:Lorg/apache/log4j/f/b/d;

.field private m:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/f/a/c;->k:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/f/a/c;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/f/a/c;->m:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/log4j/f/a/c;->m:Ljava/io/InputStream;

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "[slf5s."

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_24

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_10

    :cond_24
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/f/a/c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/a/c;->j:Lorg/apache/log4j/f/b/as;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/as;->hide()V

    iget-object v0, p0, Lorg/apache/log4j/f/a/c;->j:Lorg/apache/log4j/f/b/as;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/as;->dispose()V

    return-void
.end method

.method static a(Lorg/apache/log4j/f/a/c;)V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/f/a/c;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "[slf5s.DATE]"

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return-wide v0

    :cond_b
    sget-object v3, Lorg/apache/log4j/f/a/c;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_14} :catch_16

    move-result-wide v0

    goto :goto_a

    :catch_16
    move-exception v2

    goto :goto_a
.end method

.method private c(Ljava/lang/String;)Lorg/apache/log4j/f/e;
    .registers 3

    const-string v0, "[slf5s.PRIORITY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_8
    invoke-static {v0}, Lorg/apache/log4j/f/e;->a(Ljava/lang/String;)Lorg/apache/log4j/f/e;
    :try_end_b
    .catch Lorg/apache/log4j/f/f; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    sget-object v0, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;

    goto :goto_c

    :cond_11
    sget-object v0, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;

    goto :goto_c
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[slf5s.THREAD]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[slf5s.CATEGORY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[slf5s.LOCATION]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[slf5s.MESSAGE]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[slf5s.NDC]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/f/a/c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;)Lorg/apache/log4j/f/g;
    .registers 5

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/apache/log4j/f/d;

    invoke-direct {v0}, Lorg/apache/log4j/f/d;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/g;->b(J)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->c(Ljava/lang/String;)Lorg/apache/log4j/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->a(Lorg/apache/log4j/f/e;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->e(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/f/a/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/g;->d(Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/f/b/am;

    iget-object v1, p0, Lorg/apache/log4j/f/a/c;->l:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/apache/log4j/f/b/d;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/a/c;->l:Lorg/apache/log4j/f/b/d;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/log4j/f/b/as;

    iget-object v2, p0, Lorg/apache/log4j/f/a/c;->l:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v2

    const-string v3, "Loading file..."

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/f/b/as;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/log4j/f/a/c;->j:Lorg/apache/log4j/f/b/as;

    :try_start_10
    iget-object v1, p0, Lorg/apache/log4j/f/a/c;->m:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/log4j/f/a/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_17
    const-string v3, "[slf5s.start]"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_38

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/f/a/c;->j(Ljava/lang/String;)Lorg/apache/log4j/f/g;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_30

    iget-object v4, p0, Lorg/apache/log4j/f/a/c;->l:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v4, v1}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;)V

    :cond_30
    const-string v1, "[slf5s.start]"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_17

    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4f

    if-eqz v0, :cond_4f

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/f/a/c;->j(Ljava/lang/String;)Lorg/apache/log4j/f/g;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v2, p0, Lorg/apache/log4j/f/a/c;->l:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;)V

    :cond_4f
    if-nez v0, :cond_66

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid log file format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_59} :catch_59
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_59} :catch_6f

    :catch_59
    move-exception v0

    invoke-direct {p0}, Lorg/apache/log4j/f/a/c;->a()V

    const-string v0, "Error - Invalid log file format.\nPlease see documentation on how to load log files."

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;)V

    :goto_62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/f/a/c;->m:Ljava/io/InputStream;

    return-void

    :cond_66
    :try_start_66
    new-instance v0, Lorg/apache/log4j/f/a/d;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/a/d;-><init>(Lorg/apache/log4j/f/a/c;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_6e} :catch_59
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_62

    :catch_6f
    move-exception v0

    invoke-direct {p0}, Lorg/apache/log4j/f/a/c;->a()V

    const-string v0, "Error - Unable to load log file!"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/a/c;->a(Ljava/lang/String;)V

    goto :goto_62
.end method
