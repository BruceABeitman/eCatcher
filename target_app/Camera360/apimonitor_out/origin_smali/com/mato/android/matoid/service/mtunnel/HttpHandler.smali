.class public Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String; = "Mato.HttpHandler"

.field private static b:Z = true

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/util/Map;

.field private static synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    :try_start_a
    const-string/jumbo v0, "wsld"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    sput-boolean v1, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    const-string/jumbo v1, "Mato.HttpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadLibrary fail! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static a(Lcom/mato/sdk/a/b$g;)Lcom/mato/android/matoid/service/mtunnel/b;
    .registers 4

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/mato/sdk/a/b$g;->j()I

    move-result v0

    if-ne v0, v2, :cond_d

    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_12

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/mato/sdk/a/b$g;->f()I

    move-result v0

    goto :goto_8

    :cond_12
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c

    :cond_18
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c

    :cond_1e
    if-ne v0, v2, :cond_23

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->d:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c

    :cond_23
    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->e:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c

    :cond_29
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->f:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c

    :cond_2f
    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    goto :goto_c
.end method

.method public static a(I)V
    .registers 3

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c()I
    .registers 1

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->getVersion()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static d()I
    .registers 1

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->getBindPort()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method private static f()Z
    .registers 1

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    return v0
.end method

.method private g()V
    .registers 2

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->handleHTTP()V

    :cond_7
    return-void
.end method

.method private static native getBindPort()I
.end method

.method public static getFilesDir()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkState()I
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string/jumbo v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x3

    goto :goto_7

    :cond_13
    const-string/jumbo v2, "EDGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "GPRS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2e
    const/4 v0, 0x2

    goto :goto_7

    :cond_30
    const-string/jumbo v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v0, 0x1

    goto :goto_7

    :cond_3b
    const-string/jumbo v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    goto :goto_7
.end method

.method public static getOriginalDestAddr(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Mato.HttpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getOriginalDestAddr  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "port is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_32

    const-string/jumbo v0, ""

    :cond_32
    return-object v0
.end method

.method public static getSignalStrength()I
    .registers 2

    const-string/jumbo v0, "Mato.HttpHandler"

    const-string/jumbo v1, "getSignalStrength"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->getNetworkState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/mato/sdk/utils/g;->n()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {}, Lcom/mato/sdk/utils/g;->m()I

    move-result v0

    goto :goto_14
.end method

.method private static native getVersion()I
.end method

.method private static h()[Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/mato/sdk/utils/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "MATO-NET: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    const-string/jumbo v0, "CM,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    const-string/jumbo v0, "WIFI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-string/jumbo v0, "WIFI"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_33
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MATO-VERSION: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->c()I

    move-result v2

    invoke-static {v2}, Lcom/mato/sdk/utils/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mato/sdk/a/b;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mato/sdk/utils/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "X-Maa-Terminal-Resolution: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "X-Maa-Alias: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "X-Maa-Reserve-Exif: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_15d

    const-string/jumbo v0, "no"

    :goto_c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_d9
    const-string/jumbo v4, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    const-string/jumbo v0, "CT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    :cond_ea
    const-string/jumbo v4, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const-string/jumbo v0, "CU,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    :cond_fb
    const-string/jumbo v0, "Unknown,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    :cond_103
    const-string/jumbo v0, "EDGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string/jumbo v0, "EDGE"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_114
    const-string/jumbo v0, "GPRS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string/jumbo v0, "GPRS"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_125
    const-string/jumbo v0, "CDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const-string/jumbo v0, "CDMA"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_136
    const-string/jumbo v0, "3G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    const-string/jumbo v0, "3G"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_147
    const-string/jumbo v0, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    const-string/jumbo v0, "4G"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_33

    :cond_15d
    const-string/jumbo v0, "yes"

    goto/16 :goto_c1
.end method

.method private native handleHTTP()V
.end method

.method private static i()Z
    .registers 1

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->isTunnelEstablished()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static native isTunnelEstablished()Z
.end method

.method private static j()V
    .registers 1

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static synthetic k()[I
    .registers 3

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->f:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/mato/sdk/utils/h$b;->values()[Lcom/mato/sdk/utils/h$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/mato/sdk/utils/h$b;->f:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {v1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->f:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method public static onNdkCrashed()V
    .registers 4

    const-string/jumbo v0, "Mato.HttpHandler"

    const-string/jumbo v1, "crash test"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "-d"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "threadtime"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "-s"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "DEBUG"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-static {}, Lcom/mato/sdk/utils/a;->a()Lcom/mato/sdk/utils/a;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/utils/a;->a(Ljava/io/InputStream;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    goto :goto_42
.end method

.method private native resetCustomHeaders([Ljava/lang/String;I)V
.end method

.method private native resetTunnel()V
.end method

.method private native resetUrlRegex(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setBypassRemoteProxy(Z)V
.end method

.method private native setSettings([BI)V
.end method

.method private native stopServer()V
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "Mato.HttpHandler"

    const-string/jumbo v1, "Signalling native Mtunnel HttpHandler to stop.."

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->stopServer()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public final a(Lcom/mato/sdk/utils/h$b;)V
    .registers 13

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->k()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mato/sdk/utils/h$b;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_340

    move v1, v2

    :goto_14
    new-instance v8, Lcom/mato/android/matoid/service/mtunnel/d;

    invoke-direct {v8}, Lcom/mato/android/matoid/service/mtunnel/d;-><init>()V

    const-string/jumbo v7, "127.0.0.1"

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Ljava/lang/String;)V

    const/16 v7, 0x1fbb

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->a(I)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->g()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_264

    const-string/jumbo v7, "maabiz1.chinanetcenter.com"

    :goto_2d
    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->h()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->b(I)V

    const-string/jumbo v7, "Mato.HttpHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "the httphandler mes is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->j()I

    move-result v7

    if-ne v7, v5, :cond_26a

    move v7, v2

    :goto_66
    if-nez v7, :cond_270

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    :goto_6a
    invoke-virtual {v8, v6}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/b;)V

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/h;->a:Lcom/mato/android/matoid/service/mtunnel/h;

    invoke-virtual {v8, v6}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/h;)V

    invoke-static {}, Lcom/mato/sdk/a/b;->s()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/mato/android/matoid/service/mtunnel/d;->e(I)V

    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v6

    if-ne v6, v3, :cond_28f

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->a()Z

    move-result v6

    move-object v7, v8

    :goto_84
    invoke-virtual {v7, v6}, Lcom/mato/android/matoid/service/mtunnel/d;->d(Z)V

    const-string/jumbo v6, "Mato.HttpHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "the bypassremoteproxy is:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->g()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/mato/android/matoid/service/mtunnel/d;->e(Ljava/lang/String;)V

    const-string/jumbo v6, "Mato.HttpHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "the apkpath is:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->c()I

    move-result v6

    if-eq v6, v3, :cond_29d

    if-eq v6, v4, :cond_29d

    if-eq v6, v5, :cond_29d

    move v4, v2

    :goto_cd
    if-nez v4, :cond_2a0

    invoke-virtual {v8, v2}, Lcom/mato/android/matoid/service/mtunnel/d;->b(Z)V

    :goto_d2
    const-string/jumbo v4, "1"

    invoke-virtual {v8, v4}, Lcom/mato/android/matoid/service/mtunnel/d;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$d;->a()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e2

    array-length v6, v5

    move v4, v2

    :goto_e0
    if-lt v4, v6, :cond_2cb

    :cond_e2
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->i()Z

    move-result v4

    invoke-virtual {v8, v4}, Lcom/mato/android/matoid/service/mtunnel/d;->c(Z)V

    const-string/jumbo v4, "Mato.HttpHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "the compressionPolicy is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->j()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->j()I

    move-result v4

    if-nez v4, :cond_301

    :try_start_109
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/utils/g;->a(Z)Lcom/mato/android/matoid/service/mtunnel/g;

    move-result-object v0

    const-string/jumbo v3, "Mato.HttpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the webpsupport status is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/g;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/mato/android/matoid/service/mtunnel/g;->c:Lcom/mato/android/matoid/service/mtunnel/g;

    if-ne v0, v3, :cond_2d4

    const-string/jumbo v3, "Mato.HttpHandler"

    const-string/jumbo v4, "support all"

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/g;)V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_13f} :catch_2ea

    :goto_13f
    invoke-static {}, Lcom/mato/sdk/a/b;->b()Lcom/mato/sdk/a/b$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->k()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->e(Z)V

    const-string/jumbo v3, "Mato.HttpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UseHostSuffix is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->k()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->h()I

    move-result v0

    const-string/jumbo v4, "Mato.HttpHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CachePeerHost is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->k()Z

    move-result v4

    if-eqz v4, :cond_320

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a1

    if-eqz v0, :cond_1a1

    :cond_19b
    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->h(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->d(I)V

    :cond_1a1
    :goto_1a1
    invoke-static {}, Lcom/mato/sdk/a/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ae

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->i(Ljava/lang/String;)V

    :cond_1ae
    const-string/jumbo v3, "Mato.HttpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "filteredUrlRegex is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d1

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->j(Ljava/lang/String;)V

    :cond_1d1
    const-string/jumbo v0, "Mato.HttpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the cachePeerHost and port is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->h()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_200
    if-lt v0, v4, :cond_336

    const-string/jumbo v0, "Mato.HttpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the compression Type is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->h()Lcom/mato/android/matoid/service/mtunnel/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mato/android/matoid/service/mtunnel/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/mato/android/matoid/service/mtunnel/d;->f(Z)V

    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->e()Lcom/google/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b;->b()[B

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->setSettings([BI)V

    return-void

    :pswitch_22f
    const-string/jumbo v0, "_3g"

    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    move v1, v2

    goto/16 :goto_14

    :pswitch_239
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    move v1, v3

    goto/16 :goto_14

    :pswitch_243
    const-string/jumbo v0, "_2g"

    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    move v1, v4

    goto/16 :goto_14

    :pswitch_24d
    const-string/jumbo v0, "_3g"

    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    move v1, v5

    goto/16 :goto_14

    :pswitch_257
    const-string/jumbo v0, "_4g"

    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    move v1, v6

    goto/16 :goto_14

    :pswitch_261
    const/4 v1, 0x5

    goto/16 :goto_14

    :cond_264
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->g()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2d

    :cond_26a
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->f()I

    move-result v7

    goto/16 :goto_66

    :cond_270
    if-eq v7, v3, :cond_28b

    if-ne v7, v4, :cond_278

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;

    goto/16 :goto_6a

    :cond_278
    if-ne v7, v5, :cond_27e

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->d:Lcom/mato/android/matoid/service/mtunnel/b;

    goto/16 :goto_6a

    :cond_27e
    if-ne v7, v6, :cond_284

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->e:Lcom/mato/android/matoid/service/mtunnel/b;

    goto/16 :goto_6a

    :cond_284
    const/4 v6, 0x5

    if-ne v7, v6, :cond_28b

    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->f:Lcom/mato/android/matoid/service/mtunnel/b;

    goto/16 :goto_6a

    :cond_28b
    sget-object v6, Lcom/mato/android/matoid/service/mtunnel/b;->b:Lcom/mato/android/matoid/service/mtunnel/b;

    goto/16 :goto_6a

    :cond_28f
    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v6

    if-eqz v6, :cond_299

    move v6, v2

    move-object v7, v8

    goto/16 :goto_84

    :cond_299
    move v6, v3

    move-object v7, v8

    goto/16 :goto_84

    :cond_29d
    move v4, v3

    goto/16 :goto_cd

    :cond_2a0
    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->b(Z)V

    sget-object v4, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;

    invoke-virtual {v8, v4}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/e;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->d()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/mato/android/matoid/service/mtunnel/d;->c(I)V

    const-string/jumbo v4, "Mato.HttpHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "use wsp 6666 num "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2

    :cond_2cb
    aget-object v7, v5, v4

    invoke-virtual {v8, v7}, Lcom/mato/android/matoid/service/mtunnel/d;->f(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e0

    :cond_2d4
    :try_start_2d4
    sget-object v3, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;

    if-ne p1, v3, :cond_2ed

    const-string/jumbo v3, "Mato.HttpHandler"

    const-string/jumbo v4, "just 2g"

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/g;)V

    goto/16 :goto_13f

    :catch_2ea
    move-exception v0

    goto/16 :goto_13f

    :cond_2ed
    const-string/jumbo v0, "Mato.HttpHandler"

    const-string/jumbo v3, "just return original img"

    invoke-static {v0, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V

    sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->a:Lcom/mato/android/matoid/service/mtunnel/b;

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/b;)V
    :try_end_2ff
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2ff} :catch_2ea

    goto/16 :goto_13f

    :cond_301
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->j()I

    move-result v4

    if-ne v4, v3, :cond_31b

    :try_start_307
    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/utils/g;->a(Z)Lcom/mato/android/matoid/service/mtunnel/g;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Lcom/mato/android/matoid/service/mtunnel/g;)V
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_316} :catch_318

    goto/16 :goto_13f

    :catch_318
    move-exception v0

    goto/16 :goto_13f

    :cond_31b
    invoke-virtual {v8, v2}, Lcom/mato/android/matoid/service/mtunnel/d;->a(Z)V

    goto/16 :goto_13f

    :cond_320
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_328

    if-nez v0, :cond_19b

    :cond_328
    invoke-virtual {v8}, Lcom/mato/android/matoid/service/mtunnel/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->h(Ljava/lang/String;)V

    const/16 v0, 0x1a0a

    invoke-virtual {v8, v0}, Lcom/mato/android/matoid/service/mtunnel/d;->d(I)V

    goto/16 :goto_1a1

    :cond_336
    aget-object v5, v3, v0

    invoke-virtual {v8, v5}, Lcom/mato/android/matoid/service/mtunnel/d;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_200

    nop

    :pswitch_data_340
    .packed-switch 0x1
        :pswitch_22f
        :pswitch_239
        :pswitch_243
        :pswitch_24d
        :pswitch_257
        :pswitch_261
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->resetUrlRegex(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Z)V
    .registers 3

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->setBypassRemoteProxy(Z)V

    :cond_7
    return-void
.end method

.method public final b()V
    .registers 3

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->h()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->resetCustomHeaders([Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public final e()V
    .registers 2

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->resetTunnel()V

    :cond_7
    return-void
.end method

.method public run()V
    .registers 3

    sget-boolean v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V

    sget-object v0, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V

    sget-object v0, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V

    sget-object v0, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V

    sget-object v0, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;

    invoke-virtual {p0, v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V

    :try_start_1d
    invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->handleHTTP()V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_2a

    :goto_20
    const-string/jumbo v0, "Mato.HttpHandler"

    const-string/jumbo v1, "mtunnel  Thread stop"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "Mato.HttpHandler"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
