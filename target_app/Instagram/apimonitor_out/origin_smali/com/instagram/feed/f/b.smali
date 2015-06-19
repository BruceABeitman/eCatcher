.class public final enum Lcom/instagram/feed/f/b;
.super Ljava/lang/Enum;
.source "FeedContinuationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/feed/f/b;

.field public static final enum b:Lcom/instagram/feed/f/b;

.field public static final enum c:Lcom/instagram/feed/f/b;

.field private static final synthetic e:[Lcom/instagram/feed/f/b;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/feed/f/b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/feed/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    new-instance v0, Lcom/instagram/feed/f/b;

    const-string v1, "MAX_ID_INFERRED"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/feed/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    new-instance v0, Lcom/instagram/feed/f/b;

    const-string v1, "MAX_ID"

    const-string v2, "max_id"

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/feed/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/feed/f/b;

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/feed/f/b;->e:[Lcom/instagram/feed/f/b;

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

    iput-object p3, p0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/feed/f/b;
    .registers 2

    const-class v0, Lcom/instagram/feed/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/f/b;

    return-object v0
.end method

.method public static values()[Lcom/instagram/feed/f/b;
    .registers 1

    sget-object v0, Lcom/instagram/feed/f/b;->e:[Lcom/instagram/feed/f/b;

    invoke-virtual {v0}, [Lcom/instagram/feed/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/feed/f/b;

    return-object v0
.end method
