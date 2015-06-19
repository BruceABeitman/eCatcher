.class public final enum Lcom/a/a/a/bj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static enum a:Lcom/a/a/a/bj;

.field private static enum b:Lcom/a/a/a/bj;

.field private static enum c:Lcom/a/a/a/bj;

.field private static enum d:Lcom/a/a/a/bj;

.field private static final synthetic f:[Lcom/a/a/a/bj;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/a/a/a/bj;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/a/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/a/a/bj;->a:Lcom/a/a/a/bj;

    new-instance v0, Lcom/a/a/a/bj;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/a/a/bj;->b:Lcom/a/a/a/bj;

    new-instance v0, Lcom/a/a/a/bj;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, Lcom/a/a/a/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/a/a/bj;->c:Lcom/a/a/a/bj;

    new-instance v0, Lcom/a/a/a/bj;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, Lcom/a/a/a/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/a/a/a/bj;->d:Lcom/a/a/a/bj;

    new-array v0, v6, [Lcom/a/a/a/bj;

    sget-object v1, Lcom/a/a/a/bj;->a:Lcom/a/a/a/bj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/a/bj;->b:Lcom/a/a/a/bj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/bj;->c:Lcom/a/a/a/bj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/bj;->d:Lcom/a/a/a/bj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/a/bj;->f:[Lcom/a/a/a/bj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/a/a/a/bj;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/a/a/a/bj;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_a

    sget-object v0, Lcom/a/a/a/bj;->d:Lcom/a/a/a/bj;

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/a/a/a/bj;->a:Lcom/a/a/a/bj;

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/bj;
    .registers 2

    const-class v0, Lcom/a/a/a/bj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/bj;
    .registers 1

    sget-object v0, Lcom/a/a/a/bj;->f:[Lcom/a/a/a/bj;

    invoke-virtual {v0}, [Lcom/a/a/a/bj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/bj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/a/a/a/bj;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/a/a/a/bj;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
