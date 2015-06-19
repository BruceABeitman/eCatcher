.class public final enum Lcom/bbm/f/af;
.super Ljava/lang/Enum;
.source "ServiceLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/f/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/f/af;

.field public static final enum b:Lcom/bbm/f/af;

.field public static final enum c:Lcom/bbm/f/af;

.field public static final enum d:Lcom/bbm/f/af;

.field public static final enum e:Lcom/bbm/f/af;

.field private static final synthetic f:[Lcom/bbm/f/af;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/f/af;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v2}, Lcom/bbm/f/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;

    new-instance v0, Lcom/bbm/f/af;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v3}, Lcom/bbm/f/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/af;->b:Lcom/bbm/f/af;

    new-instance v0, Lcom/bbm/f/af;

    const-string v1, "NO_USER_ACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/bbm/f/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/af;->c:Lcom/bbm/f/af;

    new-instance v0, Lcom/bbm/f/af;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/bbm/f/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/af;->d:Lcom/bbm/f/af;

    new-instance v0, Lcom/bbm/f/af;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/bbm/f/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/af;->e:Lcom/bbm/f/af;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bbm/f/af;

    sget-object v1, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/f/af;->b:Lcom/bbm/f/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/f/af;->c:Lcom/bbm/f/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/f/af;->d:Lcom/bbm/f/af;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/f/af;->e:Lcom/bbm/f/af;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bbm/f/af;->f:[Lcom/bbm/f/af;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/f/af;
    .registers 2

    const-class v0, Lcom/bbm/f/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/af;

    return-object v0
.end method

.method public static values()[Lcom/bbm/f/af;
    .registers 1

    sget-object v0, Lcom/bbm/f/af;->f:[Lcom/bbm/f/af;

    invoke-virtual {v0}, [Lcom/bbm/f/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/f/af;

    return-object v0
.end method
