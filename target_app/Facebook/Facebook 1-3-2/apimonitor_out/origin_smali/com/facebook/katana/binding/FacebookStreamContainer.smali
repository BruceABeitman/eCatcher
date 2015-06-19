.class public Lcom/facebook/katana/binding/FacebookStreamContainer;
.super Ljava/lang/Object;
.source "FacebookStreamContainer.java"


# static fields
.field public static final PAGE_SIZE:I = 0x14


# instance fields
.field private mComplete:Z

.field private mFbInfo:Lcom/facebook/katana/service/api/FacebookInfo;

.field private final mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/util/List;JJII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;JJII)V"
        }
    .end annotation

    const/4 v3, 0x2

    if-ne p7, v3, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p6, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mComplete:Z

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2d

    if-nez p7, :cond_3e

    iget-object v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mComplete:Z

    :cond_20
    iget-object v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    sget-object v4, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_3e
    iget-object v3, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_44
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mComplete:Z

    return-void
.end method

.method public deletePost(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public getLatestInfo()Lcom/facebook/katana/service/api/FacebookInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mFbInfo:Lcom/facebook/katana/service/api/FacebookInfo;

    return-object v0
.end method

.method public getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v0

    goto :goto_d
.end method

.method public getPosts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method public insertFirst(Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mPosts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public isComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mComplete:Z

    return v0
.end method

.method public setLatestInfo(Lcom/facebook/katana/service/api/FacebookInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->mFbInfo:Lcom/facebook/katana/service/api/FacebookInfo;

    return-void
.end method
