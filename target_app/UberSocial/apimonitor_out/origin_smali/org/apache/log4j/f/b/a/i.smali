.class public Lorg/apache/log4j/f/b/a/i;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "SourceFile"


# static fields
.field private static final f:J = 0x52b29a36eefed5e7L


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->a:Z

    iput v1, p0, Lorg/apache/log4j/f/b/a/i;->b:I

    iput v1, p0, Lorg/apache/log4j/f/b/a/i;->c:I

    iput-boolean v1, p0, Lorg/apache/log4j/f/b/a/i;->d:Z

    iput-boolean v1, p0, Lorg/apache/log4j/f/b/a/i;->e:Z

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/i;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->a:Z

    if-eq p1, v0, :cond_6

    iput-boolean p1, p0, Lorg/apache/log4j/f/b/a/i;->a:Z

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/apache/log4j/f/b/a/i;

    if-eqz v0, :cond_1e

    check-cast p1, Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/f/b/a/i;->e:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->a:Z

    return v0
.end method

.method public c()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->children()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/a/i;->a(Z)V

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->c()V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/f/b/a/i;->d:Z

    return-void
.end method

.method public d()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->children()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/a/i;->a(Z)V

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->d()V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .registers 2

    iget v0, p0, Lorg/apache/log4j/f/b/a/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/f/b/a/i;->b:I

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->o()V

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/f/b/a/i;->b:I

    return v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/f/b/a/i;->b:I

    iput v0, p0, Lorg/apache/log4j/f/b/a/i;->c:I

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->e:Z

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->d:Z

    return-void
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->e:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/i;->d:Z

    return v0
.end method

.method protected l()I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->n()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->h()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected m()V
    .registers 2

    iget v0, p0, Lorg/apache/log4j/f/b/a/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/f/b/a/i;->c:I

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->o()V

    return-void
.end method

.method protected n()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/f/b/a/i;->c:I

    return v0
.end method

.method protected o()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/i;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->m()V

    goto :goto_6
.end method
