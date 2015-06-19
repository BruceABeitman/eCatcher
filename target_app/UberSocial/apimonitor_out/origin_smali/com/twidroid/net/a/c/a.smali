.class public Lcom/twidroid/net/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/String;

.field private static f:Lcom/twidroid/net/a/c/a;


# instance fields
.field a:Lcom/twidroid/model/twitter/c;

.field b:Landroid/content/Context;

.field d:I

.field e:I

.field private g:Lcom/twidroid/net/a/c/b;

.field private h:Ljava/util/ArrayList;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AccountSpinner"

    sput-object v0, Lcom/twidroid/net/a/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/c/a;->e:I

    iput-boolean v1, p0, Lcom/twidroid/net/a/c/a;->i:Z

    iput-boolean v1, p0, Lcom/twidroid/net/a/c/a;->j:Z

    iput-object p1, p0, Lcom/twidroid/net/a/c/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/twidroid/d/v;

    invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/net/a/c/a;->i:Z

    invoke-virtual {p0}, Lcom/twidroid/net/a/c/a;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_47

    move-result v0

    if-nez v0, :cond_19

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->q()Z

    move-result v0

    if-eqz v0, :cond_3d

    iput v1, p0, Lcom/twidroid/net/a/c/a;->e:I

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iput-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_41
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_47

    goto :goto_17

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 6

    const/4 v3, -0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v2, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    if-le p1, v3, :cond_2c

    move v0, p1

    :goto_f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iput-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_2e

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->g:Lcom/twidroid/net/a/c/b;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->g:Lcom/twidroid/net/a/c/b;

    iget-object v2, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    if-ne p1, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    invoke-virtual {p0}, Lcom/twidroid/net/a/c/a;->d()Z

    move-result v3

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/twidroid/net/a/c/b;->a(ILcom/twidroid/model/twitter/c;ZZ)V

    :cond_29
    iput p1, p0, Lcom/twidroid/net/a/c/a;->d:I

    return-void

    :cond_2c
    move v0, v1

    goto :goto_f

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    goto :goto_17
.end method

.method public a(J)V
    .registers 8

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-nez v0, :cond_1d

    move v2, v1

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_21
    invoke-virtual {p0, v2}, Lcom/twidroid/net/a/c/a;->a(I)V

    return-void
.end method

.method public a(Lcom/twidroid/net/a/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/c/a;->g:Lcom/twidroid/net/a/c/b;

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    iput-boolean p1, p0, Lcom/twidroid/net/a/c/a;->i:Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Lcom/twidroid/net/a/c/a;->e:I

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    :cond_d
    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a;->j:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a;->i:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    goto :goto_21
.end method

.method public b(J)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, p1

    if-nez v0, :cond_21

    invoke-virtual {p0, v1}, Lcom/twidroid/net/a/c/a;->a(I)V

    const/4 v2, 0x1

    :goto_20
    return v2

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_25
    invoke-virtual {p0, v3}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_20
.end method

.method public c(J)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    :goto_26
    return v0

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2b
    const/4 v0, -0x1

    goto :goto_26
.end method

.method public c()Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method public d()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    if-ne v0, v2, :cond_13

    invoke-virtual {p0, v3}, Lcom/twidroid/net/a/c/a;->a(I)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    iget-object v1, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2b

    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a;->i:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0, v2}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_12

    :cond_27
    invoke-virtual {p0, v3}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_12

    :cond_2b
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_12
.end method

.method public f()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a;->i:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0, v2}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_19

    :cond_26
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_19

    :cond_32
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a;->a(I)V

    goto :goto_19
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a;->i:Z

    return v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lcom/twidroid/net/a/c/a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->b:Landroid/content/Context;

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_23
    iget-object v0, p0, Lcom/twidroid/net/a/c/a;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
