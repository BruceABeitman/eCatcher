.class public final enum Lcom/twidroid/billing/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/billing/h;

.field public static final enum b:Lcom/twidroid/billing/h;

.field public static final enum c:Lcom/twidroid/billing/h;

.field private static final synthetic d:[Lcom/twidroid/billing/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/billing/h;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/billing/h;->a:Lcom/twidroid/billing/h;

    new-instance v0, Lcom/twidroid/billing/h;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/billing/h;->b:Lcom/twidroid/billing/h;

    new-instance v0, Lcom/twidroid/billing/h;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/billing/h;->c:Lcom/twidroid/billing/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twidroid/billing/h;

    sget-object v1, Lcom/twidroid/billing/h;->a:Lcom/twidroid/billing/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/billing/h;->b:Lcom/twidroid/billing/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/billing/h;->c:Lcom/twidroid/billing/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/billing/h;->d:[Lcom/twidroid/billing/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/twidroid/billing/h;
    .registers 3

    invoke-static {}, Lcom/twidroid/billing/h;->values()[Lcom/twidroid/billing/h;

    move-result-object v0

    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_c

    :cond_9
    sget-object v0, Lcom/twidroid/billing/h;->b:Lcom/twidroid/billing/h;

    :goto_b
    return-object v0

    :cond_c
    aget-object v0, v0, p0

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/billing/h;
    .registers 2

    const-class v0, Lcom/twidroid/billing/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/billing/h;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/billing/h;
    .registers 1

    sget-object v0, Lcom/twidroid/billing/h;->d:[Lcom/twidroid/billing/h;

    invoke-virtual {v0}, [Lcom/twidroid/billing/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/billing/h;

    return-object v0
.end method
