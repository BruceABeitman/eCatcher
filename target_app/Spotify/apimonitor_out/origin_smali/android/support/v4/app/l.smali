.class final Landroid/support/v4/app/l;
.super Landroid/support/v4/app/w;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/t;

.field b:Landroid/support/v4/app/m;

.field c:Landroid/support/v4/app/m;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/t;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/l;->o:I

    iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;

    if-eqz p3, :cond_3f

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    :cond_3f
    if-eqz p1, :cond_78

    iget v0, p2, Landroid/support/v4/app/Fragment;->F:I

    if-eqz v0, :cond_74

    iget v0, p2, Landroid/support/v4/app/Fragment;->F:I

    if-eq v0, p1, :cond_74

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    iput p1, p2, Landroid/support/v4/app/Fragment;->F:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->G:I

    :cond_78
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    iput p4, v0, Landroid/support/v4/app/m;->c:I

    iput-object p2, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)V

    return-void
.end method

.method private b(Z)I
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/l;->n:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_35

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/d;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->n:Z

    iget-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/l;->o:I

    :goto_44
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/t;->a(Ljava/lang/Runnable;Z)V

    iget v0, p0, Landroid/support/v4/app/l;->o:I

    return v0

    :cond_4c
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/l;->o:I

    goto :goto_44
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/w;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/l;->l:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/l;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
    .registers 4

    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/m;->c:I

    iput-object p1, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)V

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method final a(I)V
    .registers 8

    iget-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_27

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    move-object v2, v0

    :goto_2a
    if-eqz v2, :cond_4

    iget-object v0, v2, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_5f

    iget-object v0, v2, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->A:I

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_5f

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iget-object v0, v2, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    iget-object v0, v2, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6c
    if-ltz v1, :cond_a3

    iget-object v0, v2, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v3, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->A:I

    sget-boolean v3, Landroid/support/v4/app/t;->a:Z

    if-eqz v3, :cond_9f

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6c

    :cond_a3
    iget-object v0, v2, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;

    move-object v2, v0

    goto :goto_2a
.end method

.method final a(Landroid/support/v4/app/m;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    if-nez v0, :cond_1f

    iput-object p1, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/m;

    iput-object p1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    :goto_8
    iget v0, p0, Landroid/support/v4/app/l;->e:I

    iput v0, p1, Landroid/support/v4/app/m;->e:I

    iget v0, p0, Landroid/support/v4/app/l;->f:I

    iput v0, p1, Landroid/support/v4/app/m;->f:I

    iget v0, p0, Landroid/support/v4/app/l;->g:I

    iput v0, p1, Landroid/support/v4/app/m;->g:I

    iget v0, p0, Landroid/support/v4/app/l;->h:I

    iput v0, p1, Landroid/support/v4/app/m;->h:I

    iget v0, p0, Landroid/support/v4/app/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/l;->d:I

    return-void

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/m;

    iput-object v0, p1, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    iget-object v0, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/m;

    iput-object p1, v0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;

    iput-object p1, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/m;

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 11

    const/4 v1, 0x0

    if-eqz p3, :cond_db

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/l;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/l;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/l;->i:I

    if-eqz v0, :cond_47

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_47
    iget v0, p0, Landroid/support/v4/app/l;->e:I

    if-nez v0, :cond_4f

    iget v0, p0, Landroid/support/v4/app/l;->f:I

    if-eqz v0, :cond_6e

    :cond_4f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6e
    iget v0, p0, Landroid/support/v4/app/l;->g:I

    if-nez v0, :cond_76

    iget v0, p0, Landroid/support/v4/app/l;->h:I

    if-eqz v0, :cond_95

    :cond_76
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_95
    iget v0, p0, Landroid/support/v4/app/l;->p:I

    if-nez v0, :cond_9d

    iget-object v0, p0, Landroid/support/v4/app/l;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b8

    :cond_9d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/l;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b8
    iget v0, p0, Landroid/support/v4/app/l;->r:I

    if-nez v0, :cond_c0

    iget-object v0, p0, Landroid/support/v4/app/l;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_db

    :cond_c0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/l;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/l;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_db
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1f4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    move v2, v1

    move-object v3, v0

    :goto_fe
    if-eqz v3, :cond_1f4

    iget v0, v3, Landroid/support/v4/app/m;->c:I

    packed-switch v0, :pswitch_data_1f6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/m;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_183

    iget v0, v3, Landroid/support/v4/app/m;->e:I

    if-nez v0, :cond_13d

    iget v0, v3, Landroid/support/v4/app/m;->f:I

    if-eqz v0, :cond_15c

    :cond_13d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/m;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/m;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15c
    iget v0, v3, Landroid/support/v4/app/m;->g:I

    if-nez v0, :cond_164

    iget v0, v3, Landroid/support/v4/app/m;->h:I

    if-eqz v0, :cond_183

    :cond_164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/m;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/m;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_183
    iget-object v0, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ed

    iget-object v0, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ed

    move v0, v1

    :goto_190
    iget-object v5, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1ed

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d5

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1a9
    iget-object v5, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_190

    :pswitch_1b5
    const-string v0, "NULL"

    goto/16 :goto_116

    :pswitch_1b9
    const-string v0, "ADD"

    goto/16 :goto_116

    :pswitch_1bd
    const-string v0, "REPLACE"

    goto/16 :goto_116

    :pswitch_1c1
    const-string v0, "REMOVE"

    goto/16 :goto_116

    :pswitch_1c5
    const-string v0, "HIDE"

    goto/16 :goto_116

    :pswitch_1c9
    const-string v0, "SHOW"

    goto/16 :goto_116

    :pswitch_1cd
    const-string v0, "DETACH"

    goto/16 :goto_116

    :pswitch_1d1
    const-string v0, "ATTACH"

    goto/16 :goto_116

    :cond_1d5
    if-nez v0, :cond_1dc

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1dc
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a9

    :cond_1ed
    iget-object v3, v3, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_fe

    :cond_1f4
    return-void

    nop

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_1b5
        :pswitch_1b9
        :pswitch_1bd
        :pswitch_1c1
        :pswitch_1c5
        :pswitch_1c9
        :pswitch_1cd
        :pswitch_1d1
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 9

    const/4 v6, -0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "popFromBackStack: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/d;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2b
    invoke-virtual {p0, v6}, Landroid/support/v4/app/l;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/m;

    move-object v3, v0

    :goto_31
    if-eqz v3, :cond_fb

    iget v0, v3, Landroid/support/v4/app/m;->c:I

    packed-switch v0, :pswitch_data_152

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/support/v4/app/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4f
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_62
    :goto_62
    iget-object v0, v3, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    move-object v3, v0

    goto :goto_31

    :pswitch_66
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7b

    iget v1, v3, Landroid/support/v4/app/m;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_7b
    iget-object v0, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    move v1, v2

    :goto_80
    iget-object v0, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_62

    iget-object v0, v3, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/m;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v4, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_80

    :pswitch_9d
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_62

    :pswitch_a9
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_62

    :pswitch_bd
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_62

    :pswitch_d1
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_62

    :pswitch_e6
    iget-object v0, v3, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/m;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v4, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v4}, Landroid/support/v4/app/t;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_62

    :cond_fb
    if-eqz p1, :cond_10f

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v1, v1, Landroid/support/v4/app/t;->n:I

    iget v2, p0, Landroid/support/v4/app/l;->i:I

    invoke-static {v2}, Landroid/support/v4/app/t;->d(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/l;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/t;->a(IIIZ)V

    :cond_10f
    iget v0, p0, Landroid/support/v4/app/l;->o:I

    if-ltz v0, :cond_14d

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v0, p0, Landroid/support/v4/app/l;->o:I

    monitor-enter v1

    :try_start_118
    iget-object v2, v1, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    if-nez v2, :cond_129

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    :cond_129
    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_141

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Freeing back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_141
    iget-object v2, v1, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_14b
    .catchall {:try_start_118 .. :try_end_14b} :catchall_14e

    iput v6, p0, Landroid/support/v4/app/l;->o:I

    :cond_14d
    return-void

    :catchall_14e
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_66
        :pswitch_9d
        :pswitch_a9
        :pswitch_bd
        :pswitch_d1
        :pswitch_e6
    .end packed-switch
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/l;->b(Z)I

    move-result v0

    return v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/l;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
    .registers 4

    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/m;->c:I

    iput-object p1, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)V

    return-object p0
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/l;->b(Z)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
    .registers 4

    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/m;->c:I

    iput-object p1, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)V

    return-object p0
.end method

.method public final run()V
    .registers 10

    const/4 v8, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Run: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/support/v4/app/l;->o:I

    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-virtual {p0, v8}, Landroid/support/v4/app/l;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;

    move-object v4, v0

    :goto_30
    if-eqz v4, :cond_15d

    iget v0, v4, Landroid/support/v4/app/m;->c:I

    packed-switch v0, :pswitch_data_184

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/support/v4/app/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4e
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Z)V

    :cond_59
    :goto_59
    iget-object v0, v4, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;

    move-object v4, v0

    goto :goto_30

    :pswitch_5d
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_fa

    move v1, v2

    move-object v3, v0

    :goto_67
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_fb

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    sget-boolean v5, Landroid/support/v4/app/t;->a:Z

    if-eqz v5, :cond_9d

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OP_REPLACE: adding="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    if-eqz v3, :cond_a5

    iget v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->G:I

    if-ne v5, v6, :cond_aa

    :cond_a5
    if-ne v0, v3, :cond_ae

    const/4 v3, 0x0

    iput-object v3, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    :cond_aa
    :goto_aa
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_67

    :cond_ae
    iget-object v5, v4, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_b9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    :cond_b9
    iget-object v5, v4, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Landroid/support/v4/app/m;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-boolean v5, p0, Landroid/support/v4/app/l;->k:Z

    if-eqz v5, :cond_f0

    iget v5, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->A:I

    sget-boolean v5, Landroid/support/v4/app/t;->a:Z

    if-eqz v5, :cond_f0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bump nesting of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    iget-object v5, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v6, p0, Landroid/support/v4/app/l;->i:I

    iget v7, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_aa

    :cond_fa
    move-object v3, v0

    :cond_fb
    if-eqz v3, :cond_59

    iget v0, v4, Landroid/support/v4/app/m;->e:I

    iput v0, v3, Landroid/support/v4/app/Fragment;->P:I

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_59

    :pswitch_108
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v3, p0, Landroid/support/v4/app/l;->i:I

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    :pswitch_119
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v3, p0, Landroid/support/v4/app/l;->i:I

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    :pswitch_12a
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v3, p0, Landroid/support/v4/app/l;->i:I

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    :pswitch_13b
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v3, p0, Landroid/support/v4/app/l;->i:I

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    :pswitch_14c
    iget-object v0, v4, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/m;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->P:I

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v3, p0, Landroid/support/v4/app/l;->i:I

    iget v5, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    :cond_15d
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget v1, v1, Landroid/support/v4/app/t;->n:I

    iget v2, p0, Landroid/support/v4/app/l;->i:I

    iget v3, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/t;->a(IIIZ)V

    iget-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    if-eqz v0, :cond_183

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/t;

    iget-object v1, v0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_17b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    :cond_17b
    iget-object v1, v0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/t;->i()V

    :cond_183
    return-void

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_5d
        :pswitch_108
        :pswitch_119
        :pswitch_12a
        :pswitch_13b
        :pswitch_14c
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/l;->o:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/l;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/l;->m:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
