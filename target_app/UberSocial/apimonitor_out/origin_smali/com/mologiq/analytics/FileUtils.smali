.class Lcom/mologiq/analytics/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1c0

.field static final b:I = 0x100

.field static final c:I = 0x80

.field static final d:I = 0x40

.field static final e:I = 0x38

.field static final f:I = 0x20

.field static final g:I = 0x10

.field static final h:I = 0x8

.field static final i:I = 0x7

.field static final j:I = 0x4

.field static final k:I = 0x2

.field static final l:I = 0x1

.field private static final m:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mologiq/analytics/FileUtils;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-lez p1, :cond_4d

    add-int/lit8 v0, p1, 0x1

    :try_start_c
    new-array v1, v0, [B

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_ca

    move-result v2

    if-gtz v2, :cond_1a

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    :goto_19
    return-object v0

    :cond_1a
    if-gt v2, p1, :cond_26

    :try_start_1c
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_ca

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :cond_26
    if-nez p2, :cond_32

    :try_start_28
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_ca

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_ca

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :cond_4d
    if-gez p1, :cond_ab

    move-object v3, v2

    :goto_50
    if-eqz v2, :cond_53

    move v1, v0

    :cond_53
    if-nez v2, :cond_58

    neg-int v2, p1

    :try_start_56
    new-array v2, v2, [B

    :cond_58
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    array-length v6, v2
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_ca

    if-eq v5, v6, :cond_d1

    if-nez v3, :cond_69

    if-gtz v5, :cond_69

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    goto :goto_19

    :cond_69
    if-nez v3, :cond_75

    :try_start_6b
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_ca

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :cond_75
    if-lez v5, :cond_cf

    const/4 v1, 0x0

    :try_start_78
    array-length v6, v3

    sub-int/2addr v6, v5

    invoke-static {v3, v5, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v6, v3

    sub-int/2addr v6, v5

    invoke-static {v2, v1, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_83
    if-eqz p2, :cond_87

    if-nez v0, :cond_90

    :cond_87
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_ca

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :cond_90
    :try_start_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_ca

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_19

    :cond_ab
    :try_start_ab
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :cond_b4
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_be

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_be
    array-length v3, v1

    if-eq v2, v3, :cond_b4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_ca

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_19

    :catchall_ca
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_cf
    move v0, v1

    goto :goto_83

    :cond_d1
    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_50
.end method

.method static a(Ljava/io/File;)Z
    .registers 3

    sget-object v0, Lcom/mologiq/analytics/FileUtils;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_12

    :try_start_5
    invoke-static {v1, p1}, Lcom/mologiq/analytics/FileUtils;->a(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_c
    return v0

    :catchall_d
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1f

    const/16 v1, 0x1000

    :try_start_8
    new-array v1, v1, [B

    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1a

    move-result v3

    if-gez v3, :cond_15

    :try_start_10
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1f

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v1

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v1

    goto :goto_14
.end method

.method static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method static native getFileStatus(Ljava/lang/String;Lcom/mologiq/analytics/p;)Z
.end method

.method static native getPermissions(Ljava/lang/String;[I)I
.end method

.method static native setPermissions(Ljava/lang/String;III)I
.end method
