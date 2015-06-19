.class final enum Lcom/bbm/j/d;
.super Ljava/lang/Enum;
.source "ComputedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/j/d;

.field public static final enum b:Lcom/bbm/j/d;

.field public static final enum c:Lcom/bbm/j/d;

.field private static final synthetic d:[Lcom/bbm/j/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/j/d;

    const-string v1, "Accessed"

    invoke-direct {v0, v1, v2}, Lcom/bbm/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/j/d;->a:Lcom/bbm/j/d;

    new-instance v0, Lcom/bbm/j/d;

    const-string v1, "RecentlyFired"

    invoke-direct {v0, v1, v3}, Lcom/bbm/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;

    new-instance v0, Lcom/bbm/j/d;

    const-string v1, "Dirty"

    invoke-direct {v0, v1, v4}, Lcom/bbm/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/j/d;

    sget-object v1, Lcom/bbm/j/d;->a:Lcom/bbm/j/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/j/d;->d:[Lcom/bbm/j/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/j/d;
    .registers 2

    const-class v0, Lcom/bbm/j/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/d;

    return-object v0
.end method

.method public static values()[Lcom/bbm/j/d;
    .registers 1

    sget-object v0, Lcom/bbm/j/d;->d:[Lcom/bbm/j/d;

    invoke-virtual {v0}, [Lcom/bbm/j/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/j/d;

    return-object v0
.end method
