.class final enum Lcom/mato/sdk/proxy/Proxy$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/proxy/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/mato/sdk/proxy/Proxy$b;

.field public static final enum b:Lcom/mato/sdk/proxy/Proxy$b;

.field public static final enum c:Lcom/mato/sdk/proxy/Proxy$b;

.field private static final synthetic d:[Lcom/mato/sdk/proxy/Proxy$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mato/sdk/proxy/Proxy$b;

    const-string/jumbo v1, "UseRemoteSetting"

    invoke-direct {v0, v1, v2}, Lcom/mato/sdk/proxy/Proxy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    new-instance v0, Lcom/mato/sdk/proxy/Proxy$b;

    const-string/jumbo v1, "Pass"

    invoke-direct {v0, v1, v3}, Lcom/mato/sdk/proxy/Proxy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/proxy/Proxy$b;->b:Lcom/mato/sdk/proxy/Proxy$b;

    new-instance v0, Lcom/mato/sdk/proxy/Proxy$b;

    const-string/jumbo v1, "NotPass"

    invoke-direct {v0, v1, v4}, Lcom/mato/sdk/proxy/Proxy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/proxy/Proxy$b;->c:Lcom/mato/sdk/proxy/Proxy$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mato/sdk/proxy/Proxy$b;->b:Lcom/mato/sdk/proxy/Proxy$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mato/sdk/proxy/Proxy$b;->c:Lcom/mato/sdk/proxy/Proxy$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mato/sdk/proxy/Proxy$b;->d:[Lcom/mato/sdk/proxy/Proxy$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mato/sdk/proxy/Proxy$b;
    .registers 2

    const-class v0, Lcom/mato/sdk/proxy/Proxy$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mato/sdk/proxy/Proxy$b;

    return-object v0
.end method

.method public static values()[Lcom/mato/sdk/proxy/Proxy$b;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mato/sdk/proxy/Proxy$b;->d:[Lcom/mato/sdk/proxy/Proxy$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/mato/sdk/proxy/Proxy$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
