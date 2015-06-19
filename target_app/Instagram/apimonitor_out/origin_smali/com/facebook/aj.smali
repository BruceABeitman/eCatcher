.class public final enum Lcom/facebook/aj;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/aj;

.field public static final enum b:Lcom/facebook/aj;

.field public static final enum c:Lcom/facebook/aj;

.field private static final synthetic d:[Lcom/facebook/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/aj;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    new-instance v0, Lcom/facebook/aj;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aj;->b:Lcom/facebook/aj;

    new-instance v0, Lcom/facebook/aj;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aj;->c:Lcom/facebook/aj;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/aj;

    sget-object v1, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/aj;->b:Lcom/facebook/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/aj;->c:Lcom/facebook/aj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/aj;->d:[Lcom/facebook/aj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/aj;
    .registers 2

    const-class v0, Lcom/facebook/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/aj;

    return-object v0
.end method

.method public static values()[Lcom/facebook/aj;
    .registers 1

    sget-object v0, Lcom/facebook/aj;->d:[Lcom/facebook/aj;

    invoke-virtual {v0}, [Lcom/facebook/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/aj;

    return-object v0
.end method
