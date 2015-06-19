.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final DF:Ljava/lang/String; = null

.field private static final INIT_PROBLEM:I = -0x1

.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils; = null

#the value of this static final field might be set in the static constructor
.field private static final OS:I = 0x0

.field private static final OTHER:I = 0x0

.field private static final POSIX_UNIX:I = 0x3

.field private static final UNIX:I = 0x2

.field private static final WINDOWS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, -0x1

    new-instance v4, Lorg/apache/commons/io/FileSystemUtils;

    invoke-direct {v4}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    sput-object v4, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    const/4 v2, 0x0

    const-string v0, "df"

    :try_start_b
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    new-instance v4, Ljava/io/IOException;

    const-string v5, "os.name not found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v1

    const/4 v2, -0x1

    :goto_1d
    sput v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    sput-object v0, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    return-void

    :cond_22
    :try_start_22
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_32

    const/4 v2, 0x1

    goto :goto_1d

    :cond_32
    const-string v4, "linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "mpe/ix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "freebsd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "irix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "digital unix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "unix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6a

    const-string v4, "mac os x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_6c

    :cond_6a
    const/4 v2, 0x2

    goto :goto_1d

    :cond_6c
    const-string v4, "sun os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_84

    const-string v4, "sunos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_84

    const-string v4, "solaris"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_88

    :cond_84
    const/4 v2, 0x3

    const-string v0, "/usr/xpg4/bin/df"

    goto :goto_1d

    :cond_88
    const-string v4, "hp-ux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_98

    const-string v4, "aix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_95} :catch_1b

    move-result v4

    if-eq v4, v5, :cond_9a

    :cond_98
    const/4 v2, 0x3

    goto :goto_1d

    :cond_9a
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method freeSpaceOS(Ljava/lang/String;IZJ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    packed-switch p2, :pswitch_data_40

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception caught when determining operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    if-eqz p3, :cond_1f

    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    :goto_1e
    return-wide v0

    :cond_1f
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_24
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_2e
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_38
        :pswitch_15
        :pswitch_24
        :pswitch_2e
    .end packed-switch
.end method

.method freeSpaceUnix(Ljava/lang/String;ZZJ)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_e

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Path must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    const-string v1, "-"

    if-eqz p2, :cond_25

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_25
    if-eqz p3, :cond_3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_90

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object v1, v0, v7

    const/4 v7, 0x2

    aput-object p1, v0, v7

    :goto_4f
    const/4 v7, 0x3

    invoke-virtual {p0, v0, v7, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_9c

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' did not return info as expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- response was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_90
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object p1, v0, v7

    goto :goto_4f

    :cond_9c
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_10d

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_dc

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_dc

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    return-wide v7

    :cond_dc
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' did not return data as expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- check path is valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_10d
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_cd
.end method

.method freeSpaceWindows(Ljava/lang/String;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2c
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "cmd.exe"

    aput-object v4, v0, v6

    const/4 v4, 0x1

    const-string v5, "/C"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir /a /-c "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const v4, 0x7fffffff

    invoke-virtual {p0, v0, v4, p2, p3}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_5b
    if-ltz v1, :cond_71

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6e

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    :cond_6e
    add-int/lit8 v1, v1, -0x1

    goto :goto_5b

    :cond_71
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command line \'dir /-c\' did not return any info for path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method openProcess([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method parseBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_6d

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' did not find free space in response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v2

    new-instance v3, Lorg/apache/commons/io/IOExceptionWithCause;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' did not return numeric data as expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_6d
    return-wide v0
.end method

.method parseDir(Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x2e

    const/16 v8, 0x2c

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_c
    if-ltz v4, :cond_1a

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4d

    add-int/lit8 v1, v4, 0x1

    :cond_1a
    :goto_1a
    if-ltz v4, :cond_2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_50

    if-eq v3, v8, :cond_50

    if-eq v3, v9, :cond_50

    add-int/lit8 v2, v4, 0x1

    :cond_2c
    if-gez v4, :cond_53

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'dir /-c\' did not return valid info for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4d
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v5, v7, :cond_78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_6f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_75

    :cond_6f
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move v5, v6

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    return-wide v7
.end method

.method performCommand([Ljava/lang/String;IJ)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_c
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/io/ThreadMonitor;->start(J)Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v11}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_ac
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_2a} :catch_f7

    :try_start_2a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    :goto_2e
    if-eqz v7, :cond_4a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v12, v0, :cond_4a

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_2e

    :cond_4a
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    invoke-static {v9}, Lorg/apache/commons/io/ThreadMonitor;->stop(Ljava/lang/Thread;)V

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v12

    if-eqz v12, :cond_bf

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line returned OS error code \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_e2
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_81} :catch_81

    :catch_81
    move-exception v3

    move-object v5, v6

    :goto_83
    :try_start_83
    new-instance v12, Lorg/apache/commons/io/IOExceptionWithCause;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line threw an InterruptedException for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " timeout="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lorg/apache/commons/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_ac
    .catchall {:try_start_83 .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception v12

    :goto_ad
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    if-eqz v11, :cond_be

    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_be
    throw v12

    :cond_bf
    :try_start_bf
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e5

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line did not return any info for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_e2
    .catchall {:try_start_bf .. :try_end_e2} :catchall_e2
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_e2} :catch_81

    :catchall_e2
    move-exception v12

    move-object v5, v6

    goto :goto_ad

    :cond_e5
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    if-eqz v11, :cond_f6

    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_f6
    return-object v8

    :catch_f7
    move-exception v3

    goto :goto_83
.end method
