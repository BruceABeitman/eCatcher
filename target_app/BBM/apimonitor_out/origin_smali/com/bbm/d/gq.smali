.class public final enum Lcom/bbm/d/gq;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/gq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/gq;

.field public static final enum b:Lcom/bbm/d/gq;

.field public static final enum c:Lcom/bbm/d/gq;

.field private static final synthetic e:[Lcom/bbm/d/gq;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/d/gq;

    const-string v1, "Male"

    const-string v2, "Male"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/gq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/gq;->a:Lcom/bbm/d/gq;

    new-instance v0, Lcom/bbm/d/gq;

    const-string v1, "Female"

    const-string v2, "Female"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/gq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/gq;->b:Lcom/bbm/d/gq;

    new-instance v0, Lcom/bbm/d/gq;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/gq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/gq;->c:Lcom/bbm/d/gq;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/d/gq;

    sget-object v1, Lcom/bbm/d/gq;->a:Lcom/bbm/d/gq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/d/gq;->b:Lcom/bbm/d/gq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/gq;->c:Lcom/bbm/d/gq;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/d/gq;->e:[Lcom/bbm/d/gq;

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

    iput-object p3, p0, Lcom/bbm/d/gq;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/d/gq;
    .registers 2

    const-string v0, "Male"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bbm/d/gq;->a:Lcom/bbm/d/gq;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "Female"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bbm/d/gq;->b:Lcom/bbm/d/gq;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/bbm/d/gq;->c:Lcom/bbm/d/gq;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/gq;
    .registers 2

    const-class v0, Lcom/bbm/d/gq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gq;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/gq;
    .registers 1

    sget-object v0, Lcom/bbm/d/gq;->e:[Lcom/bbm/d/gq;

    invoke-virtual {v0}, [Lcom/bbm/d/gq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/gq;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/gq;->d:Ljava/lang/String;

    return-object v0
.end method
