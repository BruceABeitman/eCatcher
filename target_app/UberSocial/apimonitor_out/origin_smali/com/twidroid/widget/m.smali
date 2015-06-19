.class public final enum Lcom/twidroid/widget/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/widget/m;

.field public static final enum b:Lcom/twidroid/widget/m;

.field public static final enum c:Lcom/twidroid/widget/m;

.field private static final synthetic d:[Lcom/twidroid/widget/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/widget/m;

    const-string v1, "TWEET"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/widget/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    new-instance v0, Lcom/twidroid/widget/m;

    const-string v1, "DM"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/widget/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/widget/m;->b:Lcom/twidroid/widget/m;

    new-instance v0, Lcom/twidroid/widget/m;

    const-string v1, "MENTION"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/widget/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/widget/m;->c:Lcom/twidroid/widget/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twidroid/widget/m;

    sget-object v1, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/widget/m;->b:Lcom/twidroid/widget/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/widget/m;->c:Lcom/twidroid/widget/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/widget/m;->d:[Lcom/twidroid/widget/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/widget/m;
    .registers 2

    const-class v0, Lcom/twidroid/widget/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/widget/m;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/widget/m;
    .registers 1

    sget-object v0, Lcom/twidroid/widget/m;->d:[Lcom/twidroid/widget/m;

    invoke-virtual {v0}, [Lcom/twidroid/widget/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/widget/m;

    return-object v0
.end method
