.class public final enum Lcom/mato/sdk/utils/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/mato/sdk/utils/h$a;

.field public static final enum b:Lcom/mato/sdk/utils/h$a;

.field public static final enum c:Lcom/mato/sdk/utils/h$a;

.field private static final synthetic d:[Lcom/mato/sdk/utils/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mato/sdk/utils/h$a;

    const-string/jumbo v1, "NoConnection"

    invoke-direct {v0, v1, v2}, Lcom/mato/sdk/utils/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$a;->a:Lcom/mato/sdk/utils/h$a;

    new-instance v0, Lcom/mato/sdk/utils/h$a;

    const-string/jumbo v1, "Mobile"

    invoke-direct {v0, v1, v3}, Lcom/mato/sdk/utils/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$a;->b:Lcom/mato/sdk/utils/h$a;

    new-instance v0, Lcom/mato/sdk/utils/h$a;

    const-string/jumbo v1, "Wifi"

    invoke-direct {v0, v1, v4}, Lcom/mato/sdk/utils/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/utils/h$a;->c:Lcom/mato/sdk/utils/h$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mato/sdk/utils/h$a;

    sget-object v1, Lcom/mato/sdk/utils/h$a;->a:Lcom/mato/sdk/utils/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mato/sdk/utils/h$a;->b:Lcom/mato/sdk/utils/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mato/sdk/utils/h$a;->c:Lcom/mato/sdk/utils/h$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mato/sdk/utils/h$a;->d:[Lcom/mato/sdk/utils/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mato/sdk/utils/h$a;
    .registers 2

    const-class v0, Lcom/mato/sdk/utils/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mato/sdk/utils/h$a;

    return-object v0
.end method

.method public static values()[Lcom/mato/sdk/utils/h$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mato/sdk/utils/h$a;->d:[Lcom/mato/sdk/utils/h$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/mato/sdk/utils/h$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
