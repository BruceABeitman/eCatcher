.class Lcom/baidu/location/Jni;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static byte:I

.field private static case:I

.field private static do:I

.field private static for:I

.field private static if:I

.field private static int:I

.field private static new:Z

.field private static try:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/baidu/location/Jni;->case:I

    sput v2, Lcom/baidu/location/Jni;->try:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/Jni;->byte:I

    const/16 v0, 0xb

    sput v0, Lcom/baidu/location/Jni;->for:I

    const/16 v0, 0xc

    sput v0, Lcom/baidu/location/Jni;->int:I

    const/16 v0, 0xd

    sput v0, Lcom/baidu/location/Jni;->if:I

    const/16 v0, 0xe

    sput v0, Lcom/baidu/location/Jni;->a:I

    const/16 v0, 0x400

    sput v0, Lcom/baidu/location/Jni;->do:I

    sput-boolean v1, Lcom/baidu/location/Jni;->new:Z

    :try_start_1f
    const-string/jumbo v0, "locSDK3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1f .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    sput-boolean v2, Lcom/baidu/location/Jni;->new:Z

    goto :goto_25
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a([BI)Ljava/lang/String;
.end method

.method private static native b(DDII)Ljava/lang/String;
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x2e4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/baidu/location/Jni;->new:Z

    if-eqz v1, :cond_b

    const-string/jumbo v0, "err!"

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget v1, Lcom/baidu/location/Jni;->do:I

    new-array v4, v1, [B

    array-length v1, v3

    if-le v1, v0, :cond_67

    :goto_16
    move v1, v2

    :goto_17
    if-ge v2, v0, :cond_30

    aget-byte v5, v3, v2

    if-eqz v5, :cond_26

    aget-byte v5, v3, v2

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    const-string/jumbo v5, "baidu_location_service"

    const-string/jumbo v6, "\\0 found in string"

    invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_30
    const-string/jumbo v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x20568

    invoke-static {v4, v1}, Lcom/baidu/location/Jni;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|tp=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_67
    move v0, v1

    goto :goto_16
.end method

.method public static if(DDLjava/lang/String;)[D
    .registers 12

    const/4 v0, 0x2

    new-array v6, v0, [D

    fill-array-data v6, :array_9a

    sget-boolean v0, Lcom/baidu/location/Jni;->new:Z

    if-eqz v0, :cond_c

    move-object v0, v6

    :goto_b
    return-object v0

    :cond_c
    const/4 v4, -0x1

    const-string/jumbo v0, "bd09"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget v4, Lcom/baidu/location/Jni;->case:I

    :cond_18
    :goto_18
    const-string/jumbo v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x20568

    move-wide v0, p0

    move-wide v2, p2

    :try_start_37
    invoke-static/range {v0 .. v5}, Lcom/baidu/location/Jni;->b(DDII)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v6, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v6, v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_56} :catch_94

    :goto_56
    move-object v0, v6

    goto :goto_b

    :cond_58
    const-string/jumbo v0, "bd09ll"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget v4, Lcom/baidu/location/Jni;->try:I

    goto :goto_18

    :cond_64
    const-string/jumbo v0, "gcj02"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    sget v4, Lcom/baidu/location/Jni;->byte:I

    goto :goto_18

    :cond_70
    const-string/jumbo v0, "gps2gcj"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget v4, Lcom/baidu/location/Jni;->for:I

    goto :goto_18

    :cond_7c
    const-string/jumbo v0, "bd092gcj"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    sget v4, Lcom/baidu/location/Jni;->int:I

    goto :goto_18

    :cond_88
    const-string/jumbo v0, "bd09ll2gcj"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget v4, Lcom/baidu/location/Jni;->if:I

    goto :goto_18

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    nop

    :array_9a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
