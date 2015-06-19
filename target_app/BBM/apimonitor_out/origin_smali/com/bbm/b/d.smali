.class public final Lcom/bbm/b/d;
.super Ljava/lang/Object;
.source "AdCriteria.java"

# interfaces
.implements Lcom/bbm/d/a/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bbm/d/a/a/d",
        "<",
        "Lcom/bbm/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/b/c;)Lcom/bbm/b/d;
    .registers 3

    invoke-static {p1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/bbm/b/d;
    .registers 3

    invoke-static {p1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    return-object p0
.end method

.method public final a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "type"

    iget-object v2, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v1, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "wasShared"

    iget-object v2, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object v0
.end method

.method public final synthetic a(Lcom/bbm/d/a/a;)Z
    .registers 4

    check-cast p1, Lcom/bbm/b/a;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;

    invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_17
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p1, Lcom/bbm/b/a;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_31
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/b/d;

    iget-object v2, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    iget-object v3, p1, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v2, v3}, Lcom/google/b/a/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    iget-object v3, p1, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v2, v3}, Lcom/google/b/a/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-nez v2, :cond_1f

    :goto_16
    add-int/2addr v0, v1

    return v0

    :cond_18
    iget-object v0, p0, Lcom/bbm/b/d;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_1f
    iget-object v1, p0, Lcom/bbm/b/d;->b:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->hashCode()I

    move-result v1

    goto :goto_16
.end method
