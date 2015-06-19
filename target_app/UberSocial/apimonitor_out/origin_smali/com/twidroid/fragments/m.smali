.class public final enum Lcom/twidroid/fragments/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/fragments/m;

.field public static final enum b:Lcom/twidroid/fragments/m;

.field public static final enum c:Lcom/twidroid/fragments/m;

.field private static final synthetic d:[Lcom/twidroid/fragments/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/fragments/m;

    const-string v1, "RETWEET"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/fragments/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/m;->a:Lcom/twidroid/fragments/m;

    new-instance v0, Lcom/twidroid/fragments/m;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/fragments/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;

    new-instance v0, Lcom/twidroid/fragments/m;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/fragments/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/m;->c:Lcom/twidroid/fragments/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twidroid/fragments/m;

    sget-object v1, Lcom/twidroid/fragments/m;->a:Lcom/twidroid/fragments/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/fragments/m;->c:Lcom/twidroid/fragments/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/fragments/m;->d:[Lcom/twidroid/fragments/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/fragments/m;
    .registers 2

    const-class v0, Lcom/twidroid/fragments/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/m;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/fragments/m;
    .registers 1

    sget-object v0, Lcom/twidroid/fragments/m;->d:[Lcom/twidroid/fragments/m;

    invoke-virtual {v0}, [Lcom/twidroid/fragments/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/fragments/m;

    return-object v0
.end method
