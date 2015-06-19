.class final Lcom/facebook/i/q;
.super Ljava/util/LinkedHashMap;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/i/p;


# direct methods
.method constructor <init>(Lcom/facebook/i/p;I)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/i/q;->a:Lcom/facebook/i/p;

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/i/q;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/i/q;->a:Lcom/facebook/i/p;

    invoke-static {v1}, Lcom/facebook/i/p;->a(Lcom/facebook/i/p;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
