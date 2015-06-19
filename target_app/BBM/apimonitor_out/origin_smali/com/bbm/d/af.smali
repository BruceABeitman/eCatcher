.class public final enum Lcom/bbm/d/af;
.super Ljava/lang/Enum;
.source "BbmdsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/af;

.field public static final enum b:Lcom/bbm/d/af;

.field public static final enum c:Lcom/bbm/d/af;

.field private static final synthetic e:[Lcom/bbm/d/af;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/d/af;

    const-string v1, "Visible"

    const-string v2, "Visible"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/af;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/af;->a:Lcom/bbm/d/af;

    new-instance v0, Lcom/bbm/d/af;

    const-string v1, "Closed"

    const-string v2, "Closed"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/af;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/af;->b:Lcom/bbm/d/af;

    new-instance v0, Lcom/bbm/d/af;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/af;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/af;->c:Lcom/bbm/d/af;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/d/af;

    sget-object v1, Lcom/bbm/d/af;->a:Lcom/bbm/d/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/d/af;->b:Lcom/bbm/d/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/af;->c:Lcom/bbm/d/af;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/d/af;->e:[Lcom/bbm/d/af;

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

    iput-object p3, p0, Lcom/bbm/d/af;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/af;
    .registers 2

    const-class v0, Lcom/bbm/d/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/af;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/af;
    .registers 1

    sget-object v0, Lcom/bbm/d/af;->e:[Lcom/bbm/d/af;

    invoke-virtual {v0}, [Lcom/bbm/d/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/af;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/af;->d:Ljava/lang/String;

    return-object v0
.end method
