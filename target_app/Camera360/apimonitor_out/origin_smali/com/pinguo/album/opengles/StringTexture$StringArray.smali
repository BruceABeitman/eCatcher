.class public Lcom/pinguo/album/opengles/StringTexture$StringArray;
.super Ljava/lang/Object;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/opengles/StringTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringArray"
.end annotation


# instance fields
.field private paintColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private paintSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

    iput-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;II)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_7

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    instance-of v3, p1, Lcom/pinguo/album/opengles/StringTexture$StringArray;

    if-eqz v3, :cond_3c

    if-eqz p0, :cond_3c

    move-object v0, p1

    check-cast v0, Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getStrings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getStrings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintColors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintSizes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->getPaintSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3a
    move v1, v2

    goto :goto_6

    :cond_3c
    move v1, v2

    goto :goto_6
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPaintColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    return-object v0
.end method

.method public getPaintSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    return-object v0
.end method

.method public getStrings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    return-object v0
.end method

.method public hasPaintInfo()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->paintSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/opengles/StringTexture$StringArray;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method
