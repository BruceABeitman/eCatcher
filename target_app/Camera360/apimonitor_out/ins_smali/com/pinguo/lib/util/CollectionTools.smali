.class public Lcom/pinguo/lib/util/CollectionTools;
.super Ljava/lang/Object;
.source "CollectionTools.java"
.field public static final NOT_FINDED:I = -0x1
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-static {p0, p1}, Lcom/pinguo/lib/util/CollectionTools;->search([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-le v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public static remove(ILorg/json/JSONArray;)Lorg/json/JSONArray;
.registers 6
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v3
if-lt p0, v3, :cond_c
new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v3, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V
throw v3
:cond_c
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
const/4 v1, 0x0
:goto_12
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v3
if-lt v1, v3, :cond_19
return-object v2
:cond_19
if-eq p0, v1, :cond_22
:try_start_1b
invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:goto_22
:cond_22
:try_end_22
.catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_25
add-int/lit8 v1, v1, 0x1
goto :goto_12
:catch_25
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_22
.end method
.method public static search([Ljava/lang/String;Ljava/lang/String;)I
.registers 5
const/4 v1, -0x1
if-eqz p1, :cond_5
if-nez p0, :cond_7
:cond_5
move v0, v1
:goto_6
:cond_6
return v0
:cond_7
const/4 v0, 0x0
:goto_8
array-length v2, p0
if-lt v0, v2, :cond_d
move v0, v1
goto :goto_6
:cond_d
aget-object v2, p0, v0
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method
.method public static searchAuto([Ljava/lang/String;Ljava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/pinguo/lib/util/CollectionTools;->search([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_a
invoke-static {p0, p1}, Lcom/pinguo/lib/util/CollectionTools;->searchNumber([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
:cond_a
return v0
.end method
.method public static searchNumber([Ljava/lang/String;Ljava/lang/String;)I
.registers 7
const/4 v3, -0x1
if-eqz p1, :cond_5
if-nez p0, :cond_7
:cond_5
move v2, v3
:goto_6
:cond_6
return v2
:try_start_7
:cond_7
invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
const/4 v2, 0x0
:goto_c
array-length v4, p0
if-lt v2, v4, :cond_11
:goto_f
move v2, v3
goto :goto_6
:cond_11
aget-object v4, p0, v2
invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_16} :catch_1e
move-result v4
cmpl-float v4, v1, v4
if-eqz v4, :cond_6
add-int/lit8 v2, v2, 0x1
goto :goto_c
:catch_1e
move-exception v0
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
goto :goto_f
.end method