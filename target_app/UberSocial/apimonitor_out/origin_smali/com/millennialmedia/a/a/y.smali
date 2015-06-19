.class final Lcom/millennialmedia/a/a/y;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# instance fields
.field private final a:Lcom/millennialmedia/a/a/u;

.field private final b:Lcom/millennialmedia/a/a/l;

.field private final c:Lcom/millennialmedia/a/a/f;

.field private final d:Lcom/millennialmedia/a/a/c/a;

.field private final e:Lcom/millennialmedia/a/a/ab;

.field private f:Lcom/millennialmedia/a/a/aa;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/a/a/u;Lcom/millennialmedia/a/a/l;Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/ab;)V
    .registers 6

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/a/a/y;->a:Lcom/millennialmedia/a/a/u;

    iput-object p2, p0, Lcom/millennialmedia/a/a/y;->b:Lcom/millennialmedia/a/a/l;

    iput-object p3, p0, Lcom/millennialmedia/a/a/y;->c:Lcom/millennialmedia/a/a/f;

    iput-object p4, p0, Lcom/millennialmedia/a/a/y;->d:Lcom/millennialmedia/a/a/c/a;

    iput-object p5, p0, Lcom/millennialmedia/a/a/y;->e:Lcom/millennialmedia/a/a/ab;

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/a/a/u;Lcom/millennialmedia/a/a/l;Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/ab;Lcom/millennialmedia/a/a/y$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/millennialmedia/a/a/y;-><init>(Lcom/millennialmedia/a/a/u;Lcom/millennialmedia/a/a/l;Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/ab;)V

    return-void
.end method

.method public static a(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Lcom/millennialmedia/a/a/z;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/z;-><init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;Lcom/millennialmedia/a/a/y$1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
    .registers 8

    const/4 v2, 0x0

    new-instance v0, Lcom/millennialmedia/a/a/z;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/z;-><init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;Lcom/millennialmedia/a/a/y$1;)V

    return-object v0
.end method

.method private b()Lcom/millennialmedia/a/a/aa;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/y;->f:Lcom/millennialmedia/a/a/aa;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/a/a/y;->c:Lcom/millennialmedia/a/a/f;

    iget-object v1, p0, Lcom/millennialmedia/a/a/y;->e:Lcom/millennialmedia/a/a/ab;

    iget-object v2, p0, Lcom/millennialmedia/a/a/y;->d:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/ab;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/y;->f:Lcom/millennialmedia/a/a/aa;

    goto :goto_4
.end method

.method public static b(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_15

    const/4 v3, 0x1

    :goto_c
    new-instance v0, Lcom/millennialmedia/a/a/z;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/z;-><init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;Lcom/millennialmedia/a/a/y$1;)V

    return-object v0

    :cond_15
    const/4 v3, 0x0

    goto :goto_c
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/a/a/y;->a:Lcom/millennialmedia/a/a/u;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/millennialmedia/a/a/y;->b()Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_12

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/millennialmedia/a/a/y;->a:Lcom/millennialmedia/a/a/u;

    iget-object v1, p0, Lcom/millennialmedia/a/a/y;->d:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v1}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/y;->c:Lcom/millennialmedia/a/a/f;

    iget-object v2, v2, Lcom/millennialmedia/a/a/f;->c:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, p2, v1, v2}, Lcom/millennialmedia/a/a/u;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/t;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V

    goto :goto_b
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/a/a/y;->b:Lcom/millennialmedia/a/a/l;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/millennialmedia/a/a/y;->b()Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->s()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_c

    :cond_19
    iget-object v1, p0, Lcom/millennialmedia/a/a/y;->b:Lcom/millennialmedia/a/a/l;

    iget-object v2, p0, Lcom/millennialmedia/a/a/y;->d:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/a/a/y;->c:Lcom/millennialmedia/a/a/f;

    iget-object v3, v3, Lcom/millennialmedia/a/a/f;->b:Lcom/millennialmedia/a/a/k;

    invoke-interface {v1, v0, v2, v3}, Lcom/millennialmedia/a/a/l;->b(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
