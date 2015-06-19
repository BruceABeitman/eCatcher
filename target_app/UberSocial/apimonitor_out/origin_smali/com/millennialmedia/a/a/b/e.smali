.class final Lcom/millennialmedia/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# static fields
.field private static final c:J


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-gt v0, v1, :cond_36

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    array-length v0, p1

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    array-length v0, p2

    if-ne v0, v1, :cond_3c

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->h(Ljava/lang/reflect/Type;)V

    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_3a

    :goto_26
    invoke-static {v1}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    :goto_35
    return-void

    :cond_36
    move v0, v2

    goto :goto_9

    :cond_38
    move v0, v2

    goto :goto_10

    :cond_3a
    move v1, v2

    goto :goto_26

    :cond_3c
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->h(Ljava/lang/reflect/Type;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    goto :goto_35
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/millennialmedia/a/a/b/b;->a:[Ljava/lang/reflect/Type;

    goto :goto_c
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_c
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_27

    const-string v0, "?"

    goto :goto_1d

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
