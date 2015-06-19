.class public final enum Lcom/twidroid/net/a/c/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/net/a/c/a/c;

.field public static final enum b:Lcom/twidroid/net/a/c/a/c;

.field private static final synthetic c:[Lcom/twidroid/net/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/net/a/c/a/c;

    const-string v1, "RATELIMIT"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/net/a/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/net/a/c/a/c;->a:Lcom/twidroid/net/a/c/a/c;

    new-instance v0, Lcom/twidroid/net/a/c/a/c;

    const-string v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/net/a/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/net/a/c/a/c;->b:Lcom/twidroid/net/a/c/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twidroid/net/a/c/a/c;

    sget-object v1, Lcom/twidroid/net/a/c/a/c;->a:Lcom/twidroid/net/a/c/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/net/a/c/a/c;->b:Lcom/twidroid/net/a/c/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/twidroid/net/a/c/a/c;->c:[Lcom/twidroid/net/a/c/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/net/a/c/a/c;
    .registers 2

    const-class v0, Lcom/twidroid/net/a/c/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/c;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/net/a/c/a/c;
    .registers 1

    sget-object v0, Lcom/twidroid/net/a/c/a/c;->c:[Lcom/twidroid/net/a/c/a/c;

    invoke-virtual {v0}, [Lcom/twidroid/net/a/c/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/net/a/c/a/c;

    return-object v0
.end method
