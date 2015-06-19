.class public final enum Lcom/a/a/a/aw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/a/a/a/aw;

.field public static final enum b:Lcom/a/a/a/aw;

.field public static final enum c:Lcom/a/a/a/aw;

.field private static final synthetic d:[Lcom/a/a/a/aw;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/a/aw;

    const-string v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/aw;->a:Lcom/a/a/a/aw;

    new-instance v0, Lcom/a/a/a/aw;

    const-string v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, Lcom/a/a/a/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/aw;->b:Lcom/a/a/a/aw;

    new-instance v0, Lcom/a/a/a/aw;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, Lcom/a/a/a/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/aw;->c:Lcom/a/a/a/aw;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/a/aw;

    sget-object v1, Lcom/a/a/a/aw;->a:Lcom/a/a/a/aw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/aw;->b:Lcom/a/a/a/aw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/aw;->c:Lcom/a/a/a/aw;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/a/aw;->d:[Lcom/a/a/a/aw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/aw;
    .registers 2

    const-class v0, Lcom/a/a/a/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/aw;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/aw;
    .registers 1

    sget-object v0, Lcom/a/a/a/aw;->d:[Lcom/a/a/a/aw;

    invoke-virtual {v0}, [Lcom/a/a/a/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/aw;

    return-object v0
.end method
