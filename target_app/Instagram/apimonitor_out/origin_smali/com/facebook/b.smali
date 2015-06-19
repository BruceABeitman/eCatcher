.class public final enum Lcom/facebook/b;
.super Ljava/lang/Enum;
.source "AccessTokenSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/b;

.field public static final enum b:Lcom/facebook/b;

.field public static final enum c:Lcom/facebook/b;

.field public static final enum d:Lcom/facebook/b;

.field public static final enum e:Lcom/facebook/b;

.field public static final enum f:Lcom/facebook/b;

.field public static final enum g:Lcom/facebook/b;

.field private static final synthetic i:[Lcom/facebook/b;


# instance fields
.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/facebook/b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->a:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->b:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->c:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v1, v6, v3}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->d:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "WEB_VIEW"

    invoke-direct {v0, v1, v7, v4}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->e:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "TEST_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->f:Lcom/facebook/b;

    new-instance v0, Lcom/facebook/b;

    const-string v1, "CLIENT_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/b;->g:Lcom/facebook/b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/b;

    sget-object v1, Lcom/facebook/b;->a:Lcom/facebook/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/b;->b:Lcom/facebook/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/b;->c:Lcom/facebook/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/b;->d:Lcom/facebook/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/b;->e:Lcom/facebook/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/b;->f:Lcom/facebook/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/b;->g:Lcom/facebook/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/b;->i:[Lcom/facebook/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/b;->h:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/b;
    .registers 2

    const-class v0, Lcom/facebook/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/b;
    .registers 1

    sget-object v0, Lcom/facebook/b;->i:[Lcom/facebook/b;

    invoke-virtual {v0}, [Lcom/facebook/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/b;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/b;->h:Z

    return v0
.end method
