.class public final enum Lcom/bbm/d/a/b/d;
.super Ljava/lang/Enum;
.source "LiveMapItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/a/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/a/b/d;

.field public static final enum b:Lcom/bbm/d/a/b/d;

.field public static final enum c:Lcom/bbm/d/a/b/d;

.field public static final enum d:Lcom/bbm/d/a/b/d;

.field private static final synthetic e:[Lcom/bbm/d/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/d/a/b/d;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/bbm/d/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    new-instance v0, Lcom/bbm/d/a/b/d;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/bbm/d/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/d/a/b/d;->b:Lcom/bbm/d/a/b/d;

    new-instance v0, Lcom/bbm/d/a/b/d;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/bbm/d/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    new-instance v0, Lcom/bbm/d/a/b/d;

    const-string v1, "DOESNOTEXIST"

    invoke-direct {v0, v1, v5}, Lcom/bbm/d/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/d/a/b/d;

    sget-object v1, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/d/a/b/d;->b:Lcom/bbm/d/a/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/d/a/b/d;->e:[Lcom/bbm/d/a/b/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/a/b/d;
    .registers 2

    const-class v0, Lcom/bbm/d/a/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/d;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/a/b/d;
    .registers 1

    sget-object v0, Lcom/bbm/d/a/b/d;->e:[Lcom/bbm/d/a/b/d;

    invoke-virtual {v0}, [Lcom/bbm/d/a/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/a/b/d;

    return-object v0
.end method
