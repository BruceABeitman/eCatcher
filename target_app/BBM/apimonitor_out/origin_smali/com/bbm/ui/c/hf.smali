.class final Lcom/bbm/ui/c/hf;
.super Ljava/lang/Object;
.source "StoreFragment.java"


# instance fields
.field final a:Lcom/bbm/ui/c/hg;

.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/c/hg;Lcom/bbm/l/b/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/bbm/ui/c/hf;

    iget-object v2, p0, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;

    iget-object v3, p1, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    if-nez v2, :cond_29

    iget-object v2, p1, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;

    invoke-virtual {v0}, Lcom/bbm/ui/c/hg;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e
.end method
