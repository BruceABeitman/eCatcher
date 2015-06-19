.class public final Lcom/bbm/ui/e/i;
.super Ljava/lang/Object;
.source "DecoratedMessage.java"


# instance fields
.field final a:Lcom/bbm/d/fg;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/e/i;->b:Z

    iput-boolean v0, p0, Lcom/bbm/ui/e/i;->c:Z

    new-instance v0, Lcom/bbm/d/fg;

    invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/d/fg;ZZ)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/e/i;->b:Z

    iput-boolean v0, p0, Lcom/bbm/ui/e/i;->c:Z

    iput-object p1, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v0, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v1, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bbm/ui/e/i;->b:Z

    iput-boolean p3, p0, Lcom/bbm/ui/e/i;->c:Z

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
    check-cast p1, Lcom/bbm/ui/e/i;

    iget-boolean v2, p0, Lcom/bbm/ui/e/i;->c:Z

    iget-boolean v3, p1, Lcom/bbm/ui/e/i;->c:Z

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-boolean v2, p0, Lcom/bbm/ui/e/i;->b:Z

    iget-boolean v3, p1, Lcom/bbm/ui/e/i;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v2, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    if-nez v2, :cond_31

    iget-object v2, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v3, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    invoke-virtual {v2, v3}, Lcom/bbm/d/fg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-boolean v0, p0, Lcom/bbm/ui/e/i;->c:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_9
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/bbm/ui/e/i;->b:Z

    if-eqz v3, :cond_1d

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    :goto_19
    add-int/2addr v0, v1

    return v0

    :cond_1b
    move v0, v2

    goto :goto_9

    :cond_1d
    move v1, v2

    goto :goto_11

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    invoke-virtual {v0}, Lcom/bbm/d/fg;->hashCode()I

    move-result v0

    goto :goto_19
.end method
