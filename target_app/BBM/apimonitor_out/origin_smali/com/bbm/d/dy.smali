.class public final enum Lcom/bbm/d/dy;
.super Ljava/lang/Enum;
.source "CallEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/dy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/dy;

.field public static final enum b:Lcom/bbm/d/dy;

.field public static final enum c:Lcom/bbm/d/dy;

.field private static final synthetic e:[Lcom/bbm/d/dy;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/d/dy;

    const-string v1, "Voice"

    const-string v2, "Voice"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;

    new-instance v0, Lcom/bbm/d/dy;

    const-string v1, "Video"

    const-string v2, "Video"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;

    new-instance v0, Lcom/bbm/d/dy;

    const-string v1, "Unspecified"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/dy;->c:Lcom/bbm/d/dy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/d/dy;

    sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/dy;->c:Lcom/bbm/d/dy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/d/dy;->e:[Lcom/bbm/d/dy;

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

    iput-object p3, p0, Lcom/bbm/d/dy;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/d/dy;
    .registers 2

    const-string v0, "Voice"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/bbm/d/dy;->c:Lcom/bbm/d/dy;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/dy;
    .registers 2

    const-class v0, Lcom/bbm/d/dy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/dy;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/dy;
    .registers 1

    sget-object v0, Lcom/bbm/d/dy;->e:[Lcom/bbm/d/dy;

    invoke-virtual {v0}, [Lcom/bbm/d/dy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/dy;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/dy;->d:Ljava/lang/String;

    return-object v0
.end method
