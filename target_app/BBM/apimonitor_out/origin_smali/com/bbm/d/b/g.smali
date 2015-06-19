.class final Lcom/bbm/d/b/g;
.super Lcom/bbm/j/a;
.source "ComputedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/util/List",
        "<TOutput;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/b/f;


# direct methods
.method constructor <init>(Lcom/bbm/d/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/b/g;->a:Lcom/bbm/d/b/f;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/b/g;->a:Lcom/bbm/d/b/f;

    invoke-virtual {v0}, Lcom/bbm/d/b/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
