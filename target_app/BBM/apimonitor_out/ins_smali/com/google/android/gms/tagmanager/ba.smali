.class  Lcom/google/android/gms/tagmanager/ba;
.super Ljava/lang/Object;
.method public static br(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cr$c;
.registers 7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v1
invoke-static {}, Lcom/google/android/gms/tagmanager/cr$c;->jI()Lcom/google/android/gms/tagmanager/cr$d;
move-result-object v2
const/4 v0, 0x0
:goto_e
iget-object v3, v1, Lcom/google/android/gms/internal/d$a;->ga:[Lcom/google/android/gms/internal/d$a;
array-length v3, v3
if-ge v0, v3, :cond_4d
invoke-static {}, Lcom/google/android/gms/tagmanager/cr$a;->jE()Lcom/google/android/gms/tagmanager/cr$b;
move-result-object v3
sget-object v4, Lcom/google/android/gms/internal/b;->cT:Lcom/google/android/gms/internal/b;
invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v4
iget-object v5, v1, Lcom/google/android/gms/internal/d$a;->ga:[Lcom/google/android/gms/internal/d$a;
aget-object v5, v5, v0
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cr$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cr$b;
move-result-object v3
sget-object v4, Lcom/google/android/gms/internal/b;->cI:Lcom/google/android/gms/internal/b;
invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/google/android/gms/tagmanager/m;->iB()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/google/android/gms/tagmanager/di;->bI(Ljava/lang/String;)Lcom/google/android/gms/internal/d$a;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cr$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cr$b;
move-result-object v3
invoke-static {}, Lcom/google/android/gms/tagmanager/m;->iC()Ljava/lang/String;
move-result-object v4
iget-object v5, v1, Lcom/google/android/gms/internal/d$a;->gb:[Lcom/google/android/gms/internal/d$a;
aget-object v5, v5, v0
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cr$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cr$b;
move-result-object v3
invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cr$b;->jH()Lcom/google/android/gms/tagmanager/cr$a;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/cr$d;->a(Lcom/google/android/gms/tagmanager/cr$a;)Lcom/google/android/gms/tagmanager/cr$d;
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_4d
invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/cr$d;->jL()Lcom/google/android/gms/tagmanager/cr$c;
move-result-object v0
return-object v0
.end method
.method private static k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
return-object v0
.end method
.method static l(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
instance-of v0, p0, Lorg/json/JSONArray;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "JSONArrays are not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "JSON nulls are not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
instance-of v0, p0, Lorg/json/JSONObject;
if-eqz v0, :cond_44
check-cast p0, Lorg/json/JSONObject;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_2b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2b
:cond_43
move-object p0, v1
:cond_44
return-object p0
.end method