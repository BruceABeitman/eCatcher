.class public Lcom/facebook/katana/service/api/FacebookPost$Comments;
.super Ljava/lang/Object;
.source "FacebookPost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comments"
.end annotation


# instance fields
.field private final mCanPost:Z

.field private final mCanRemove:Z

.field private final mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    iput-boolean v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanRemove:Z

    iput-boolean v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanPost:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v9, "can_remove"

    const-string v8, "can_post"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    :goto_16
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_21

    iput-boolean v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanRemove:Z

    iput-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanPost:Z

    iput v3, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    return-void

    :cond_21
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_41

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "can_remove"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v1, 0x1

    :cond_32
    :goto_32
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_16

    :cond_37
    const-string v6, "can_post"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const/4 v0, 0x1

    goto :goto_32

    :cond_41
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_5d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "can_remove"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v1, 0x0

    goto :goto_32

    :cond_53
    const-string v6, "can_post"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const/4 v0, 0x0

    goto :goto_32

    :cond_5d
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_72

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "count"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v3

    goto :goto_32

    :cond_72
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_9b

    if-eqz v2, :cond_32

    const-string v6, "comment_list"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    :goto_80
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_32

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_92

    iget-object v6, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    new-instance v7, Lcom/facebook/katana/service/api/FacebookPost$Comment;

    invoke-direct {v7, p1}, Lcom/facebook/katana/service/api/FacebookPost$Comment;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_80

    :cond_97
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto :goto_32

    :cond_9b
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_a3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto :goto_32

    :cond_a3
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_32
.end method


# virtual methods
.method public addComment(Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    return-void
.end method

.method public canPost()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanPost:Z

    return v0
.end method

.method public canRemove()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mCanRemove:Z

    return v0
.end method

.method public deleteComment(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost$Comment;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    goto :goto_c
.end method

.method public getComments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost$Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalCount()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    return v0
.end method

.method public updateComments(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost$Comment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comments;->mTotalCount:I

    return-void
.end method
