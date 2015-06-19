.class public final enum Lcom/facebook/ad;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/facebook/ad;

.field public static final enum b:Lcom/facebook/ad;

.field public static final enum c:Lcom/facebook/ad;

.field private static final synthetic d:[Lcom/facebook/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ad;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ad;->a:Lcom/facebook/ad;

    new-instance v0, Lcom/facebook/ad;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ad;->b:Lcom/facebook/ad;

    new-instance v0, Lcom/facebook/ad;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ad;->c:Lcom/facebook/ad;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ad;

    sget-object v1, Lcom/facebook/ad;->a:Lcom/facebook/ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ad;->b:Lcom/facebook/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ad;->c:Lcom/facebook/ad;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ad;->d:[Lcom/facebook/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ad;
    .registers 2

    const-class v0, Lcom/facebook/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ad;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ad;
    .registers 1

    sget-object v0, Lcom/facebook/ad;->d:[Lcom/facebook/ad;

    invoke-virtual {v0}, [Lcom/facebook/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ad;

    return-object v0
.end method
