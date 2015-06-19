.class public final enum Lcom/bbm/g/by;
.super Ljava/lang/Enum;
.source "GroupsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/by;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/by;

.field public static final enum b:Lcom/bbm/g/by;

.field public static final enum c:Lcom/bbm/g/by;

.field private static final synthetic e:[Lcom/bbm/g/by;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/g/by;

    const-string v1, "Pending"

    const-string v2, "Pending"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/g/by;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/by;->a:Lcom/bbm/g/by;

    new-instance v0, Lcom/bbm/g/by;

    const-string v1, "Completed"

    const-string v2, "Completed"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/by;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;

    new-instance v0, Lcom/bbm/g/by;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/by;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/by;->c:Lcom/bbm/g/by;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/g/by;

    sget-object v1, Lcom/bbm/g/by;->a:Lcom/bbm/g/by;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/by;->c:Lcom/bbm/g/by;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/g/by;->e:[Lcom/bbm/g/by;

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

    iput-object p3, p0, Lcom/bbm/g/by;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/by;
    .registers 2

    const-class v0, Lcom/bbm/g/by;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/by;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/by;
    .registers 1

    sget-object v0, Lcom/bbm/g/by;->e:[Lcom/bbm/g/by;

    invoke-virtual {v0}, [Lcom/bbm/g/by;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/by;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/by;->d:Ljava/lang/String;

    return-object v0
.end method
