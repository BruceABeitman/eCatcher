.class public final Lcom/millennialmedia/a/a/b/a/a;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# static fields
.field public static final a:Lcom/millennialmedia/a/a/ab;


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Lcom/millennialmedia/a/a/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/millennialmedia/a/a/b/a/a$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/a$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/a;->a:Lcom/millennialmedia/a/a/ab;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    new-instance v0, Lcom/millennialmedia/a/a/b/a/o;

    invoke-direct {v0, p1, p2, p3}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/aa;

    iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 7

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_e
    if-ge v0, v1, :cond_1c

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v3, p1, v2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;

    goto :goto_5
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    :goto_15
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->b:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_43
    move-object v0, v1

    goto :goto_c
.end method
