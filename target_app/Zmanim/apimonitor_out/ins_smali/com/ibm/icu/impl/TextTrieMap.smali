.class public Lcom/ibm/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source "TextTrieMap.java"
.field  ignoreCase:Z
.field private root:Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
.method public constructor <init>(Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;-><init>(Lcom/ibm/icu/impl/TextTrieMap;I)V
iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->root:Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
iput-boolean p1, p0, Lcom/ibm/icu/impl/TextTrieMap;->ignoreCase:Z
return-void
.end method
.method static synthetic access$100(Lcom/ibm/icu/impl/TextTrieMap;II)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->compare(II)Z
move-result v0
return v0
.end method
.method private compare(II)Z
.registers 6
const/4 v2, 0x1
if-ne p1, p2, :cond_5
move v0, v2
:goto_4
return v0
:cond_5
iget-boolean v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->ignoreCase:Z
if-eqz v0, :cond_21
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I
move-result v0
invoke-static {p2}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I
move-result v1
if-ne v0, v1, :cond_15
move v0, v2
goto :goto_4
:cond_15
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(I)I
move-result v0
invoke-static {p2}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(I)I
move-result v1
if-ne v0, v1, :cond_21
move v0, v2
goto :goto_4
:cond_21
const/4 v0, 0x0
goto :goto_4
.end method
.method private declared-synchronized find(Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;Ljava/lang/String;IILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
.registers 20
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->iterator()Ljava/util/Iterator;
move-result-object v13
if-eqz v13, :cond_15
sub-int v3, p4, p3
move-object/from16 v0, p5
move v1, v3
move-object v2, v13
invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_54
move-result v3
if-nez v3, :cond_15
:cond_13
:goto_13
monitor-exit p0
return-void
:cond_15
:try_start_15
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
move-result v3
move/from16 v0, p4
move v1, v3
if-ge v0, v1, :cond_13
invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->getChildNodes()Ljava/util/List;
move-result-object v11
if-eqz v11, :cond_13
move-object/from16 v0, p2
move/from16 v1, p4
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v9
invoke-static {v9}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v10
const/4 v12, 0x0
:goto_31
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v3
if-ge v12, v3, :cond_13
invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
invoke-virtual {v4}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->getCharacter()I
move-result v3
invoke-direct {p0, v9, v3}, Lcom/ibm/icu/impl/TextTrieMap;->compare(II)Z
move-result v3
if-eqz v3, :cond_57
add-int v7, p4, v10
move-object v3, p0
move-object/from16 v5, p2
move/from16 v6, p3
move-object/from16 v8, p5
invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/impl/TextTrieMap;->find(Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;Ljava/lang/String;IILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
:try_end_53
.catchall {:try_start_15 .. :try_end_53} :catchall_54
goto :goto_13
:catchall_54
move-exception v3
monitor-exit p0
throw v3
:cond_57
add-int/lit8 v12, v12, 0x1
goto :goto_31
.end method
.method public find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
.registers 10
iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap;->root:Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
move-object v0, p0
move-object v2, p1
move v3, p2
move v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/TextTrieMap;->find(Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;Ljava/lang/String;IILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
return-void
.end method
.method public find(Ljava/lang/String;Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
return-void
.end method
.method public get(Ljava/lang/String;)Ljava/util/Iterator;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/String;I)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;I)Ljava/util/Iterator;
.registers 5
new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Lcom/ibm/icu/impl/TextTrieMap$1;)V
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
invoke-virtual {v0}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;
move-result-object v1
return-object v1
.end method
.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
.registers 8
monitor-enter p0
:try_start_1
iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap;->root:Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
const/4 v1, 0x0
:goto_4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v1, v3, :cond_1e
invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->addChildNode(I)Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;
move-result-object v2
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
const/4 v4, 0x2
if-ne v3, v4, :cond_1b
add-int/lit8 v1, v1, 0x1
:cond_1b
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_1e
invoke-virtual {v2, p2}, Lcom/ibm/icu/impl/TextTrieMap$CharacterNode;->addObject(Ljava/lang/Object;)V
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_23
monitor-exit p0
return-void
:catchall_23
move-exception v3
monitor-exit p0
throw v3
.end method