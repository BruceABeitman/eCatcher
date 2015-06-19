.class public final enum Lcom/alipay/android/app/util/NetConnectionType;
.super Ljava/lang/Enum;
.source "NetConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/util/NetConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_1:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_10:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_11:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_12:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_13:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_15:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_2:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_3:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_4:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_5:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_6:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_8:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NETWORK_TYPE_9:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum NONE:Lcom/alipay/android/app/util/NetConnectionType;

.field public static final enum WIFI:Lcom/alipay/android/app/util/NetConnectionType;


# instance fields
.field private code:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "WIFI"

    const-string/jumbo v2, "WIFI"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->WIFI:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_1"

    const-string/jumbo v2, "unicom2G"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_1:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_2"

    const-string/jumbo v2, "mobile2G"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_2:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_4"

    const-string/jumbo v2, "telecom2G"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_4:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_5"

    const/4 v2, 0x5

    const-string/jumbo v3, "telecom3G"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_5:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_6"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string/jumbo v4, "telecom3G"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_6:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_12"

    const/4 v2, 0x6

    const/16 v3, 0xc

    const-string/jumbo v4, "telecom3G"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_12:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_8"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string/jumbo v4, "unicom3G"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_8:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_3"

    const/16 v2, 0x8

    const-string/jumbo v3, "unicom3G"

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_3:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_13"

    const/16 v2, 0x9

    const/16 v3, 0xd

    const-string/jumbo v4, "LTE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_13:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_11"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string/jumbo v4, "IDEN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_11:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_9"

    const/16 v2, 0xb

    const/16 v3, 0x9

    const-string/jumbo v4, "HSUPA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_9:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_10"

    const/16 v2, 0xc

    const/16 v3, 0xa

    const-string/jumbo v4, "HSPA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_10:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NETWORK_TYPE_15"

    const/16 v2, 0xd

    const/16 v3, 0xf

    const-string/jumbo v4, "HSPAP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_15:Lcom/alipay/android/app/util/NetConnectionType;

    new-instance v0, Lcom/alipay/android/app/util/NetConnectionType;

    const-string/jumbo v1, "NONE"

    const/16 v2, 0xe

    const/4 v3, -0x1

    const-string/jumbo v4, "none"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/util/NetConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NONE:Lcom/alipay/android/app/util/NetConnectionType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alipay/android/app/util/NetConnectionType;

    sget-object v1, Lcom/alipay/android/app/util/NetConnectionType;->WIFI:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_1:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_2:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_4:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_5:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_6:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_12:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_8:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_3:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_13:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_11:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_9:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_10:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NETWORK_TYPE_15:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NONE:Lcom/alipay/android/app/util/NetConnectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/util/NetConnectionType;->ENUM$VALUES:[Lcom/alipay/android/app/util/NetConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/app/util/NetConnectionType;->code:I

    iput-object p4, p0, Lcom/alipay/android/app/util/NetConnectionType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByCode(I)Lcom/alipay/android/app/util/NetConnectionType;
    .registers 6

    invoke-static {}, Lcom/alipay/android/app/util/NetConnectionType;->values()[Lcom/alipay/android/app/util/NetConnectionType;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v3, :cond_b

    sget-object v0, Lcom/alipay/android/app/util/NetConnectionType;->NONE:Lcom/alipay/android/app/util/NetConnectionType;

    :cond_a
    return-object v0

    :cond_b
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/alipay/android/app/util/NetConnectionType;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/util/NetConnectionType;
    .registers 2

    const-class v0, Lcom/alipay/android/app/util/NetConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/util/NetConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/util/NetConnectionType;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/util/NetConnectionType;->ENUM$VALUES:[Lcom/alipay/android/app/util/NetConnectionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/util/NetConnectionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    iget v0, p0, Lcom/alipay/android/app/util/NetConnectionType;->code:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/util/NetConnectionType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/util/NetConnectionType;->name:Ljava/lang/String;

    return-void
.end method
