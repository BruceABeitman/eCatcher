.class public Ltwitter4j/internal/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"
.field private myArrayList:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 6
invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z
move-result v2
if-eqz v2, :cond_22
invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v1
const/4 v0, 0x0
:goto_12
if-ge v0, v1, :cond_2a
invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_22
new-instance v2, Ltwitter4j/internal/org/json/JSONException;
const-string v3, "JSONArray initial value should be a string or collection or array."
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v2
:cond_2a
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;
invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Collection;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
if-eqz p1, :cond_24
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_24
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
iget-object v2, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-static {v0}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_24
return-void
.end method
.method public constructor <init>(Ltwitter4j/internal/org/json/JSONTokener;)V
.registers 5
const/16 v2, 0x5d
invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C
move-result v0
const/16 v1, 0x5b
if-eq v0, v1, :cond_14
const-string v0, "A JSONArray text must start with \'[\'"
invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;
move-result-object v0
throw v0
:cond_14
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C
move-result v0
if-eq v0, v2, :cond_50
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V
:goto_1d
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C
move-result v0
const/16 v1, 0x2c
if-ne v0, v1, :cond_3d
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_2f
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C
move-result v0
sparse-switch v0, :sswitch_data_56
const-string v0, "Expected a \',\' or \']\'"
invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;
move-result-object v0
throw v0
:cond_3d
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2f
:sswitch_4a
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C
move-result v0
if-ne v0, v2, :cond_51
:sswitch_50
:cond_50
return-void
:cond_51
invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V
goto :goto_1d
nop
:sswitch_data_56
.sparse-switch
0x2c -> :sswitch_4a
0x3b -> :sswitch_4a
0x5d -> :sswitch_50
.end sparse-switch
.end method
.method public get(I)Ljava/lang/Object;
.registers 6
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_25
new-instance v1, Ltwitter4j/internal/org/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "JSONArray["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "] not found."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
:cond_25
return-object v0
.end method
.method public getBoolean(I)Z
.registers 6
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1b
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_1d
move-object v1, v0
check-cast v1, Ljava/lang/String;
const-string v2, "false"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1d
:cond_1b
const/4 v1, 0x0
:goto_1c
return v1
:cond_1d
sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_33
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_35
check-cast v0, Ljava/lang/String;
const-string v1, "true"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
:cond_33
const/4 v1, 0x1
goto :goto_1c
:cond_35
new-instance v1, Ltwitter4j/internal/org/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "JSONArray["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "] is not a boolean."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getDouble(I)D
.registers 7
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v1
:try_start_4
instance-of v2, v1, Ljava/lang/Number;
if-eqz v2, :cond_f
check-cast v1, Ljava/lang/Number;
invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D
move-result-wide v2
:goto_e
return-wide v2
:cond_f
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_14
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16
move-result-wide v2
goto :goto_e
:catch_16
move-exception v0
new-instance v2, Ltwitter4j/internal/org/json/JSONException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "JSONArray["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "] is not a number."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public getInt(I)I
.registers 7
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v1
:try_start_4
instance-of v2, v1, Ljava/lang/Number;
if-eqz v2, :cond_f
check-cast v1, Ljava/lang/Number;
invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
move-result v2
:goto_e
return v2
:cond_f
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_14
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16
move-result v2
goto :goto_e
:catch_16
move-exception v0
new-instance v2, Ltwitter4j/internal/org/json/JSONException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "JSONArray["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "] is not a number."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;
.registers 6
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;
if-eqz v1, :cond_b
check-cast v0, Ltwitter4j/internal/org/json/JSONArray;
return-object v0
:cond_b
new-instance v1, Ltwitter4j/internal/org/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "JSONArray["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "] is not a JSONArray."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;
.registers 6
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;
if-eqz v1, :cond_b
check-cast v0, Ltwitter4j/internal/org/json/JSONObject;
return-object v0
:cond_b
new-instance v1, Ltwitter4j/internal/org/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "JSONArray["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "] is not a JSONObject."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getLong(I)J
.registers 7
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v1
:try_start_4
instance-of v2, v1, Ljava/lang/Number;
if-eqz v2, :cond_f
check-cast v1, Ljava/lang/Number;
invoke-virtual {v1}, Ljava/lang/Number;->longValue()J
move-result-wide v2
:goto_e
return-wide v2
:cond_f
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_14
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16
move-result-wide v2
goto :goto_e
:catch_16
move-exception v0
new-instance v2, Ltwitter4j/internal/org/json/JSONException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "JSONArray["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "] is not a number."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public getString(I)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;
if-ne v0, v1, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
.end method
.method public isNull(I)Z
.registers 4
sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;
invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public join(Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_a
if-ge v0, v1, :cond_21
if-lez v0, :cond_11
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_11
iget-object v3, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_21
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public length()I
.registers 2
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public opt(I)Ljava/lang/Object;
.registers 3
if-ltz p1, :cond_8
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v0
if-lt p1, v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method
.method public put(I)Ltwitter4j/internal/org/json/JSONArray;
.registers 3
new-instance v0, Ljava/lang/Integer;
invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(ID)Ltwitter4j/internal/org/json/JSONArray;
.registers 5
new-instance v0, Ljava/lang/Double;
invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(II)Ltwitter4j/internal/org/json/JSONArray;
.registers 4
new-instance v0, Ljava/lang/Integer;
invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(IJ)Ltwitter4j/internal/org/json/JSONArray;
.registers 5
new-instance v0, Ljava/lang/Long;
invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
.registers 6
invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V
if-gez p1, :cond_24
new-instance v0, Ltwitter4j/internal/org/json/JSONException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "JSONArray["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "] not found."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v0
if-ge p1, v0, :cond_30
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_2f
return-object p0
:goto_30
:cond_30
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v0
if-eq p1, v0, :cond_3c
sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
goto :goto_30
:cond_3c
invoke-virtual {p0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
goto :goto_2f
.end method
.method public put(ILjava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
.registers 4
new-instance v0, Ltwitter4j/internal/org/json/JSONArray;
invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(ILjava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
.registers 4
new-instance v0, Ltwitter4j/internal/org/json/JSONObject;
invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(IZ)Ltwitter4j/internal/org/json/JSONArray;
.registers 4
if-eqz p2, :cond_8
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_4
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
:cond_8
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_4
.end method
.method public put(J)Ltwitter4j/internal/org/json/JSONArray;
.registers 4
new-instance v0, Ljava/lang/Long;
invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
.registers 3
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public put(Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
.registers 3
new-instance v0, Ltwitter4j/internal/org/json/JSONArray;
invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
.registers 3
new-instance v0, Ltwitter4j/internal/org/json/JSONObject;
invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
.end method
.method public put(Z)Ltwitter4j/internal/org/json/JSONArray;
.registers 3
if-eqz p1, :cond_8
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_4
invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
return-object p0
:cond_8
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_4
.end method
.method public toString()Ljava/lang/String;
.registers 4
:try_start_0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/16 v2, 0x5b
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x5d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20
move-result-object v1
:goto_1f
return-object v1
:catch_20
move-exception v0
const/4 v1, 0x0
goto :goto_1f
.end method
.method public toString(I)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  toString(II)Ljava/lang/String;
.registers 11
const/16 v7, 0x20
const/16 v6, 0xa
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v2
if-nez v2, :cond_d
const-string v5, "[]"
:goto_c
return-object v5
:cond_d
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "["
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v5, 0x1
if-ne v2, v5, :cond_2f
iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-static {v5, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_25
const/16 v5, 0x5d
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_c
:cond_2f
add-int v3, p2, p1
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
:goto_35
if-ge v0, v2, :cond_57
if-lez v0, :cond_3e
const-string v5, ",\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3e
const/4 v1, 0x0
:goto_3f
if-ge v1, v3, :cond_47
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_47
iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-static {v5, p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_57
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
:goto_5b
if-ge v0, p2, :cond_25
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_5b
.end method
.method public write(Ljava/io/Writer;)Ljava/io/Writer;
.registers 8
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I
move-result v3
const/16 v5, 0x5b
invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
const/4 v2, 0x0
:goto_b
if-ge v2, v3, :cond_40
if-eqz v0, :cond_14
const/16 v5, 0x2c
invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
:cond_14
iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
instance-of v5, v4, Ltwitter4j/internal/org/json/JSONObject;
if-eqz v5, :cond_27
check-cast v4, Ltwitter4j/internal/org/json/JSONObject;
invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;
:goto_23
const/4 v0, 0x1
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_27
instance-of v5, v4, Ltwitter4j/internal/org/json/JSONArray;
if-eqz v5, :cond_38
check-cast v4, Ltwitter4j/internal/org/json/JSONArray;
invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
:try_end_30
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_31
goto :goto_23
:catch_31
move-exception v1
new-instance v5, Ltwitter4j/internal/org/json/JSONException;
invoke-direct {v5, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V
throw v5
:try_start_38
:cond_38
invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto :goto_23
:cond_40
const/16 v5, 0x5d
invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
:try_end_45
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_45} :catch_31
return-object p1
.end method