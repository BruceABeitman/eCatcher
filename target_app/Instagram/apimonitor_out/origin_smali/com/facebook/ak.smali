.class public final enum Lcom/facebook/ak;
.super Ljava/lang/Enum;
.source "LoggingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ak;

.field public static final enum b:Lcom/facebook/ak;

.field public static final enum c:Lcom/facebook/ak;

.field public static final enum d:Lcom/facebook/ak;

.field public static final enum e:Lcom/facebook/ak;

.field private static final synthetic f:[Lcom/facebook/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ak;

    const-string v1, "REQUESTS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    new-instance v0, Lcom/facebook/ak;

    const-string v1, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ak;->b:Lcom/facebook/ak;

    new-instance v0, Lcom/facebook/ak;

    const-string v1, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ak;->c:Lcom/facebook/ak;

    new-instance v0, Lcom/facebook/ak;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    new-instance v0, Lcom/facebook/ak;

    const-string v1, "DEVELOPER_ERRORS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ak;->e:Lcom/facebook/ak;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ak;

    sget-object v1, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ak;->b:Lcom/facebook/ak;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ak;->c:Lcom/facebook/ak;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ak;->e:Lcom/facebook/ak;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ak;->f:[Lcom/facebook/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ak;
    .registers 2

    const-class v0, Lcom/facebook/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ak;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ak;
    .registers 1

    sget-object v0, Lcom/facebook/ak;->f:[Lcom/facebook/ak;

    invoke-virtual {v0}, [Lcom/facebook/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ak;

    return-object v0
.end method
