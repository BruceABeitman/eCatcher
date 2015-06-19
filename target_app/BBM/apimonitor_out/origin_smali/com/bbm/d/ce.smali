.class public final enum Lcom/bbm/d/ce;
.super Ljava/lang/Enum;
.source "BbmdsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/ce;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/ce;

.field public static final enum b:Lcom/bbm/d/ce;

.field public static final enum c:Lcom/bbm/d/ce;

.field public static final enum d:Lcom/bbm/d/ce;

.field private static final synthetic f:[Lcom/bbm/d/ce;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/d/ce;

    const-string v1, "Playing"

    const-string v2, "Playing"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ce;->a:Lcom/bbm/d/ce;

    new-instance v0, Lcom/bbm/d/ce;

    const-string v1, "Stopped"

    const-string v2, "Stopped"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ce;->b:Lcom/bbm/d/ce;

    new-instance v0, Lcom/bbm/d/ce;

    const-string v1, "Paused"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ce;->c:Lcom/bbm/d/ce;

    new-instance v0, Lcom/bbm/d/ce;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ce;->d:Lcom/bbm/d/ce;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/d/ce;

    sget-object v1, Lcom/bbm/d/ce;->a:Lcom/bbm/d/ce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/d/ce;->b:Lcom/bbm/d/ce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/ce;->c:Lcom/bbm/d/ce;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/d/ce;->d:Lcom/bbm/d/ce;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bbm/d/ce;->f:[Lcom/bbm/d/ce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bbm/d/ce;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/ce;
    .registers 2

    const-class v0, Lcom/bbm/d/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ce;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/ce;
    .registers 1

    sget-object v0, Lcom/bbm/d/ce;->f:[Lcom/bbm/d/ce;

    invoke-virtual {v0}, [Lcom/bbm/d/ce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/ce;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/ce;->e:Ljava/lang/String;

    return-object v0
.end method
