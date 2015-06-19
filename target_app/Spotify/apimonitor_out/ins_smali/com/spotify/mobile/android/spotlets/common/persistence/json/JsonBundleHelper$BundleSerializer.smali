.class  Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper$BundleSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
return-void
.end method
.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 9
check-cast p1, Landroid/os/Bundle;
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_3e
instance-of v4, v1, Ljava/io/Serializable;
if-nez v4, :cond_3e
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "value for key \'"
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' is not Serializable"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_f
:cond_3e
check-cast v1, Ljava/io/Serializable;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;->a(Ljava/io/Serializable;)Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
move-result-object v1
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_48
invoke-virtual {p3, v2, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method