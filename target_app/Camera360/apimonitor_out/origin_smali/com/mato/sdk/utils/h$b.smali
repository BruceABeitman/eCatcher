.class public final enum Lcom/mato/sdk/utils/h$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/mato/sdk/utils/h$b;

.field public static final enum b:Lcom/mato/sdk/utils/h$b;

.field public static final enum c:Lcom/mato/sdk/utils/h$b;

.field public static final enum d:Lcom/mato/sdk/utils/h$b;

.field public static final enum e:Lcom/mato/sdk/utils/h$b;

.field public static final enum f:Lcom/mato/sdk/utils/h$b;

.field private static final synthetic g:[Lcom/mato/sdk/utils/h$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NETWORK_NONE"

    invoke-direct {v0, v1, v3}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v4}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NETWORK_2G"

    invoke-direct {v0, v1, v5}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NETWORK_3G"

    invoke-direct {v0, v1, v6}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NETWORK_4G"

    invoke-direct {v0, v1, v7}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;

    new-instance v0, Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "NUM_NETWORK_STATES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mato/sdk/utils/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$b;->f:Lcom/mato/sdk/utils/h$b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mato/sdk/utils/h$b;

    sget-object v1, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mato/sdk/utils/h$b;->f:Lcom/mato/sdk/utils/h$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mato/sdk/utils/h$b;->g:[Lcom/mato/sdk/utils/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mato/sdk/utils/h$b;
    .registers 2

    const-class v0, Lcom/mato/sdk/utils/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mato/sdk/utils/h$b;

    return-object v0
.end method

.method public static values()[Lcom/mato/sdk/utils/h$b;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mato/sdk/utils/h$b;->g:[Lcom/mato/sdk/utils/h$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/mato/sdk/utils/h$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
