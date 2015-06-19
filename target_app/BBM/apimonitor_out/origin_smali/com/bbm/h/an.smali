.class public final enum Lcom/bbm/h/an;
.super Ljava/lang/Enum;
.source "AddContactsSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/h/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/h/an;

.field public static final enum b:Lcom/bbm/h/an;

.field public static final enum c:Lcom/bbm/h/an;

.field public static final enum d:Lcom/bbm/h/an;

.field public static final enum e:Lcom/bbm/h/an;

.field public static final enum f:Lcom/bbm/h/an;

.field private static final synthetic g:[Lcom/bbm/h/an;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "IncomingAds"

    invoke-direct {v0, v1, v3}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "IncomingBBM"

    invoke-direct {v0, v1, v4}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "IncomingGroup"

    invoke-direct {v0, v1, v5}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "InivteToBBM"

    invoke-direct {v0, v1, v6}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "FoundFriends"

    invoke-direct {v0, v1, v7}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;

    new-instance v0, Lcom/bbm/h/an;

    const-string v1, "OutgoingInvites"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bbm/h/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bbm/h/an;

    sget-object v1, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/h/an;->g:[Lcom/bbm/h/an;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/h/an;
    .registers 2

    const-class v0, Lcom/bbm/h/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/h/an;

    return-object v0
.end method

.method public static values()[Lcom/bbm/h/an;
    .registers 1

    sget-object v0, Lcom/bbm/h/an;->g:[Lcom/bbm/h/an;

    invoke-virtual {v0}, [Lcom/bbm/h/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/h/an;

    return-object v0
.end method
