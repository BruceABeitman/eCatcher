.class public Landroid/support/v4/content/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field m:I

.field n:Landroid/support/v4/content/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/m",
            "<TD;>;"
        }
    .end annotation
.end field

.field o:Landroid/content/Context;

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/support/v4/content/k;->p:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->s:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->t:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/k;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public final a(ILandroid/support/v4/content/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/m",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p2, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    iput p1, p0, Landroid/support/v4/content/k;->m:I

    return-void
.end method

.method public final a(Landroid/support/v4/content/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/m",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    if-eq v0, p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/k;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/support/v4/content/k;->s:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/support/v4/content/k;->t:Z

    if-eqz v0, :cond_44

    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_44
    iget-boolean v0, p0, Landroid/support/v4/content/k;->q:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    if-eqz v0, :cond_63

    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/content/k;->n:Landroid/support/v4/content/m;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/m;->a(Landroid/support/v4/content/k;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 1

    return-void
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method public final h()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/k;->o:Landroid/content/Context;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/k;->m:I

    return v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    return v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    return v0
.end method

.method public final l()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->r:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->q:Z

    invoke-virtual {p0}, Landroid/support/v4/content/k;->e()V

    return-void
.end method

.method public final m()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/k;->a()V

    return-void
.end method

.method public final n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    invoke-virtual {p0}, Landroid/support/v4/content/k;->f()V

    return-void
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/k;->q:Z

    return-void
.end method

.method public final p()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/content/k;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->p:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->q:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->s:Z

    iput-boolean v1, p0, Landroid/support/v4/content/k;->t:Z

    return-void
.end method

.method public final q()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/content/k;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/k;->s:Z

    iget-boolean v1, p0, Landroid/support/v4/content/k;->t:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/k;->t:Z

    return v0
.end method

.method public final r()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/k;->p:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/content/k;->a()V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/k;->s:Z

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/k;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
