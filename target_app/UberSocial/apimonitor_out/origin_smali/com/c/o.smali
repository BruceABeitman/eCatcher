.class public Lcom/c/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/c/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/c/o;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/c/o;->a:Ljava/lang/Object;

    iget-object v0, p1, Lcom/c/o;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/c/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/c/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/c/o;)Lcom/c/o;
    .registers 2

    new-instance v0, Lcom/c/o;

    invoke-direct {v0, p0}, Lcom/c/o;-><init>(Lcom/c/o;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
    .registers 3

    new-instance v0, Lcom/c/o;

    invoke-direct {v0, p0, p1}, Lcom/c/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_5

    :try_start_8
    check-cast p1, Lcom/c/o;

    iget-object v2, p0, Lcom/c/o;->a:Ljava/lang/Object;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/c/o;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/c/o;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_18
    iget-object v2, p0, Lcom/c/o;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/c/o;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/c/o;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_26
    move v0, v1

    goto :goto_5

    :cond_28
    iget-object v2, p1, Lcom/c/o;->a:Ljava/lang/Object;

    if-nez v2, :cond_5

    goto :goto_18

    :cond_2d
    iget-object v2, p1, Lcom/c/o;->b:Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_2f} :catch_32

    if-nez v2, :cond_5

    goto :goto_26

    :catch_32
    move-exception v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/c/o;->a:Ljava/lang/Object;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/c/o;->b:Ljava/lang/Object;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-object v0, p0, Lcom/c/o;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/c/o;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
