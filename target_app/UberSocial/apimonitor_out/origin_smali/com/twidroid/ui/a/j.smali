.class public final enum Lcom/twidroid/ui/a/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/twidroid/ui/a/j;

.field public static final enum b:Lcom/twidroid/ui/a/j;

.field public static final enum c:Lcom/twidroid/ui/a/j;

.field private static final synthetic d:[Lcom/twidroid/ui/a/j;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/ui/a/j;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v2}, Lcom/twidroid/ui/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/ui/a/j;->a:Lcom/twidroid/ui/a/j;

    new-instance v0, Lcom/twidroid/ui/a/j;

    const-string v1, "FOLLOWERS"

    invoke-direct {v0, v1, v3}, Lcom/twidroid/ui/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/ui/a/j;->b:Lcom/twidroid/ui/a/j;

    new-instance v0, Lcom/twidroid/ui/a/j;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/twidroid/ui/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twidroid/ui/a/j;->c:Lcom/twidroid/ui/a/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twidroid/ui/a/j;

    sget-object v1, Lcom/twidroid/ui/a/j;->a:Lcom/twidroid/ui/a/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twidroid/ui/a/j;->b:Lcom/twidroid/ui/a/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twidroid/ui/a/j;->c:Lcom/twidroid/ui/a/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/ui/a/j;->d:[Lcom/twidroid/ui/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/ui/a/j;
    .registers 2

    const-class v0, Lcom/twidroid/ui/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/j;

    return-object v0
.end method

.method public static values()[Lcom/twidroid/ui/a/j;
    .registers 1

    sget-object v0, Lcom/twidroid/ui/a/j;->d:[Lcom/twidroid/ui/a/j;

    invoke-virtual {v0}, [Lcom/twidroid/ui/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twidroid/ui/a/j;

    return-object v0
.end method