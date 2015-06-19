.class public final Lcom/bbm/iceberg/j;
.super Ljava/lang/Object;
.source "LocalContact.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bbm/iceberg/j;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/bbm/iceberg/j;->d:I

    iput-boolean v0, p0, Lcom/bbm/iceberg/j;->g:Z

    iget-object v0, p1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    iget v0, p1, Lcom/bbm/iceberg/j;->d:I

    iput v0, p0, Lcom/bbm/iceberg/j;->d:I

    iget-object v0, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    iget-boolean v0, p1, Lcom/bbm/iceberg/j;->g:Z

    iput-boolean v0, p0, Lcom/bbm/iceberg/j;->g:Z

    iget-object v0, p1, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/bbm/iceberg/j;->d:I

    iput-boolean v0, p0, Lcom/bbm/iceberg/j;->g:Z

    iput-object p1, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/iceberg/j;->g:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

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
    check-cast p1, Lcom/bbm/iceberg/j;

    iget-object v2, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    if-eqz v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-boolean v2, p0, Lcom/bbm/iceberg/j;->g:Z

    iget-boolean v3, p1, Lcom/bbm/iceberg/j;->g:Z

    if-eq v2, v3, :cond_4b

    move v0, v1

    goto :goto_4

    :cond_4b
    iget-object v2, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    if-nez v2, :cond_55

    iget-object v2, p1, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    if-eqz v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_61
    iget-object v2, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    if-nez v2, :cond_6b

    iget-object v2, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_77

    move v0, v1

    goto :goto_4

    :cond_6b
    iget-object v2, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    move v0, v1

    goto :goto_4

    :cond_77
    iget-object v2, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    if-nez v2, :cond_81

    iget-object v2, p1, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_8e

    move v0, v1

    goto :goto_4

    :cond_81
    iget-object v2, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    move v0, v1

    goto/16 :goto_4

    :cond_8e
    iget-object v2, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    if-nez v2, :cond_99

    iget-object v2, p1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    if-eqz v2, :cond_a6

    move v0, v1

    goto/16 :goto_4

    :cond_99
    iget-object v2, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    move v0, v1

    goto/16 :goto_4

    :cond_a6
    iget v2, p0, Lcom/bbm/iceberg/j;->d:I

    iget v3, p1, Lcom/bbm/iceberg/j;->d:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    if-nez v0, :cond_45

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/iceberg/j;->g:Z

    if-eqz v0, :cond_4c

    const/16 v0, 0x4cf

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    if-nez v0, :cond_5d

    move v0, v1

    :goto_30
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    if-nez v2, :cond_64

    :goto_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bbm/iceberg/j;->d:I

    add-int/2addr v0, v1

    return v0

    :cond_3e
    iget-object v0, p0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_45
    iget-object v0, p0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_4c
    const/16 v0, 0x4d5

    goto :goto_18

    :cond_4f
    iget-object v0, p0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_20

    :cond_56
    iget-object v0, p0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_28

    :cond_5d
    iget-object v0, p0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_30

    :cond_64
    iget-object v1, p0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_37
.end method
