.class public final enum Lcom/bbm/ui/c/hj;
.super Ljava/lang/Enum;
.source "SuggestionSections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/c/hj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/c/hj;

.field public static final enum b:Lcom/bbm/ui/c/hj;

.field private static final synthetic c:[Lcom/bbm/ui/c/hj;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ui/c/hj;

    const-string v1, "InivteToBBM"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/hj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/c/hj;->a:Lcom/bbm/ui/c/hj;

    new-instance v0, Lcom/bbm/ui/c/hj;

    const-string v1, "FoundFriends"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/hj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bbm/ui/c/hj;

    sget-object v1, Lcom/bbm/ui/c/hj;->a:Lcom/bbm/ui/c/hj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bbm/ui/c/hj;->c:[Lcom/bbm/ui/c/hj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/hj;
    .registers 2

    const-class v0, Lcom/bbm/ui/c/hj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/hj;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/c/hj;
    .registers 1

    sget-object v0, Lcom/bbm/ui/c/hj;->c:[Lcom/bbm/ui/c/hj;

    invoke-virtual {v0}, [Lcom/bbm/ui/c/hj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/c/hj;

    return-object v0
.end method
