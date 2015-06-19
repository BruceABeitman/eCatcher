.class public final Lcom/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x5dbadbf29b2ff78aL


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    check-cast p1, Lcom/c/a/j;

    iget-object v1, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/j;->b:Ljava/lang/String;

    if-eq v1, v2, :cond_1a

    iget-object v1, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1a
    iget-object v1, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/j;->c:Ljava/lang/String;

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_2b} :catch_30

    move-result v1

    if-eqz v1, :cond_3

    :cond_2e
    const/4 v0, 0x1

    goto :goto_3

    :catch_30
    move-exception v1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/c/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
