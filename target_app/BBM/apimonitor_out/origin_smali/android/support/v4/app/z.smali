.class final Landroid/support/v4/app/z;
.super Landroid/support/v4/app/x;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/o",
            "<",
            "Landroid/support/v4/app/aa;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/o",
            "<",
            "Landroid/support/v4/app/aa;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Landroid/support/v4/app/h;

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/z;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/h;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    new-instance v0, Landroid/support/v4/b/o;

    invoke-direct {v0}, Landroid/support/v4/b/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    new-instance v0, Landroid/support/v4/b/o;

    invoke-direct {v0}, Landroid/support/v4/b/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    iput-object p1, p0, Landroid/support/v4/app/z;->d:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    iput-boolean p3, p0, Landroid/support/v4/app/z;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_25
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-ge v1, v0, :cond_59

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v4, v1}, Landroid/support/v4/b/o;->b(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_59
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-lez v0, :cond_af

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7c
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-ge v2, v0, :cond_af

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/b/o;->b(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_af
    return-void
.end method

.method public final a()Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_9
    if-ge v2, v4, :cond_23

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    iget-boolean v5, v0, Landroid/support/v4/app/aa;->h:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/aa;->f:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    goto :goto_1c

    :cond_23
    return v3
.end method

.method final b()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    return-void

    :cond_3d
    iput-boolean v5, p0, Landroid/support/v4/app/z;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_48
    if-ltz v1, :cond_3c

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->i:Z

    if-eqz v2, :cond_60

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->j:Z

    if-eqz v2, :cond_60

    iput-boolean v5, v0, Landroid/support/v4/app/aa;->h:Z

    :cond_5c
    :goto_5c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_48

    :cond_60
    iget-boolean v2, v0, Landroid/support/v4/app/aa;->h:Z

    if-nez v2, :cond_5c

    iput-boolean v5, v0, Landroid/support/v4/app/aa;->h:Z

    sget-boolean v2, Landroid/support/v4/app/z;->a:Z

    if-eqz v2, :cond_7e

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Starting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-nez v2, :cond_92

    iget-object v2, v0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    if-eqz v2, :cond_92

    iget-object v2, v0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    iget v3, v0, Landroid/support/v4/app/aa;->a:I

    iget-object v3, v0, Landroid/support/v4/app/aa;->b:Landroid/os/Bundle;

    invoke-interface {v2}, Landroid/support/v4/app/y;->a()Landroid/support/v4/content/c;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    :cond_92
    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    if-eqz v2, :cond_5c

    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_c9

    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_c9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c9
    iget-boolean v2, v0, Landroid/support/v4/app/aa;->m:Z

    if-nez v2, :cond_e3

    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    iget v3, v0, Landroid/support/v4/app/aa;->a:I

    iget-object v4, v2, Landroid/support/v4/content/c;->b:Landroid/support/v4/content/d;

    if-eqz v4, :cond_dd

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dd
    iput-object v0, v2, Landroid/support/v4/content/c;->b:Landroid/support/v4/content/d;

    iput v3, v2, Landroid/support/v4/content/c;->a:I

    iput-boolean v5, v0, Landroid/support/v4/app/aa;->m:Z

    :cond_e3
    iget-object v0, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    iput-boolean v5, v0, Landroid/support/v4/content/c;->c:Z

    iput-boolean v6, v0, Landroid/support/v4/content/c;->e:Z

    iput-boolean v6, v0, Landroid/support/v4/content/c;->d:Z

    goto/16 :goto_5c
.end method

.method final c()V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_44
    if-ltz v1, :cond_55

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_44

    :cond_55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    goto :goto_3a
.end method

.method final d()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    return-void

    :cond_3d
    iput-boolean v6, p0, Landroid/support/v4/app/z;->g:Z

    iput-boolean v5, p0, Landroid/support/v4/app/z;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4a
    if-ltz v1, :cond_3c

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    sget-boolean v2, Landroid/support/v4/app/z;->a:Z

    if-eqz v2, :cond_6c

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    iput-boolean v6, v0, Landroid/support/v4/app/aa;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->h:Z

    iput-boolean v2, v0, Landroid/support/v4/app/aa;->j:Z

    iput-boolean v5, v0, Landroid/support/v4/app/aa;->h:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/app/y;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4a
.end method

.method final e()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/aa;->k:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method final f()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2d

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->h:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->k:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/aa;->k:Z

    iget-boolean v2, v0, Landroid/support/v4/app/aa;->e:Z

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;

    iget-object v3, v0, Landroid/support/v4/app/aa;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    :cond_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_2d
    return-void
.end method

.method final g()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/z;->g:Z

    if-nez v0, :cond_3b

    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    if-ltz v1, :cond_36

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_25

    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    :cond_3b
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_53

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5c
    if-ltz v1, :cond_6d

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5c

    :cond_6d
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;

    invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
