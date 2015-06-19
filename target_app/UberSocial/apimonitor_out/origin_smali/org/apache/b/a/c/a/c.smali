.class Lorg/apache/b/a/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/apache/b/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/b/a/c/a/c;

    invoke-direct {v0}, Lorg/apache/b/a/c/a/c;-><init>()V

    sput-object v0, Lorg/apache/b/a/c/a/c;->a:Lorg/apache/b/a/c/a/c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p1, Lorg/apache/b/a/c/a/a/y;->a:Lorg/apache/b/a/c/a/a/z;

    iget-object v1, p1, Lorg/apache/b/a/c/a/a/y;->b:Lorg/apache/b/a/c/a/a/z;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_9
    :goto_9
    if-eq v0, v1, :cond_1a

    iget-object v3, v0, Lorg/apache/b/a/c/a/a/z;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/b/a/c/a/a/z;->g:Lorg/apache/b/a/c/a/a/z;

    if-nez p2, :cond_9

    iget-object v3, v0, Lorg/apache/b/a/c/a/a/z;->h:Lorg/apache/b/a/c/a/a/z;

    invoke-direct {p0, v2, v3}, Lorg/apache/b/a/c/a/c;->a(Ljava/lang/StringBuffer;Lorg/apache/b/a/c/a/a/z;)V

    goto :goto_9

    :cond_1a
    iget-object v0, v1, Lorg/apache/b/a/c/a/a/z;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/b;)Lorg/apache/b/a/c/a/a;
    .registers 5

    new-instance v1, Lorg/apache/b/a/c/a/d;

    invoke-direct {v1, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/b/a/c/a/a/a;

    if-eqz v2, :cond_14

    check-cast v0, Lorg/apache/b/a/c/a/a/a;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    instance-of v2, v0, Lorg/apache/b/a/c/a/a/d;

    if-eqz v2, :cond_1f

    check-cast v0, Lorg/apache/b/a/c/a/a/d;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/d;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    goto :goto_13

    :cond_1f
    instance-of v2, v0, Lorg/apache/b/a/c/a/a/j;

    if-eqz v2, :cond_5a

    check-cast v0, Lorg/apache/b/a/c/a/a/j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/b/a/c/a/a/f;

    if-eqz v1, :cond_3f

    new-instance v1, Lorg/apache/b/a/c/a/f;

    check-cast v0, Lorg/apache/b/a/c/a/a/f;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/f;)Lorg/apache/b/a/c/a/h;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/b/a/c/a/f;-><init>(Ljava/lang/String;Lorg/apache/b/a/c/a/h;)V

    move-object v0, v1

    goto :goto_13

    :cond_3f
    instance-of v1, v0, Lorg/apache/b/a/c/a/a/d;

    if-eqz v1, :cond_54

    invoke-static {v2}, Lorg/apache/b/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/apache/b/a/c/a/i;

    check-cast v0, Lorg/apache/b/a/c/a/a/d;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/d;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/b/a/c/a/i;-><init>(Ljava/lang/String;Lorg/apache/b/a/c/a/g;)V

    move-object v0, v1

    goto :goto_13

    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static a()Lorg/apache/b/a/c/a/c;
    .registers 1

    sget-object v0, Lorg/apache/b/a/c/a/c;->a:Lorg/apache/b/a/c/a/c;

    return-object v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/k;)Lorg/apache/b/a/c/a/e;
    .registers 7

    const/4 v4, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/b/a/c/a/a/k;->d()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lorg/apache/b/a/c/a/d;

    invoke-direct {v2, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    :goto_f
    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/b/a/c/a/a/e;

    if-eqz v3, :cond_27

    check-cast v0, Lorg/apache/b/a/c/a/a/e;

    invoke-direct {p0, v0, v4}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2d
    new-instance v0, Lorg/apache/b/a/c/a/e;

    invoke-direct {v0, v1, v4}, Lorg/apache/b/a/c/a/e;-><init>(Ljava/util/ArrayList;Z)V

    return-object v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/e;Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/d;)Lorg/apache/b/a/c/a/g;
    .registers 6

    new-instance v2, Lorg/apache/b/a/c/a/d;

    invoke-direct {v2, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/b/a/c/a/a/k;

    if-eqz v3, :cond_23

    check-cast v0, Lorg/apache/b/a/c/a/a/k;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/k;)Lorg/apache/b/a/c/a/e;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    :cond_18
    instance-of v2, v0, Lorg/apache/b/a/c/a/a/a;

    if-eqz v2, :cond_2d

    check-cast v0, Lorg/apache/b/a/c/a/a/a;

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/e;Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    return-object v0

    :cond_23
    instance-of v2, v0, Lorg/apache/b/a/c/a/a/a;

    if-nez v2, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/h;)Lorg/apache/b/a/c/a/g;
    .registers 4

    new-instance v0, Lorg/apache/b/a/c/a/d;

    invoke-direct {v0, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    invoke-virtual {v0}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/b/a/c/a/a/a;

    if-eqz v1, :cond_14

    check-cast v0, Lorg/apache/b/a/c/a/a/a;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    instance-of v1, v0, Lorg/apache/b/a/c/a/a/d;

    if-eqz v1, :cond_1f

    check-cast v0, Lorg/apache/b/a/c/a/a/d;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/d;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    goto :goto_13

    :cond_1f
    instance-of v1, v0, Lorg/apache/b/a/c/a/a/i;

    if-eqz v1, :cond_2a

    check-cast v0, Lorg/apache/b/a/c/a/a/i;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/i;)Lorg/apache/b/a/c/a/i;

    move-result-object v0

    goto :goto_13

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Lorg/apache/b/a/c/a/e;Lorg/apache/b/a/c/a/a/a;)Lorg/apache/b/a/c/a/g;
    .registers 7

    const/4 v3, 0x1

    new-instance v1, Lorg/apache/b/a/c/a/d;

    invoke-direct {v1, p2}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/a/a/g;

    invoke-direct {p0, v0, v3}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/a/a/e;

    invoke-direct {p0, v0, v3}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/b/a/c/a/g;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/b/a/c/a/g;-><init>(Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lorg/apache/b/a/c/a/a/f;)Lorg/apache/b/a/c/a/h;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/b/a/c/a/d;

    invoke-direct {v2, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    :goto_a
    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/b/a/c/a/a/h;

    if-eqz v3, :cond_22

    check-cast v0, Lorg/apache/b/a/c/a/a/h;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/h;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_28
    new-instance v0, Lorg/apache/b/a/c/a/h;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/c/a/h;-><init>(Ljava/util/ArrayList;Z)V

    return-object v0
.end method

.method private a(Lorg/apache/b/a/c/a/a/i;)Lorg/apache/b/a/c/a/i;
    .registers 5

    new-instance v1, Lorg/apache/b/a/c/a/d;

    invoke-direct {v1, p1}, Lorg/apache/b/a/c/a/d;-><init>(Lorg/apache/b/a/c/a/a/y;)V

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/b/a/c/a/a/j;

    if-eqz v2, :cond_2c

    check-cast v0, Lorg/apache/b/a/c/a/a/j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/y;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/b/a/c/a/a/d;

    if-eqz v1, :cond_32

    invoke-static {v2}, Lorg/apache/b/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/b/a/c/a/i;

    check-cast v0, Lorg/apache/b/a/c/a/a/d;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/d;)Lorg/apache/b/a/c/a/g;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/apache/b/a/c/a/i;-><init>(Ljava/lang/String;Lorg/apache/b/a/c/a/g;)V

    return-object v2

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/StringBuffer;Lorg/apache/b/a/c/a/a/z;)V
    .registers 4

    if-eqz p2, :cond_c

    iget-object v0, p2, Lorg/apache/b/a/c/a/a/z;->h:Lorg/apache/b/a/c/a/a/z;

    invoke-direct {p0, p1, v0}, Lorg/apache/b/a/c/a/c;->a(Ljava/lang/StringBuffer;Lorg/apache/b/a/c/a/a/z;)V

    iget-object v0, p2, Lorg/apache/b/a/c/a/a/z;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/b/a/c/a/a/c;)Lorg/apache/b/a/c/a/b;
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p1}, Lorg/apache/b/a/c/a/a/c;->d()I

    move-result v0

    if-ge v1, v0, :cond_1e

    invoke-virtual {p1, v1}, Lorg/apache/b/a/c/a/a/c;->a(I)Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/a/a/b;

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/b;)Lorg/apache/b/a/c/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1e
    new-instance v0, Lorg/apache/b/a/c/a/b;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/b/a/c/a/b;-><init>(Ljava/util/ArrayList;Z)V

    return-object v0
.end method
