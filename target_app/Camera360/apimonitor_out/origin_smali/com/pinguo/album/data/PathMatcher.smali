.class public Lcom/pinguo/album/data/PathMatcher;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# instance fields
.field private mPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/PathMatcher;->mPathMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/data/PathMatcher;->mPathMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public match(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/data/PathMatcher;->mPathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
