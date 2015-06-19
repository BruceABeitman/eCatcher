.class public final enum Lcom/handmark/pulltorefresh/library/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/o;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/o;

.field public static final enum c:Lcom/handmark/pulltorefresh/library/o;

.field public static final enum d:Lcom/handmark/pulltorefresh/library/o;

.field public static final enum e:Lcom/handmark/pulltorefresh/library/o;

.field public static final enum f:Lcom/handmark/pulltorefresh/library/o;

.field private static final synthetic h:[Lcom/handmark/pulltorefresh/library/o;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->c:Lcom/handmark/pulltorefresh/library/o;

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "REFRESHING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "MANUAL_REFRESHING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    const-string v1, "OVERSCROLLING"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/o;

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->c:Lcom/handmark/pulltorefresh/library/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/handmark/pulltorefresh/library/o;->h:[Lcom/handmark/pulltorefresh/library/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/handmark/pulltorefresh/library/o;->g:I

    return-void
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/o;
    .registers 6

    invoke-static {}, Lcom/handmark/pulltorefresh/library/o;->values()[Lcom/handmark/pulltorefresh/library/o;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/o;->a()I

    move-result v4

    if-ne p0, v4, :cond_12

    :goto_11
    return-object v0

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_16
    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/o;
    .registers 2

    const-class v0, Lcom/handmark/pulltorefresh/library/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/o;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/o;
    .registers 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->h:[Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/o;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/handmark/pulltorefresh/library/o;->g:I

    return v0
.end method
