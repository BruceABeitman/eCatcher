.class public final enum Lcom/twidroid/net/a/c/a/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/net/a/c/a/f;

.field public static final enum b:Lcom/twidroid/net/a/c/a/f;

.field public static final enum c:Lcom/twidroid/net/a/c/a/f;

.field private static final synthetic d:[Lcom/twidroid/net/a/c/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/net/a/c/a/f;

    const-string v1, "STREAMING"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/net/a/c/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/net/a/c/a/f;->a:Lcom/twidroid/net/a/c/a/f;

    new-instance v0, Lcom/twidroid/net/a/c/a/f;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/net/a/c/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/net/a/c/a/f;->b:Lcom/twidroid/net/a/c/a/f;

    new-instance v0, Lcom/twidroid/net/a/c/a/f;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/net/a/c/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/net/a/c/a/f;->c:Lcom/twidroid/net/a/c/a/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twidroid/net/a/c/a/f;

    sget-object v1, Lcom/twidroid/net/a/c/a/f;->a:Lcom/twidroid/net/a/c/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/net/a/c/a/f;->b:Lcom/twidroid/net/a/c/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/net/a/c/a/f;->c:Lcom/twidroid/net/a/c/a/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/net/a/c/a/f;->d:[Lcom/twidroid/net/a/c/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/net/a/c/a/f;
    .registers 2

    const-class v0, Lcom/twidroid/net/a/c/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/f;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/net/a/c/a/f;
    .registers 1

    sget-object v0, Lcom/twidroid/net/a/c/a/f;->d:[Lcom/twidroid/net/a/c/a/f;

    invoke-virtual {v0}, [Lcom/twidroid/net/a/c/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/net/a/c/a/f;

    return-object v0
.end method