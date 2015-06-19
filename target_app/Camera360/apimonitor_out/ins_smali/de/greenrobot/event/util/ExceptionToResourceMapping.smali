.class public Lde/greenrobot/event/util/ExceptionToResourceMapping;
.super Ljava/lang/Object;
.source "ExceptionToResourceMapping.java"
.field public final throwableToMsgIdMap:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;
return-void
.end method
.method public addMapping(Ljava/lang/Class;I)Lde/greenrobot/event/util/ExceptionToResourceMapping;
.registers 5
iget-object v0, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;
.registers 8
move-object v2, p1
const/16 v0, 0x14
:cond_3
invoke-virtual {p0, v2}, Lde/greenrobot/event/util/ExceptionToResourceMapping;->mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;
move-result-object v1
if-eqz v1, :cond_a
:goto_9
return-object v1
:cond_a
invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v2
add-int/lit8 v0, v0, -0x1
if-lez v0, :cond_16
if-eq v2, p1, :cond_16
if-nez v2, :cond_3
:cond_16
sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "No specific message ressource ID found for "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v1, 0x0
goto :goto_9
.end method
.method protected mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;
.registers 10
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
iget-object v6, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;
invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Integer;
if-nez v4, :cond_1f
const/4 v1, 0x0
iget-object v6, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_19
:cond_19
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_20
:cond_1f
return-object v4
:cond_20
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map$Entry;
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v7
if-eqz v7, :cond_19
if-eqz v1, :cond_3a
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v7
if-eqz v7, :cond_19
:cond_3a
move-object v1, v0
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Integer;
goto :goto_19
.end method