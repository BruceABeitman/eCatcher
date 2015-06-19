.class public final Lorg/apache/b/a/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "quoted-printable"

.field public static final b:Ljava/lang/String; = "binary"

.field public static final c:Ljava/lang/String; = "base64"

.field public static final d:Ljava/lang/String; = "8bit"

.field public static final e:Ljava/lang/String; = "7bit"

.field public static final f:Ljava/lang/String; = "mime-version"

.field public static final g:Ljava/lang/String; = "content-id"

.field public static final h:Ljava/lang/String; = "content-description"

.field public static final i:Ljava/lang/String; = "content-disposition"

.field public static final j:Ljava/lang/String; = "filename"

.field public static final k:Ljava/lang/String; = "modification-date"

.field public static final l:Ljava/lang/String; = "creation-date"

.field public static final m:Ljava/lang/String; = "read-date"

.field public static final n:Ljava/lang/String; = "size"

.field public static final o:Ljava/lang/String; = "content-language"

.field public static final p:Ljava/lang/String; = "content-location"

.field public static final q:Ljava/lang/String; = "content-md5"

.field static r:Ljava/lang/Class;

.field private static final s:Lorg/apache/commons/logging/Log;

.field private static final t:Ljava/util/Random;

.field private static u:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/g/g;->r:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "org.apache.b.a.g.g"

    invoke-static {v0}, Lorg/apache/b/a/g/g;->g(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/g/g;->r:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/g/g;->s:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/b/a/g/g;->t:Ljava/util/Random;

    const/4 v0, 0x0

    sput v0, Lorg/apache/b/a/g/g;->u:I

    return-void

    :cond_1d
    sget-object v0, Lorg/apache/b/a/g/g;->r:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    const/16 v3, 0x2e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "-=Part."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/apache/b/a/g/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/b/a/g/g;->t:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/b/a/g/g;->t:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "=-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static declared-synchronized b()I
    .registers 3

    const-class v1, Lorg/apache/b/a/g/g;

    monitor-enter v1

    :try_start_3
    sget v0, Lorg/apache/b/a/g/g;->u:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/b/a/g/g;->u:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Map;
    .registers 15

    const/4 v9, 0x3

    const/16 v7, 0x63

    const/16 v13, 0x40

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/b/a/g/b;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Lorg/apache/b/a/g/b;-><init>(I)V

    move v0, v1

    :goto_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2c

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_25

    const/16 v5, 0xa

    if-ne v4, v5, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_28
    invoke-virtual {v3, v4}, Lorg/apache/b/a/g/b;->a(C)V

    goto :goto_25

    :cond_2c
    invoke-virtual {v3}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_64

    const/4 v0, 0x0

    :goto_3f
    const-string v3, ""

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_136

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    new-instance v2, Lorg/apache/b/a/g/b;

    invoke-direct {v2, v13}, Lorg/apache/b/a/g/b;-><init>(I)V

    new-instance v0, Lorg/apache/b/a/g/b;

    invoke-direct {v0, v13}, Lorg/apache/b/a/g/b;-><init>(I)V

    move v3, v1

    move-object v4, v0

    move-object v5, v2

    move v2, v1

    move v0, v1

    :goto_59
    array-length v8, v11

    if-ge v0, v8, :cond_11d

    aget-char v12, v11, v0

    sparse-switch v3, :sswitch_data_138

    :cond_61
    :goto_61
    :sswitch_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_64
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    goto :goto_3f

    :sswitch_7a
    const/16 v8, 0x3b

    if-ne v12, v8, :cond_61

    move v3, v1

    goto :goto_61

    :sswitch_80
    const/16 v3, 0x3d

    if-ne v12, v3, :cond_8d

    sget-object v3, Lorg/apache/b/a/g/g;->s:Lorg/apache/commons/logging/Log;

    const-string v8, "Expected header param name, got \'=\'"

    invoke-interface {v3, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    move v3, v7

    goto :goto_61

    :cond_8d
    new-instance v5, Lorg/apache/b/a/g/b;

    invoke-direct {v5, v13}, Lorg/apache/b/a/g/b;-><init>(I)V

    new-instance v4, Lorg/apache/b/a/g/b;

    invoke-direct {v4, v13}, Lorg/apache/b/a/g/b;-><init>(I)V

    move v3, v6

    :sswitch_98
    const/16 v8, 0x3d

    if-ne v12, v8, :cond_a6

    invoke-virtual {v5}, Lorg/apache/b/a/g/b;->e()I

    move-result v3

    if-nez v3, :cond_a4

    move v3, v7

    goto :goto_61

    :cond_a4
    const/4 v3, 0x2

    goto :goto_61

    :cond_a6
    invoke-virtual {v5, v12}, Lorg/apache/b/a/g/b;->a(C)V

    goto :goto_61

    :sswitch_aa
    sparse-switch v12, :sswitch_data_156

    move v8, v6

    move v3, v9

    :goto_af
    if-eqz v8, :cond_61

    :sswitch_b1
    sparse-switch v12, :sswitch_data_164

    invoke-virtual {v4, v12}, Lorg/apache/b/a/g/b;->a(C)V

    move v8, v1

    :goto_b8
    if-eqz v8, :cond_61

    :sswitch_ba
    sparse-switch v12, :sswitch_data_172

    move v3, v7

    goto :goto_61

    :sswitch_bf
    move v8, v1

    goto :goto_af

    :sswitch_c1
    const/4 v3, 0x4

    move v8, v1

    goto :goto_af

    :sswitch_c4
    invoke-virtual {v5}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    move v8, v6

    goto :goto_b8

    :sswitch_de
    move v3, v1

    goto :goto_61

    :sswitch_e0
    sparse-switch v12, :sswitch_data_180

    if-eqz v2, :cond_ea

    const/16 v2, 0x5c

    invoke-virtual {v4, v2}, Lorg/apache/b/a/g/b;->a(C)V

    :cond_ea
    invoke-virtual {v4, v12}, Lorg/apache/b/a/g/b;->a(C)V

    move v2, v1

    goto/16 :goto_61

    :sswitch_f0
    if-nez v2, :cond_108

    invoke-virtual {v5}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    goto/16 :goto_61

    :cond_108
    invoke-virtual {v4, v12}, Lorg/apache/b/a/g/b;->a(C)V

    move v2, v1

    goto/16 :goto_61

    :sswitch_10e
    if-eqz v2, :cond_115

    const/16 v8, 0x5c

    invoke-virtual {v4, v8}, Lorg/apache/b/a/g/b;->a(C)V

    :cond_115
    if-nez v2, :cond_11a

    move v2, v6

    goto/16 :goto_61

    :cond_11a
    move v2, v1

    goto/16 :goto_61

    :cond_11d
    if-ne v3, v9, :cond_136

    invoke-virtual {v5}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_136
    return-object v10

    nop

    :sswitch_data_138
    .sparse-switch
        0x0 -> :sswitch_80
        0x1 -> :sswitch_98
        0x2 -> :sswitch_aa
        0x3 -> :sswitch_b1
        0x4 -> :sswitch_e0
        0x5 -> :sswitch_ba
        0x63 -> :sswitch_7a
    .end sparse-switch

    :sswitch_data_156
    .sparse-switch
        0x9 -> :sswitch_bf
        0x20 -> :sswitch_bf
        0x22 -> :sswitch_c1
    .end sparse-switch

    :sswitch_data_164
    .sparse-switch
        0x9 -> :sswitch_c4
        0x20 -> :sswitch_c4
        0x3b -> :sswitch_c4
    .end sparse-switch

    :sswitch_data_172
    .sparse-switch
        0x9 -> :sswitch_61
        0x20 -> :sswitch_61
        0x3b -> :sswitch_de
    .end sparse-switch

    :sswitch_data_180
    .sparse-switch
        0x22 -> :sswitch_f0
        0x5c -> :sswitch_10e
    .end sparse-switch
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2e

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<Mime4j."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/b/a/g/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/b/a/g/g;->t:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_3c

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3c
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
