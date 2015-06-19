.class public abstract Lcom/google/ads/mediation/MediationServerParameters;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 8
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v1, v0
:goto_10
if-ge v1, v4, :cond_29
aget-object v5, v3, v1
const-class v0, Lcom/google/ads/mediation/e;
invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/google/ads/mediation/e;
if-eqz v0, :cond_25
invoke-interface {v0}, Lcom/google/ads/mediation/e;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_25
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_29
invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_34
const-string v0, "No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
:cond_34
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_cc
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Field;
if-eqz v1, :cond_9c
:try_start_54
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_5b
.catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5b} :catch_5c
.catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5b} :catch_7c
goto :goto_3c
:catch_5c
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Server option \""
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\" could not be set: Illegal Access"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
goto :goto_3c
:catch_7c
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Server option \""
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\" could not be set: Bad Type"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
goto :goto_3c
:cond_9c
new-instance v4, Ljava/lang/StringBuilder;
const-string v1, "Unexpected server option: "
invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, " = \""
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
goto/16 :goto_3c
:cond_cc
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d9
:cond_d9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_12c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/reflect/Field;
const-class v1, Lcom/google/ads/mediation/e;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v1
check-cast v1, Lcom/google/ads/mediation/e;
invoke-interface {v1}, Lcom/google/ads/mediation/e;->b()Z
move-result v1
if-eqz v1, :cond_d9
new-instance v4, Ljava/lang/StringBuilder;
const-string v1, "Required server option missing: "
invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/google/ads/mediation/e;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v1
check-cast v1, Lcom/google/ads/mediation/e;
invoke-interface {v1}, Lcom/google/ads/mediation/e;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_11c
const-string v1, ", "
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_11c
const-class v1, Lcom/google/ads/mediation/e;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/google/ads/mediation/e;
invoke-interface {v0}, Lcom/google/ads/mediation/e;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_d9
:cond_12c
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_14b
new-instance v0, Lcom/google/ads/mediation/MediationServerParameters$MappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Required server option(s) missing: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters$MappingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14b
return-void
.end method