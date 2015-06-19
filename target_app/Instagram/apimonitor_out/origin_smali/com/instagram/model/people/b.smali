.class public final Lcom/instagram/model/people/b;
.super Ljava/util/ArrayList;
.source "PeopleTagCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/model/people/PeopleTag;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/model/people/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static a()V
    .registers 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static b()Lcom/instagram/model/people/PeopleTag;
    .registers 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/instagram/model/people/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    return-void
.end method

.method public final a(Lcom/instagram/model/people/PeopleTag;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    invoke-interface {v1, p1}, Lcom/instagram/model/people/c;->b(Lcom/instagram/model/people/PeopleTag;)V

    :cond_d
    return v0
.end method

.method public final a(Lcom/instagram/user/c/a;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/model/people/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/instagram/model/people/b;->a()V

    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {p0, p1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/PeopleTag;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/instagram/user/c/a;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/model/people/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    invoke-interface {v1, v0}, Lcom/instagram/model/people/c;->a(Lcom/instagram/model/people/PeopleTag;)V

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public final clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/instagram/model/people/b;->b()Lcom/instagram/model/people/PeopleTag;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    invoke-interface {v1, p1}, Lcom/instagram/model/people/c;->a(Lcom/instagram/model/people/PeopleTag;)V

    :cond_f
    return v0
.end method

.method protected final removeRange(II)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
