.class final Lcom/facebook/h/d;
.super Ljava/util/AbstractList;
.source "GraphObject.java"
.implements Lcom/facebook/h/g;
.field private final a:Lorg/json/JSONArray;
.field private final b:Ljava/lang/Class;
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V
const-string v0, "state"
invoke-static {p1, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "itemType"
invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
iput-object p2, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;
return-void
.end method
.method private a(I)V
.registers 3
if-ltz p1, :cond_a
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt p1, v0, :cond_10
:cond_a
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_10
return-void
.end method
.method private a(ILjava/lang/Object;)V
.registers 5
invoke-static {p2}, Lcom/facebook/h/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:try_start_4
iget-object v1, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v1, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
:try_end_9
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a()Lorg/json/JSONArray;
.registers 2
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
return-object v0
.end method
.method public final add(ILjava/lang/Object;)V
.registers 5
if-gez p1, :cond_8
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_8
invoke-virtual {p0}, Lcom/facebook/h/d;->size()I
move-result v0
if-ge p1, v0, :cond_16
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Only adding items at the end of the list is supported."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-direct {p0, p1, p2}, Lcom/facebook/h/d;->a(ILjava/lang/Object;)V
return-void
.end method
.method public final clear()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_10
const/4 v0, 0x0
goto :goto_3
:cond_10
check-cast p1, Lcom/facebook/h/d;
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
iget-object v1, p1, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public final get(I)Ljava/lang/Object;
.registers 5
invoke-direct {p0, p1}, Lcom/facebook/h/d;->a(I)V
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/facebook/h/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I
move-result v0
return v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final removeAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final retainAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1}, Lcom/facebook/h/d;->a(I)V
invoke-virtual {p0, p1}, Lcom/facebook/h/d;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2}, Lcom/facebook/h/d;->a(ILjava/lang/Object;)V
return-object v0
.end method
.method public final size()I
.registers 2
iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const-string v0, "GraphObjectList{itemType=%s, state=%s}"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method