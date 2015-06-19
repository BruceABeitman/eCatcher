.class final enum Lcom/bbm/ui/c/hg;
.super Ljava/lang/Enum;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/c/hg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/c/hg;

.field public static final enum b:Lcom/bbm/ui/c/hg;

.field public static final enum c:Lcom/bbm/ui/c/hg;

.field private static final synthetic d:[Lcom/bbm/ui/c/hg;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ui/c/hg;

    const-string v1, "FEATURED_CAROUSEL"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/hg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/c/hg;->a:Lcom/bbm/ui/c/hg;

    new-instance v0, Lcom/bbm/ui/c/hg;

    const-string v1, "STICKER_PACK"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/hg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;

    new-instance v0, Lcom/bbm/ui/c/hg;

    const-string v1, "APP"

    invoke-direct {v0, v1, v4}, Lcom/bbm/ui/c/hg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/c/hg;->c:Lcom/bbm/ui/c/hg;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/ui/c/hg;

    sget-object v1, Lcom/bbm/ui/c/hg;->a:Lcom/bbm/ui/c/hg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/ui/c/hg;->c:Lcom/bbm/ui/c/hg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/ui/c/hg;->d:[Lcom/bbm/ui/c/hg;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/hg;
    .registers 2

    const-class v0, Lcom/bbm/ui/c/hg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/hg;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/c/hg;
    .registers 1

    sget-object v0, Lcom/bbm/ui/c/hg;->d:[Lcom/bbm/ui/c/hg;

    invoke-virtual {v0}, [Lcom/bbm/ui/c/hg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/c/hg;

    return-object v0
.end method
