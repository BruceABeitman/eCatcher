.class public final Lcom/bbm/d/a/b/a;
.super Ljava/lang/Object;
.source "LiveMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bbm/d/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/d/a/b/c",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/bbm/d/a/c;

.field final e:Lcom/bbm/d/a/d;

.field final f:Lcom/bbm/f/a;

.field g:Z

.field final h:Ljava/lang/String;

.field i:Z

.field final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field k:I

.field protected l:Ljava/lang/Runnable;

.field m:Z

.field n:I

.field private final o:Lcom/bbm/util/dc;

.field private final p:Lcom/bbm/d/a/i;


# direct methods
.method public constructor <init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Lcom/bbm/util/dc;Lcom/bbm/d/a/i;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/a/c;",
            "Lcom/bbm/d/a/d;",
            "Lcom/bbm/f/a;",
            "Lcom/bbm/util/dc;",
            "Lcom/bbm/d/a/i;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/b/c/q;

    invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V

    invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/a/b/a;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/bbm/d/a/b/a;->g:Z

    iput-boolean v1, p0, Lcom/bbm/d/a/b/a;->i:Z

    iput v1, p0, Lcom/bbm/d/a/b/a;->k:I

    new-instance v0, Lcom/bbm/d/a/b/b;

    invoke-direct {v0, p0}, Lcom/bbm/d/a/b/b;-><init>(Lcom/bbm/d/a/b/a;)V

    iput-object v0, p0, Lcom/bbm/d/a/b/a;->l:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    iput-object p1, p0, Lcom/bbm/d/a/b/a;->d:Lcom/bbm/d/a/c;

    iput-object p2, p0, Lcom/bbm/d/a/b/a;->e:Lcom/bbm/d/a/d;

    iput-object p3, p0, Lcom/bbm/d/a/b/a;->f:Lcom/bbm/f/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/a/b/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/d/a/b/a;->o:Lcom/bbm/util/dc;

    iput-object p5, p0, Lcom/bbm/d/a/b/a;->p:Lcom/bbm/d/a/i;

    return-void
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/d/a/b/a;->m:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/d/a/b/a;->m:Z

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->o:Lcom/bbm/util/dc;

    iget-object v1, p0, Lcom/bbm/d/a/b/a;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/bbm/d/a/b/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bbm/d/a/b/a;->k:I

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bbm/d/a/b/a;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/d/a/b/c",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/c;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/bbm/d/a/b/c;

    sget-object v1, Lcom/bbm/d/a/b/d;->b:Lcom/bbm/d/a/b/d;

    iget-object v2, p0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/bbm/d/a/b/c;-><init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;)V

    :goto_1b
    iget-object v1, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbm/d/a/b/a;->p:Lcom/bbm/d/a/i;

    iget-object v2, p0, Lcom/bbm/d/a/b/a;->e:Lcom/bbm/d/a/d;

    invoke-interface {v1, v0}, Lcom/bbm/d/a/i;->a(Ljava/lang/Object;)V

    :cond_27
    return-object v0

    :cond_28
    new-instance v0, Lcom/bbm/d/a/b/c;

    sget-object v1, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    iget-object v2, p0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/bbm/d/a/b/c;-><init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/bbm/d/a/b/a;->b(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public final a()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/a/b/a;->g:Z

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/b/c;

    if-eqz v1, :cond_9

    sget-object v3, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V

    invoke-direct {p0, v0}, Lcom/bbm/d/a/b/a;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_28
    iget-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/c;

    if-eqz v0, :cond_37

    sget-object v3, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    invoke-virtual {v0, v3}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V

    invoke-direct {p0, v1}, Lcom/bbm/d/a/b/a;->b(Ljava/lang/String;)V

    goto :goto_37

    :cond_57
    invoke-direct {p0}, Lcom/bbm/d/a/b/a;->b()V

    return-void
.end method

.method final a(Lorg/json/JSONArray;)V
    .registers 8

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_4f

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a;

    invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V

    invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/b/c;

    if-nez v1, :cond_43

    new-instance v1, Lcom/bbm/d/a/b/c;

    sget-object v4, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    iget-object v5, p0, Lcom/bbm/d/a/b/a;->j:Ljava/lang/Class;

    invoke-direct {v1, v4, v5, v0}, Lcom/bbm/d/a/b/c;-><init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;Lcom/bbm/d/a/a;)V

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_38
    iget-object v0, p0, Lcom/bbm/d/a/b/a;->p:Lcom/bbm/d/a/i;

    iget-object v3, p0, Lcom/bbm/d/a/b/a;->e:Lcom/bbm/d/a/d;

    invoke-interface {v0, v1}, Lcom/bbm/d/a/i;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_43
    sget-object v3, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    iget-object v4, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    if-eq v3, v4, :cond_4b

    iput-object v3, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    :cond_4b
    invoke-virtual {v1, v0}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/a;)V

    goto :goto_38

    :cond_4f
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v5, 0x0

    const-string v0, "elements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/d/a/b/a;->a(Lorg/json/JSONArray;)V

    const-string v0, "last"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/bbm/d/a/b/a;->g:Z

    if-eqz v0, :cond_77

    iput-boolean v5, p0, Lcom/bbm/d/a/b/a;->g:Z

    iget-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/b/c;

    if-eqz v1, :cond_1e

    iget-object v3, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    sget-object v4, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;

    if-eq v3, v4, :cond_40

    iget-object v3, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    sget-object v4, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    if-ne v3, v4, :cond_4d

    :cond_40
    const-string v0, "Something bad happened here"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V

    goto :goto_1e

    :cond_4d
    iget-object v3, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    sget-object v4, Lcom/bbm/d/a/b/d;->b:Lcom/bbm/d/a/b/d;

    if-ne v3, v4, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested item does not exist, id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V

    goto :goto_1e

    :cond_6d
    iget-object v0, p0, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-boolean v5, p0, Lcom/bbm/d/a/b/a;->i:Z

    invoke-direct {p0}, Lcom/bbm/d/a/b/a;->b()V

    :cond_77
    return-void
.end method
