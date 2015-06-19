.class public final enum Lcom/bbm/b/aj;
.super Ljava/lang/Enum;
.source "AdsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/b/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/b/aj;

.field public static final enum b:Lcom/bbm/b/aj;

.field public static final enum c:Lcom/bbm/b/aj;

.field private static final synthetic e:[Lcom/bbm/b/aj;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/b/aj;

    const-string v1, "Banner"

    const-string v2, "Banner"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/b/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    new-instance v0, Lcom/bbm/b/aj;

    const-string v1, "Interstitial"

    const-string v2, "Interstitial"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/b/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/aj;->b:Lcom/bbm/b/aj;

    new-instance v0, Lcom/bbm/b/aj;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/b/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/aj;->c:Lcom/bbm/b/aj;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/b/aj;

    sget-object v1, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/b/aj;->b:Lcom/bbm/b/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/b/aj;->c:Lcom/bbm/b/aj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/b/aj;->e:[Lcom/bbm/b/aj;

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

    iput-object p3, p0, Lcom/bbm/b/aj;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/aj;
    .registers 2

    const-class v0, Lcom/bbm/b/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/aj;

    return-object v0
.end method

.method public static values()[Lcom/bbm/b/aj;
    .registers 1

    sget-object v0, Lcom/bbm/b/aj;->e:[Lcom/bbm/b/aj;

    invoke-virtual {v0}, [Lcom/bbm/b/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/b/aj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/b/aj;->d:Ljava/lang/String;

    return-object v0
.end method
