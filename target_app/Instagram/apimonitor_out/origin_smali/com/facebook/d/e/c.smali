.class public Lcom/facebook/d/e/c;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lcom/facebook/d/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/d/e/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/d/e/c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/d/e/c;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_13

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/facebook/d/e/a;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Couldn\'t instantiate object"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    const/4 v0, 0x0

    goto :goto_6

    :catch_13
    move-exception v0

    invoke-static {}, Lcom/facebook/d/e/a;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Couldn\'t instantiate object"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
