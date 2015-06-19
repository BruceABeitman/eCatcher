.class Lcom/facebook/widget/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/l;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/au;->a:I

    iput-boolean v1, p0, Lcom/facebook/widget/au;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/facebook/widget/au;->d:Z

    iput-boolean v1, p0, Lcom/facebook/widget/au;->e:Z

    return-void
.end method

.method constructor <init>(Lcom/facebook/widget/au;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/au;->a:I

    iput-boolean v1, p0, Lcom/facebook/widget/au;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/facebook/widget/au;->d:Z

    iput-boolean v1, p0, Lcom/facebook/widget/au;->e:Z

    iget v0, p1, Lcom/facebook/widget/au;->a:I

    iput v0, p0, Lcom/facebook/widget/au;->a:I

    iget-boolean v0, p1, Lcom/facebook/widget/au;->b:Z

    iput-boolean v0, p0, Lcom/facebook/widget/au;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p1, Lcom/facebook/widget/au;->e:Z

    iput-boolean v0, p0, Lcom/facebook/widget/au;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;Z)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/facebook/widget/au;->e:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/facebook/widget/au;->e:Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/au;->e:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/au;->e:Z

    return v0
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/au;->b(I)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/au;->d:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/au;->d:Z

    return v0
.end method

.method public b(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v1

    if-lt p1, v1, :cond_a

    iput v1, p0, Lcom/facebook/widget/au;->a:I

    :goto_9
    return v0

    :cond_a
    if-gez p1, :cond_10

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/widget/au;->a:I

    goto :goto_9

    :cond_10
    iput p1, p0, Lcom/facebook/widget/au;->a:I

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/au;->b(I)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/au;->b(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/au;->b(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/au;->b(I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public j()Z
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v0

    iget v1, p0, Lcom/facebook/widget/au;->a:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public k()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public l()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/widget/au;->c()I

    move-result v0

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/facebook/widget/au;->a:I

    if-ne v1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public m()Lcom/facebook/c/c;
    .registers 3

    iget v0, p0, Lcom/facebook/widget/au;->a:I

    if-gez v0, :cond_c

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/facebook/widget/au;->a:I

    iget-object v1, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1e

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/facebook/widget/au;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/widget/au;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    return-object v0
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/au;->b:Z

    return-void
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/au;->b:Z

    return v0
.end method
