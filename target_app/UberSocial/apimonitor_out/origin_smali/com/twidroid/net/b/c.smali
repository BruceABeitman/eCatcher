.class public Lcom/twidroid/net/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/twidroid/net/b/c;->c:I

    iput p2, p0, Lcom/twidroid/net/b/c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/twidroid/net/b/c;->c:I

    iput p3, p0, Lcom/twidroid/net/b/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/twidroid/net/b/c;->d:I

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/twidroid/net/b/c;->c:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/twidroid/net/b/c;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/twidroid/net/b/c;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/twidroid/net/b/c;

    iget-object v2, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lcom/twidroid/net/b/c;->c:I

    iget v3, p1, Lcom/twidroid/net/b/c;->c:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget v2, p0, Lcom/twidroid/net/b/c;->d:I

    iget v3, p1, Lcom/twidroid/net/b/c;->d:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twidroid/net/b/c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twidroid/net/b/c;->d:I

    add-int/2addr v0, v1

    return v0

    :cond_12
    iget-object v0, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
