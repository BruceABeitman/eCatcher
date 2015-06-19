.class public final enum Lcom/bbm/b/ad;
.super Ljava/lang/Enum;
.source "AdsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/b/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/b/ad;

.field public static final enum b:Lcom/bbm/b/ad;

.field public static final enum c:Lcom/bbm/b/ad;

.field private static final synthetic e:[Lcom/bbm/b/ad;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/b/ad;

    const-string v1, "Banner"

    const-string v2, "Banner"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/ad;->a:Lcom/bbm/b/ad;

    new-instance v0, Lcom/bbm/b/ad;

    const-string v1, "Interstitial"

    const-string v2, "Interstitial"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/ad;->b:Lcom/bbm/b/ad;

    new-instance v0, Lcom/bbm/b/ad;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/ad;->c:Lcom/bbm/b/ad;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/b/ad;

    sget-object v1, Lcom/bbm/b/ad;->a:Lcom/bbm/b/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/b/ad;->b:Lcom/bbm/b/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/b/ad;->c:Lcom/bbm/b/ad;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/b/ad;->e:[Lcom/bbm/b/ad;

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

    iput-object p3, p0, Lcom/bbm/b/ad;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/ad;
    .registers 2

    const-class v0, Lcom/bbm/b/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/ad;

    return-object v0
.end method

.method public static values()[Lcom/bbm/b/ad;
    .registers 1

    sget-object v0, Lcom/bbm/b/ad;->e:[Lcom/bbm/b/ad;

    invoke-virtual {v0}, [Lcom/bbm/b/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/b/ad;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/b/ad;->d:Ljava/lang/String;

    return-object v0
.end method
