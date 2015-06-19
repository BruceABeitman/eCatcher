.class public final Lcom/millennialmedia/a/a/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/ab;


# instance fields
.field private final a:Lcom/millennialmedia/a/a/b/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/a/a/b/f;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/g;->a:Lcom/millennialmedia/a/a/b/f;

    iput-boolean p2, p0, Lcom/millennialmedia/a/a/b/a/g;->b:Z

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/aa;
    .registers 4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_b

    :cond_8
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->f:Lcom/millennialmedia/a/a/aa;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/b/a/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/a/g;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/g;->a(Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/aa;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v6

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/g;->a:Lcom/millennialmedia/a/a/b/f;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/a/a/b/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v7

    new-instance v0, Lcom/millennialmedia/a/a/b/a/h;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/millennialmedia/a/a/b/a/h;-><init>(Lcom/millennialmedia/a/a/b/a/g;Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/aa;Lcom/millennialmedia/a/a/b/q;)V

    goto :goto_13
.end method
