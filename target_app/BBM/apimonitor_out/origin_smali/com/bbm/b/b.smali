.class public final enum Lcom/bbm/b/b;
.super Ljava/lang/Enum;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/b/b;

.field public static final enum b:Lcom/bbm/b/b;

.field public static final enum c:Lcom/bbm/b/b;

.field private static final synthetic e:[Lcom/bbm/b/b;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/b/b;

    const-string v1, "Channel"

    const-string v2, "Channel"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    new-instance v0, Lcom/bbm/b/b;

    const-string v1, "Display"

    const-string v2, "Display"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    new-instance v0, Lcom/bbm/b/b;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/b/b;->c:Lcom/bbm/b/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/b/b;

    sget-object v1, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/b/b;->c:Lcom/bbm/b/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/b/b;->e:[Lcom/bbm/b/b;

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

    iput-object p3, p0, Lcom/bbm/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/b/b;
    .registers 2

    const-string v0, "Channel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "Display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/bbm/b/b;->c:Lcom/bbm/b/b;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/b;
    .registers 2

    const-class v0, Lcom/bbm/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/b;

    return-object v0
.end method

.method public static values()[Lcom/bbm/b/b;
    .registers 1

    sget-object v0, Lcom/bbm/b/b;->e:[Lcom/bbm/b/b;

    invoke-virtual {v0}, [Lcom/bbm/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/b/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/b/b;->d:Ljava/lang/String;

    return-object v0
.end method
