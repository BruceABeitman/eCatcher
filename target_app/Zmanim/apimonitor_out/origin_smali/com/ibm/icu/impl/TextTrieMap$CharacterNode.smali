.class Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharacterNode"
.end annotation


# instance fields
.field character:I

.field children:Ljava/util/List;

.field objlist:Ljava/util/List;

.field final synthetic this$0:Lcom/ibm/icu/impl/TextTrieMap;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;I)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->character:I

    return-void
.end method


# virtual methods
.method public addChildNode(I)Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
    .registers 8

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    if-nez v4, :cond_19

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    new-instance v2, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {v2, v4, p1}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;-><init>(Lcom/ibm/icu/impl/TextTrieMap;I)V

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    :goto_18
    return-object v4

    :cond_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1b
    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_38

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->getCharacter()I

    move-result v5

    #calls: Lcom/ibm/icu/impl/TextTrieMap;->compare(II)Z
    invoke-static {v4, p1, v5}, Lcom/ibm/icu/impl/TextTrieMap;->access$100(Lcom/ibm/icu/impl/TextTrieMap;II)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object v3, v0

    :cond_38
    if-nez v3, :cond_46

    new-instance v3, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {v3, v4, p1}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;-><init>(Lcom/ibm/icu/impl/TextTrieMap;I)V

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    move-object v4, v3

    goto :goto_18

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public addObject(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->objlist:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->objlist:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->objlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCharacter()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->character:I

    return v0
.end method

.method public getChildNodes()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->objlist:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->objlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5
.end method
