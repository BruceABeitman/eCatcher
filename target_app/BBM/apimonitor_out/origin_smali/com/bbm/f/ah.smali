.class public final enum Lcom/bbm/f/ah;
.super Ljava/lang/Enum;
.source "ServiceLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/f/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/f/ah;

.field public static final enum b:Lcom/bbm/f/ah;

.field public static final enum c:Lcom/bbm/f/ah;

.field private static final synthetic d:[Lcom/bbm/f/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/f/ah;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/bbm/f/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/ah;->a:Lcom/bbm/f/ah;

    new-instance v0, Lcom/bbm/f/ah;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/bbm/f/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;

    new-instance v0, Lcom/bbm/f/ah;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/bbm/f/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/f/ah;->c:Lcom/bbm/f/ah;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/f/ah;

    sget-object v1, Lcom/bbm/f/ah;->a:Lcom/bbm/f/ah;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/f/ah;->c:Lcom/bbm/f/ah;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/f/ah;->d:[Lcom/bbm/f/ah;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/f/ah;
    .registers 2

    const-class v0, Lcom/bbm/f/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ah;

    return-object v0
.end method

.method public static values()[Lcom/bbm/f/ah;
    .registers 1

    sget-object v0, Lcom/bbm/f/ah;->d:[Lcom/bbm/f/ah;

    invoke-virtual {v0}, [Lcom/bbm/f/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/f/ah;

    return-object v0
.end method