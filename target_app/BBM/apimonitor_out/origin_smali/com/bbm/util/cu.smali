.class public final Lcom/bbm/util/cu;
.super Ljava/lang/Object;
.source "ObservableHashMap.java"

# interfaces
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bbm/j/r",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bbm/j/i;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/i;

    invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/cu;->a:Lcom/bbm/j/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/util/cu;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bbm/util/cu;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/util/cu;->c:Z

    iget-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    goto :goto_6
.end method

.method public final a(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/cu;->a:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/cu;->a:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final synthetic e()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/cu;->c:Z

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    return-object v0
.end method
