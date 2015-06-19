.class public final enum Lcom/facebook/f/a/h;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/f/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/f/a/h;

.field public static final enum b:Lcom/facebook/f/a/h;

.field public static final enum c:Lcom/facebook/f/a/h;

.field public static final enum d:Lcom/facebook/f/a/h;

.field private static final synthetic f:[Lcom/facebook/f/a/h;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/facebook/f/a/h;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/f/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    new-instance v0, Lcom/facebook/f/a/h;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/f/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    new-instance v0, Lcom/facebook/f/a/h;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4, v7}, Lcom/facebook/f/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    new-instance v0, Lcom/facebook/f/a/h;

    const-string v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/f/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    new-array v0, v7, [Lcom/facebook/f/a/h;

    sget-object v1, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/f/a/h;->f:[Lcom/facebook/f/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/f/a/h;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/f/a/h;
    .registers 2

    const-class v0, Lcom/facebook/f/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/f/a/h;

    return-object v0
.end method

.method public static values()[Lcom/facebook/f/a/h;
    .registers 1

    sget-object v0, Lcom/facebook/f/a/h;->f:[Lcom/facebook/f/a/h;

    invoke-virtual {v0}, [Lcom/facebook/f/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/f/a/h;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/f/a/h;->e:I

    return v0
.end method

.method public final a(I)Z
    .registers 4

    iget v0, p0, Lcom/facebook/f/a/h;->e:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/facebook/f/a/h;->e:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final b()Z
    .registers 2

    sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final c()Z
    .registers 2

    sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
