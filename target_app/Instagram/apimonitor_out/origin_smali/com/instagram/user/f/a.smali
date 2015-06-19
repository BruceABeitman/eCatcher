.class public final Lcom/instagram/user/f/a;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "UserStoreImpl.java"

# interfaces
.implements Lcom/instagram/user/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/instagram/user/c/a;",
        ">;",
        "Lcom/instagram/user/c/h;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    :cond_1b
    return-void
.end method

.method private b()Z
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/user/f/a;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/user/f/a;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/instagram/user/f/a;->b()Z

    move-result v2

    if-nez v2, :cond_19

    :goto_18
    return-object v0

    :cond_19
    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    :goto_22
    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->c(Lcom/instagram/user/c/a;)V

    :cond_2b
    move-object v0, p1

    goto :goto_18

    :cond_2d
    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/a;)V

    move-object p1, v0

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/user/c/a;
    .registers 3

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .registers 6

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/instagram/user/f/a;->b()Z

    :cond_13
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v0
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/user/f/a;->b:Z

    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/user/f/a;->a()V

    invoke-virtual {p0, p1}, Lcom/instagram/user/f/a;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    :cond_18
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/user/c/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/instagram/user/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method
