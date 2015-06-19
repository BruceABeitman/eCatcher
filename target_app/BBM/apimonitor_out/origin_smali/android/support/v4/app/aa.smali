.class final Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/d",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/y",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/aa;

.field final synthetic o:Landroid/support/v4/app/z;


# virtual methods
.method final a()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_19

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iput-boolean v3, p0, Landroid/support/v4/app/aa;->h:Z

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->i:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->m:Z

    if-eqz v0, :cond_32

    iput-boolean v3, p0, Landroid/support/v4/app/aa;->m:Z

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->a(Landroid/support/v4/content/d;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    iput-boolean v3, v0, Landroid/support/v4/content/c;->c:Z

    :cond_32
    return-void
.end method

.method final a(Landroid/support/v4/content/c;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v1, :cond_77

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v1, v1, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    move-object v1, v0

    :goto_1e
    :try_start_1e
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_53

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p2, v3}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_67

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iput-object v1, v0, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z

    :cond_66
    return-void

    :catchall_67
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v2, v2, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v2, :cond_76

    iget-object v2, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v2, v2, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v2, v2, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iput-object v1, v2, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    :cond_76
    throw v0

    :cond_77
    move-object v1, v0

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/aa;->a:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mId="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Landroid/support/v4/content/c;->a:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mListener="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/support/v4/content/c;->b:Landroid/support/v4/content/d;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v2, v0, Landroid/support/v4/content/c;->c:Z

    if-nez v2, :cond_6d

    iget-boolean v2, v0, Landroid/support/v4/content/c;->f:Z

    if-nez v2, :cond_6d

    iget-boolean v2, v0, Landroid/support/v4/content/c;->g:Z

    if-eqz v2, :cond_8e

    :cond_6d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStarted="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Landroid/support/v4/content/c;->c:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mContentChanged="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Landroid/support/v4/content/c;->f:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mProcessingChange="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Landroid/support/v4/content/c;->g:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_8e
    iget-boolean v2, v0, Landroid/support/v4/content/c;->d:Z

    if-nez v2, :cond_96

    iget-boolean v2, v0, Landroid/support/v4/content/c;->e:Z

    if-eqz v2, :cond_ad

    :cond_96
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAbandoned="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/content/c;->d:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReset="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v0, Landroid/support/v4/content/c;->e:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_ad
    iget-boolean v0, p0, Landroid/support/v4/app/aa;->e:Z

    if-nez v0, :cond_b5

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z

    if-eqz v0, :cond_d9

    :cond_b5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->e:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->g:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->k:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->l:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->i:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->j:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->m:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->n:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_148

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->n:Landroid/support/v4/app/aa;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/support/v4/app/aa;->n:Landroid/support/v4/app/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_148
    return-void
.end method

.method final b()V
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1b

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Destroying: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iput-boolean v5, p0, Landroid/support/v4/app/aa;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z

    iput-boolean v4, p0, Landroid/support/v4/app/aa;->f:Z

    iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    if-eqz v1, :cond_72

    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Landroid/support/v4/app/aa;->e:Z

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_47

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Reseting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v1, v1, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    move-object v1, v0

    :goto_60
    :try_start_60
    iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_9b

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iput-object v1, v0, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    :cond_72
    iput-object v2, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    iput-object v2, p0, Landroid/support/v4/app/aa;->g:Ljava/lang/Object;

    iput-boolean v4, p0, Landroid/support/v4/app/aa;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-eqz v0, :cond_93

    iget-boolean v0, p0, Landroid/support/v4/app/aa;->m:Z

    if-eqz v0, :cond_87

    iput-boolean v4, p0, Landroid/support/v4/app/aa;->m:Z

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->a(Landroid/support/v4/content/d;)V

    :cond_87
    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    iput-boolean v5, v0, Landroid/support/v4/content/c;->e:Z

    iput-boolean v4, v0, Landroid/support/v4/content/c;->c:Z

    iput-boolean v4, v0, Landroid/support/v4/content/c;->d:Z

    iput-boolean v4, v0, Landroid/support/v4/content/c;->f:Z

    iput-boolean v4, v0, Landroid/support/v4/content/c;->g:Z

    :cond_93
    iget-object v0, p0, Landroid/support/v4/app/aa;->n:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_ab

    iget-object p0, p0, Landroid/support/v4/app/aa;->n:Landroid/support/v4/app/aa;

    goto/16 :goto_3

    :catchall_9b
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v2, v2, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    if-eqz v2, :cond_aa

    iget-object v2, p0, Landroid/support/v4/app/aa;->o:Landroid/support/v4/app/z;

    iget-object v2, v2, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iget-object v2, v2, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;

    iput-object v1, v2, Landroid/support/v4/app/o;->u:Ljava/lang/String;

    :cond_aa
    throw v0

    :cond_ab
    return-void

    :cond_ac
    move-object v1, v2

    goto :goto_60
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/aa;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
