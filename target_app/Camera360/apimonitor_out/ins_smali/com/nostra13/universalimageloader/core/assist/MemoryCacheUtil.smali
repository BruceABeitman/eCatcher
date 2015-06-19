.class public final Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;
.super Ljava/lang/Object;
.source "MemoryCacheUtil.java"
.field private static final URI_AND_SIZE_SEPARATOR:Ljava/lang/String; = "_"
.field private static final WIDTH_AND_HEIGHT_SEPARATOR:Ljava/lang/String; = "x"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createFuzzyKeyComparator()Ljava/util/Comparator;
.registers 1
new-instance v0, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1;-><init>()V
return-object v0
.end method
.method public static findCacheKeysForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Ljava/util/List;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_23
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_23
return-object v2
.end method
.method public static findCachedBitmapsForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Ljava/util/List;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_27
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d
invoke-interface {p1, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_27
return-object v2
.end method
.method public static generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)V
.registers 7
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
move-result-object v4
invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_23
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_d
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_23
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_27
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_37
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {p1, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V
goto :goto_27
:cond_37
return-void
.end method