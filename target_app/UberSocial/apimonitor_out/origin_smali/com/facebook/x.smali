.class public final enum Lcom/facebook/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/facebook/x;

.field public static final enum b:Lcom/facebook/x;

.field public static final enum c:Lcom/facebook/x;

.field public static final enum d:Lcom/facebook/x;

.field public static final enum e:Lcom/facebook/x;

.field public static final enum f:Lcom/facebook/x;

.field public static final enum g:Lcom/facebook/x;

.field public static final enum h:Lcom/facebook/x;

.field private static final synthetic i:[Lcom/facebook/x;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/x;

    const-string v1, "AUTHENTICATION_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->a:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "AUTHENTICATION_REOPEN_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->b:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->c:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->d:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "THROTTLING"

    invoke-direct {v0, v1, v7}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->e:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->f:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->g:Lcom/facebook/x;

    new-instance v0, Lcom/facebook/x;

    const-string v1, "CLIENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/x;->h:Lcom/facebook/x;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/x;

    sget-object v1, Lcom/facebook/x;->a:Lcom/facebook/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/x;->b:Lcom/facebook/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/x;->c:Lcom/facebook/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/x;->d:Lcom/facebook/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/x;->e:Lcom/facebook/x;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/x;->f:Lcom/facebook/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/x;->g:Lcom/facebook/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/x;->h:Lcom/facebook/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/x;->i:[Lcom/facebook/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/x;
    .registers 2

    const-class v0, Lcom/facebook/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/x;

    return-object v0
.end method

.method public static values()[Lcom/facebook/x;
    .registers 1

    sget-object v0, Lcom/facebook/x;->i:[Lcom/facebook/x;

    invoke-virtual {v0}, [Lcom/facebook/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/x;

    return-object v0
.end method
