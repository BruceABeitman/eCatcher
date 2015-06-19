.class public Lorg/apache/log4j/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/a;


# static fields
.field static h:Ljava/lang/Class;

.field private static final i:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected volatile b:Lorg/apache/log4j/v;

.field protected volatile c:Lorg/apache/log4j/g;

.field protected d:Ljava/util/ResourceBundle;

.field protected e:Lorg/apache/log4j/k/j;

.field f:Lorg/apache/log4j/c/b;

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/log4j/g;->h:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.g"

    invoke-static {v0}, Lorg/apache/log4j/g;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g;->h:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/g;->h:Ljava/lang/Class;

    goto :goto_c
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/g;->g:Z

    iput-object p1, p0, Lorg/apache/log4j/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/log4j/aa;
    .registers 2

    invoke-static {p0}, Lorg/apache/log4j/x;->b(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lorg/apache/log4j/g;
    .registers 2

    invoke-static {p0}, Lorg/apache/log4j/x;->a(Ljava/lang/Class;)Lorg/apache/log4j/aa;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lorg/apache/log4j/g;
    .registers 2

    invoke-static {p0}, Lorg/apache/log4j/x;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v0

    return-object v0
.end method

.method private d(Lorg/apache/log4j/a;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    instance-of v0, v0, Lorg/apache/log4j/t;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    check-cast v0, Lorg/apache/log4j/t;

    invoke-virtual {v0, p0, p1}, Lorg/apache/log4j/t;->b(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    instance-of v0, v0, Lorg/apache/log4j/k/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    check-cast v0, Lorg/apache/log4j/k/g;

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/k/g;->b(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V

    goto :goto_f
.end method

.method static f(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static f()Ljava/util/Enumeration;
    .registers 1

    invoke-static {}, Lorg/apache/log4j/x;->c()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lorg/apache/log4j/k/j;
    .registers 1

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v0

    return-object v0
.end method

.method public static final o()Lorg/apache/log4j/g;
    .registers 1

    invoke-static {}, Lorg/apache/log4j/x;->b()Lorg/apache/log4j/aa;

    move-result-object v0

    return-object v0
.end method

.method public static s()V
    .registers 0

    invoke-static {}, Lorg/apache/log4j/x;->d()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/g;->c()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_1e

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/a;

    instance-of v2, v0, Lorg/apache/log4j/k/a;

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lorg/apache/log4j/a;->a()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11

    new-instance v0, Lorg/apache/log4j/k/k;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/g;->a(Lorg/apache/log4j/k/k;)V

    return-void
.end method

.method public a(Ljava/util/ResourceBundle;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g;->d:Ljava/util/ResourceBundle;

    return-void
.end method

.method public declared-synchronized a(Lorg/apache/log4j/a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/log4j/c/b;

    invoke-direct {v0}, Lorg/apache/log4j/c/b;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    :cond_c
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/a;)V

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/k/j;->a(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/apache/log4j/ag;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p1, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public a(Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p1, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public a(Lorg/apache/log4j/ag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p1, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2}, Lorg/apache/log4j/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    :goto_1b
    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_21
    move-object p2, v0

    goto :goto_1b
.end method

.method public a(Lorg/apache/log4j/ag;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p1, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2}, Lorg/apache/log4j/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    :goto_1b
    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p4}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_21
    invoke-static {v0, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1b
.end method

.method final a(Lorg/apache/log4j/k/j;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    return-void
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 5

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_15

    monitor-enter v1

    :try_start_5
    iget-object v2, v1, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v2, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/k/k;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-boolean v2, v1, Lorg/apache/log4j/g;->g:Z

    if-nez v2, :cond_1d

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_21

    :cond_15
    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    invoke-interface {v0, p0}, Lorg/apache/log4j/k/j;->a(Lorg/apache/log4j/g;)V

    :cond_1c
    return-void

    :cond_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_21

    iget-object v1, v1, Lorg/apache/log4j/g;->c:Lorg/apache/log4j/g;

    goto :goto_2

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Lorg/apache/log4j/v;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g;->g:Z

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    invoke-virtual {p0, p2}, Lorg/apache/log4j/g;->b(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public a(Lorg/apache/log4j/ag;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p1, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    goto :goto_b
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lorg/apache/log4j/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    if-nez p1, :cond_a

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Ljava/lang/String;)Lorg/apache/log4j/a;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    move-result-object v0

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const v1, 0x9c40

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const v1, 0x9c40

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public b(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    iget v1, p2, Lorg/apache/log4j/ag;->l:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public b(Lorg/apache/log4j/ag;)V
    .registers 2

    check-cast p1, Lorg/apache/log4j/v;

    iput-object p1, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g;->g:Z

    return v0
.end method

.method public b(Lorg/apache/log4j/a;)Z
    .registers 3

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Lorg/apache/log4j/a;)Z

    move-result v0

    goto :goto_7
.end method

.method public declared-synchronized c()Ljava/util/Enumeration;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    if-nez v0, :cond_b

    invoke-static {}, Lorg/apache/log4j/c/n;->a()Lorg/apache/log4j/c/n;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    move-result-object v0

    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const v1, 0xc350

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const v1, 0xc350

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Ljava/lang/String;)Lorg/apache/log4j/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/c/b;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lorg/apache/log4j/g;->d(Lorg/apache/log4j/a;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lorg/apache/log4j/a;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Lorg/apache/log4j/a;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/c/b;->c(Lorg/apache/log4j/a;)V

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/log4j/g;->d(Lorg/apache/log4j/a;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lorg/apache/log4j/v;
    .registers 2

    :goto_0
    if-eqz p0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    :goto_8
    return-object v0

    :cond_9
    iget-object p0, p0, Lorg/apache/log4j/g;->c:Lorg/apache/log4j/g;

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public d(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/log4j/g;->p()Ljava/util/ResourceBundle;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No resource is associated with key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/g;->b(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public e()Lorg/apache/log4j/ag;
    .registers 2

    :goto_0
    if-eqz p0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    :goto_8
    return-object v0

    :cond_9
    iget-object p0, p0, Lorg/apache/log4j/g;->c:Lorg/apache/log4j/g;

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/log4j/g;->i:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/g;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public h()Lorg/apache/log4j/k/j;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    return-object v0
.end method

.method public i()Lorg/apache/log4j/k/j;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lorg/apache/log4j/g;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->c:Lorg/apache/log4j/g;

    return-object v0
.end method

.method public final l()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    return-object v0
.end method

.method public declared-synchronized m()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v1}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    :try_start_23
    iget-object v1, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;

    invoke-virtual {v1}, Lorg/apache/log4j/c/b;->m()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/a;

    invoke-direct {p0, v0}, Lorg/apache/log4j/g;->d(Lorg/apache/log4j/a;)V

    goto :goto_2c

    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g;->f:Lorg/apache/log4j/c/b;
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_20

    :cond_3f
    monitor-exit p0

    return-void
.end method

.method public final n()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g;->b:Lorg/apache/log4j/v;

    return-object v0
.end method

.method public p()Ljava/util/ResourceBundle;
    .registers 2

    :goto_0
    if-eqz p0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/g;->d:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/log4j/g;->d:Ljava/util/ResourceBundle;

    :goto_8
    return-object v0

    :cond_9
    iget-object p0, p0, Lorg/apache/log4j/g;->c:Lorg/apache/log4j/g;

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public q()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    goto :goto_b
.end method

.method public r()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/g;->e:Lorg/apache/log4j/k/j;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-virtual {p0}, Lorg/apache/log4j/g;->d()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    goto :goto_b
.end method
