.class public final enum Lcom/bbm/g/bx;
.super Ljava/lang/Enum;
.source "GroupsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/bx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/bx;

.field public static final enum b:Lcom/bbm/g/bx;

.field public static final enum c:Lcom/bbm/g/bx;

.field public static final enum d:Lcom/bbm/g/bx;

.field private static final synthetic f:[Lcom/bbm/g/bx;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/g/bx;

    const-string v1, "High"

    const-string v2, "High"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/g/bx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/bx;->a:Lcom/bbm/g/bx;

    new-instance v0, Lcom/bbm/g/bx;

    const-string v1, "Normal"

    const-string v2, "Normal"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/bx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/bx;->b:Lcom/bbm/g/bx;

    new-instance v0, Lcom/bbm/g/bx;

    const-string v1, "Low"

    const-string v2, "Low"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/bx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/bx;->c:Lcom/bbm/g/bx;

    new-instance v0, Lcom/bbm/g/bx;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/bx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/g/bx;->d:Lcom/bbm/g/bx;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/g/bx;

    sget-object v1, Lcom/bbm/g/bx;->a:Lcom/bbm/g/bx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/g/bx;->b:Lcom/bbm/g/bx;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/bx;->c:Lcom/bbm/g/bx;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/bx;->d:Lcom/bbm/g/bx;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bbm/g/bx;->f:[Lcom/bbm/g/bx;

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

    iput-object p3, p0, Lcom/bbm/g/bx;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/g/bx;
    .registers 2

    const-string v0, "High"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bbm/g/bx;->a:Lcom/bbm/g/bx;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "Normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bbm/g/bx;->b:Lcom/bbm/g/bx;

    goto :goto_a

    :cond_16
    const-string v0, "Low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/bbm/g/bx;->c:Lcom/bbm/g/bx;

    goto :goto_a

    :cond_21
    sget-object v0, Lcom/bbm/g/bx;->d:Lcom/bbm/g/bx;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/bx;
    .registers 2

    const-class v0, Lcom/bbm/g/bx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/bx;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/bx;
    .registers 1

    sget-object v0, Lcom/bbm/g/bx;->f:[Lcom/bbm/g/bx;

    invoke-virtual {v0}, [Lcom/bbm/g/bx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/bx;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/bx;->e:Ljava/lang/String;

    return-object v0
.end method
