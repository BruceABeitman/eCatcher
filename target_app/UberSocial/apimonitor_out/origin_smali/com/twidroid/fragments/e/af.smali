.class final enum Lcom/twidroid/fragments/e/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/fragments/e/af;

.field public static final enum b:Lcom/twidroid/fragments/e/af;

.field public static final enum c:Lcom/twidroid/fragments/e/af;

.field public static final enum d:Lcom/twidroid/fragments/e/af;

.field public static final enum e:Lcom/twidroid/fragments/e/af;

.field private static final synthetic f:[Lcom/twidroid/fragments/e/af;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/fragments/e/af;

    const-string v1, "MORE_TWEETS"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/fragments/e/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/e/af;->a:Lcom/twidroid/fragments/e/af;

    new-instance v0, Lcom/twidroid/fragments/e/af;

    const-string v1, "MORE_USER"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/fragments/e/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/e/af;->b:Lcom/twidroid/fragments/e/af;

    new-instance v0, Lcom/twidroid/fragments/e/af;

    const-string v1, "MORE_NEARBY"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/fragments/e/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/e/af;->c:Lcom/twidroid/fragments/e/af;

    new-instance v0, Lcom/twidroid/fragments/e/af;

    const-string v1, "MORE_TRENDS"

    invoke-direct {v0, v1, v5}, Lcom/twidroid/fragments/e/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/e/af;->d:Lcom/twidroid/fragments/e/af;

    new-instance v0, Lcom/twidroid/fragments/e/af;

    const-string v1, "MORE_NONE"

    invoke-direct {v0, v1, v6}, Lcom/twidroid/fragments/e/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/fragments/e/af;->e:Lcom/twidroid/fragments/e/af;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twidroid/fragments/e/af;

    sget-object v1, Lcom/twidroid/fragments/e/af;->a:Lcom/twidroid/fragments/e/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/fragments/e/af;->b:Lcom/twidroid/fragments/e/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/fragments/e/af;->c:Lcom/twidroid/fragments/e/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twidroid/fragments/e/af;->d:Lcom/twidroid/fragments/e/af;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twidroid/fragments/e/af;->e:Lcom/twidroid/fragments/e/af;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twidroid/fragments/e/af;->f:[Lcom/twidroid/fragments/e/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/fragments/e/af;
    .registers 2

    const-class v0, Lcom/twidroid/fragments/e/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/e/af;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/fragments/e/af;
    .registers 1

    sget-object v0, Lcom/twidroid/fragments/e/af;->f:[Lcom/twidroid/fragments/e/af;

    invoke-virtual {v0}, [Lcom/twidroid/fragments/e/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/fragments/e/af;

    return-object v0
.end method
