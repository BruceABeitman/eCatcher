.class public final enum Lcom/twidroid/d/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/d/q;

.field public static final enum b:Lcom/twidroid/d/q;

.field public static final enum c:Lcom/twidroid/d/q;

.field public static final enum d:Lcom/twidroid/d/q;

.field public static final enum e:Lcom/twidroid/d/q;

.field public static final enum f:Lcom/twidroid/d/q;

.field public static final enum g:Lcom/twidroid/d/q;

.field private static final synthetic h:[Lcom/twidroid/d/q;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "MENTION"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->a:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "DM"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->b:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "REPLY"

    invoke-direct {v0, v1, v5}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->c:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "RETWEET"

    invoke-direct {v0, v1, v6}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->d:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "FOLLOW"

    invoke-direct {v0, v1, v7}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->e:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "FAVORITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->f:Lcom/twidroid/d/q;

    new-instance v0, Lcom/twidroid/d/q;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twidroid/d/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/d/q;->g:Lcom/twidroid/d/q;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twidroid/d/q;

    sget-object v1, Lcom/twidroid/d/q;->a:Lcom/twidroid/d/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/d/q;->b:Lcom/twidroid/d/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twidroid/d/q;->c:Lcom/twidroid/d/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twidroid/d/q;->d:Lcom/twidroid/d/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twidroid/d/q;->e:Lcom/twidroid/d/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twidroid/d/q;->f:Lcom/twidroid/d/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twidroid/d/q;->g:Lcom/twidroid/d/q;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twidroid/d/q;->h:[Lcom/twidroid/d/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/d/q;
    .registers 2

    const-class v0, Lcom/twidroid/d/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/d/q;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/d/q;
    .registers 1

    sget-object v0, Lcom/twidroid/d/q;->h:[Lcom/twidroid/d/q;

    invoke-virtual {v0}, [Lcom/twidroid/d/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/d/q;

    return-object v0
.end method
