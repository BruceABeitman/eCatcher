.class public final Lcom/userzoom/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/userzoom/ca;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .registers 3

    iget-object v0, p0, Lcom/userzoom/s;->b:[B

    if-nez v0, :cond_10

    invoke-static {}, Lcom/userzoom/ce;->a()Lcom/userzoom/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/userzoom/ce;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/userzoom/s;->b:[B

    :cond_10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    :cond_12
    check-cast p1, Lcom/userzoom/s;

    iget-object v0, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/userzoom/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/s;->a:Ljava/lang/String;

    return-object v0
.end method
