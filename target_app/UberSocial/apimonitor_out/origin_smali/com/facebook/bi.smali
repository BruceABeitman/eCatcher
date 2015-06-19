.class public final enum Lcom/facebook/bi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/facebook/bi;

.field public static final enum b:Lcom/facebook/bi;

.field public static final enum c:Lcom/facebook/bi;

.field public static final enum d:Lcom/facebook/bi;

.field private static final synthetic f:[Lcom/facebook/bi;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/bi;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/bi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/bi;->a:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/bi;

    const-string v1, "ONLY_ME"

    const-string v2, "SELF"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/bi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/bi;->b:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/bi;

    const-string v1, "FRIENDS"

    const-string v2, "ALL_FRIENDS"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/bi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/bi;

    const-string v1, "EVERYONE"

    const-string v2, "EVERYONE"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/bi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/bi;->d:Lcom/facebook/bi;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/bi;

    sget-object v1, Lcom/facebook/bi;->a:Lcom/facebook/bi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/bi;->b:Lcom/facebook/bi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/bi;->d:Lcom/facebook/bi;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/bi;->f:[Lcom/facebook/bi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/bi;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bi;
    .registers 2

    const-class v0, Lcom/facebook/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/bi;

    return-object v0
.end method

.method public static values()[Lcom/facebook/bi;
    .registers 1

    sget-object v0, Lcom/facebook/bi;->f:[Lcom/facebook/bi;

    invoke-virtual {v0}, [Lcom/facebook/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/bi;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bi;->e:Ljava/lang/String;

    return-object v0
.end method
