.class public Lorg/apache/log4j/i/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final e:J = -0xc0d46dc8bf44ac1L

.field static final f:[Ljava/lang/Integer; = null

.field static final g:Ljava/lang/String; = "toLevel"

.field static final h:[Ljava/lang/Class;

.field static final i:Ljava/util/Hashtable;

.field static j:Ljava/lang/Class;

.field private static k:J


# instance fields
.field public final transient a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public transient c:Lorg/apache/log4j/ag;

.field public final d:J

.field private transient l:Lorg/apache/log4j/g;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Hashtable;

.field private o:Z

.field private p:Z

.field private transient q:Ljava/lang/Object;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lorg/apache/log4j/k/t;

.field private u:Lorg/apache/log4j/k/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/i/p;->k:J

    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/log4j/i/p;->f:[Ljava/lang/Integer;

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/i/p;->h:[Ljava/lang/Class;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/i/p;->i:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/aa;JLorg/apache/log4j/v;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/k/t;Ljava/lang/String;Lorg/apache/log4j/k/h;Ljava/util/Map;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->o:Z

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->p:Z

    iput-object p1, p0, Lorg/apache/log4j/i/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/i/p;->l:Lorg/apache/log4j/g;

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->b:Ljava/lang/String;

    :goto_15
    iput-object p5, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    iput-object p6, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    if-eqz p8, :cond_1d

    iput-object p8, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    :cond_1d
    iput-wide p3, p0, Lorg/apache/log4j/i/p;->d:J

    iput-object p7, p0, Lorg/apache/log4j/i/p;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/log4j/i/p;->o:Z

    iput-object p9, p0, Lorg/apache/log4j/i/p;->m:Ljava/lang/String;

    iput-object p10, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    iput-boolean v1, p0, Lorg/apache/log4j/i/p;->p:Z

    if-eqz p11, :cond_32

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    :cond_32
    return-void

    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->b:Ljava/lang/String;

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/g;JLorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->o:Z

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->p:Z

    iput-object p1, p0, Lorg/apache/log4j/i/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/i/p;->l:Lorg/apache/log4j/g;

    invoke-virtual {p2}, Lorg/apache/log4j/g;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->b:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    iput-object p6, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    if-eqz p7, :cond_1f

    new-instance v0, Lorg/apache/log4j/k/t;

    invoke-direct {v0, p7}, Lorg/apache/log4j/k/t;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    :cond_1f
    iput-wide p3, p0, Lorg/apache/log4j/i/p;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->o:Z

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->p:Z

    iput-object p1, p0, Lorg/apache/log4j/i/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/i/p;->l:Lorg/apache/log4j/g;

    invoke-virtual {p2}, Lorg/apache/log4j/g;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    iput-object p4, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    if-eqz p5, :cond_1f

    new-instance v0, Lorg/apache/log4j/k/t;

    invoke-direct {v0, p5}, Lorg/apache/log4j/k/t;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/i/p;->d:J

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-static {v2}, Lorg/apache/log4j/v;->a(I)Lorg/apache/log4j/v;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    :goto_12
    return-void

    :cond_13
    sget-object v1, Lorg/apache/log4j/i/p;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_2e

    invoke-static {v0}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "toLevel"

    sget-object v4, Lorg/apache/log4j/i/p;->h:[Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lorg/apache/log4j/i/p;->i:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    sget-object v0, Lorg/apache/log4j/i/p;->f:[Ljava/lang/Integer;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    const/4 v0, 0x0

    sget-object v3, Lorg/apache/log4j/i/p;->f:[Ljava/lang/Integer;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/v;

    iput-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_44

    goto :goto_12

    :catch_44
    move-exception v0

    const-string v1, "Level deserialization failed, reverting to default."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lorg/apache/log4j/v;->a(I)Lorg/apache/log4j/v;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    goto :goto_12
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->i()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->g()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->e()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->f()V

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->k()[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/i/p;->b(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method private b(Ljava/io/ObjectInputStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/i/p;->a(Ljava/io/ObjectInputStream;)V

    iget-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    if-nez v0, :cond_12

    new-instance v0, Lorg/apache/log4j/k/h;

    invoke-direct {v0, v1, v1}, Lorg/apache/log4j/k/h;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    :cond_12
    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    invoke-virtual {v0}, Lorg/apache/log4j/ag;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/i/p;->j:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string v0, "org.apache.log4j.v"

    invoke-static {v0}, Lorg/apache/log4j/i/p;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/p;->j:Ljava/lang/Class;

    :goto_1b
    if-ne v1, v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lorg/apache/log4j/i/p;->j:Ljava/lang/Class;

    goto :goto_1b

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static h()J
    .registers 2

    sget-wide v0, Lorg/apache/log4j/i/p;->k:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lorg/apache/log4j/ab;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public a()Lorg/apache/log4j/k/h;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    if-nez v0, :cond_12

    new-instance v0, Lorg/apache/log4j/k/h;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/i/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/k/h;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    :cond_12
    iget-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->f()V

    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    :cond_12
    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/log4j/i/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public b()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->c:Lorg/apache/log4j/ag;

    check-cast v0, Lorg/apache/log4j/v;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i/p;->o:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->o:Z

    invoke-static {}, Lorg/apache/log4j/ac;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->m:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lorg/apache/log4j/i/p;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i/p;->p:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/i/p;->p:Z

    invoke-static {}, Lorg/apache/log4j/ab;->a()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    :cond_15
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/i/p;->r:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/i/p;->r:Ljava/lang/String;

    :cond_14
    :goto_14
    iget-object v0, p0, Lorg/apache/log4j/i/p;->r:Ljava/lang/String;

    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/apache/log4j/i/p;->l:Lorg/apache/log4j/g;

    invoke-virtual {v0}, Lorg/apache/log4j/g;->i()Lorg/apache/log4j/k/j;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/log4j/k/p;

    if-eqz v1, :cond_30

    check-cast v0, Lorg/apache/log4j/k/p;

    invoke-interface {v0}, Lorg/apache/log4j/k/p;->e()Lorg/apache/log4j/h/c;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/h/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->r:Ljava/lang/String;

    goto :goto_14

    :cond_30
    iget-object v0, p0, Lorg/apache/log4j/i/p;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->r:Ljava/lang/String;

    goto :goto_14
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->s:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/i/p;->s:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lorg/apache/log4j/i/p;->s:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lorg/apache/log4j/k/t;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    return-object v0
.end method

.method public k()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/i/p;->t:Lorg/apache/log4j/k/t;

    invoke-virtual {v0}, Lorg/apache/log4j/k/t;->b()[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->u:Lorg/apache/log4j/k/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final m()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/log4j/i/p;->d:J

    return-wide v0
.end method

.method public n()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/i/p;->f()V

    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/apache/log4j/i/p;->n:Ljava/util/Hashtable;

    goto :goto_c
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/p;->a:Ljava/lang/String;

    return-object v0
.end method
