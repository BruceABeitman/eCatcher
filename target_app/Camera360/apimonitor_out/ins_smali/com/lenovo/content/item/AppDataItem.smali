.class public Lcom/lenovo/content/item/AppDataItem;
.super Lcom/lenovo/content/item/AppItem;
.source "AppDataItem.java"
.field public static final APP_MASK_APP_ENTITY:I = 0x1
.field public static final APP_MASK_SDCARD_DATA:I = 0x4
.field public static final APP_MASK_SYSTEM_DATA:I = 0x2
.field private f:I
.field private g:Z
.field private h:J
.field private i:Ljava/lang/String;
.field private j:Z
.field private k:J
.field private l:Ljava/util/List;
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
const/4 v0, 0x1
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/item/AppItem;)V
.registers 3
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lcom/lenovo/content/item/AppItem;)V
const/4 v0, 0x1
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/item/AppItem;IJLjava/lang/String;JLjava/util/List;)V
.registers 9
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lcom/lenovo/content/item/AppItem;)V
iput p2, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
iput-wide p3, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
iput-object p5, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
iput-wide p6, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
iput-object p8, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/item/AppItem;JLjava/lang/String;)V
.registers 6
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lcom/lenovo/content/item/AppItem;)V
const/4 v0, 0x3
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
iput-wide p2, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
iput-object p4, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/item/AppItem;JLjava/util/List;)V
.registers 6
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lcom/lenovo/content/item/AppItem;)V
const/4 v0, 0x5
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
iput-wide p2, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
iput-object p4, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/content/item/AppItem;-><init>(Lorg/json/JSONObject;)V
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 6
invoke-super {p0, p1}, Lcom/lenovo/content/item/AppItem;->a(Lorg/json/JSONObject;)V
const-string/jumbo v1, "appmask"
iget v2, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {p0}, Lcom/lenovo/content/item/AppDataItem;->hasSystemData()Z
move-result v1
if-eqz v1, :cond_21
const-string/jumbo v1, "systemdatasize"
iget-wide v2, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string/jumbo v1, "systemdatapath"
iget-object v2, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_21
invoke-virtual {p0}, Lcom/lenovo/content/item/AppDataItem;->hasSDCardData()Z
move-result v1
if-eqz v1, :cond_3c
const-string/jumbo v1, "sdcarddatasize"
iget-wide v2, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONArray;
iget-object v1, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
const-string/jumbo v1, "sdcarddatapaths"
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_3c
return-void
.end method
.method protected b(Lorg/json/JSONObject;)V
.registers 10
const-wide/16 v6, 0x0
invoke-super {p0, p1}, Lcom/lenovo/content/item/AppItem;->b(Lorg/json/JSONObject;)V
const-string/jumbo v4, "appmask"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_5c
const-string/jumbo v4, "appmask"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iput v4, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
:goto_17
invoke-virtual {p0}, Lcom/lenovo/content/item/AppDataItem;->hasSystemData()Z
move-result v4
if-eqz v4, :cond_60
const-string/jumbo v4, "systemdatasize"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
iput-wide v4, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
const-string/jumbo v4, "systemdatapath"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
:goto_2f
invoke-virtual {p0}, Lcom/lenovo/content/item/AppDataItem;->hasSDCardData()Z
move-result v4
if-eqz v4, :cond_76
const-string/jumbo v4, "sdcarddatasize"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
iput-wide v4, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
:try_start_45
const-string/jumbo v4, "sdcarddatapaths"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const/4 v2, 0x0
:goto_4d
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v2, v4, :cond_75
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
:try_end_56
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_56} :catch_6e
move-result-object v0
if-nez v0, :cond_68
:goto_59
add-int/lit8 v2, v2, 0x1
goto :goto_4d
:cond_5c
const/4 v4, 0x1
iput v4, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
goto :goto_17
:cond_60
iput-wide v6, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
const-string/jumbo v4, ""
iput-object v4, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
goto :goto_2f
:cond_68
:try_start_68
iget-object v4, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_6d
.catch Lorg/json/JSONException; {:try_start_68 .. :try_end_6d} :catch_6e
goto :goto_59
:catch_6e
move-exception v3
const-string/jumbo v4, "AppDataItem"
invoke-static {v4, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_75
:cond_75
return-void
:cond_76
iput-wide v6, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
const/4 v4, 0x0
iput-object v4, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
goto :goto_75
.end method
.method public getSDCardDataPaths()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
return-object v0
.end method
.method public getSDCardDataSize()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
return-wide v0
.end method
.method public getSystemDataPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
return-object v0
.end method
.method public getSystemDataSize()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
return-wide v0
.end method
.method public hasAppEntity()Z
.registers 2
iget v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hasSDCardData()Z
.registers 2
iget v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hasSystemData()Z
.registers 2
iget v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isSDCardDataExist()Z
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_c
iget-boolean v1, p0, Lcom/lenovo/content/item/AppDataItem;->j:Z
:goto_b
return v1
:cond_c
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/lenovo/content/item/AppDataItem;->j:Z
if-eqz v1, :cond_25
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_25
const/4 v1, 0x1
goto :goto_b
:cond_25
move v1, v2
goto :goto_b
.end method
.method public final isSystemDataExist()Z
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/lenovo/content/item/AppDataItem;->g:Z
if-eqz v1, :cond_13
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_13
const/4 v1, 0x1
:goto_12
return v1
:cond_13
const/4 v1, 0x0
goto :goto_12
.end method
.method public final setIsSDCardDataExist(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/content/item/AppDataItem;->j:Z
return-void
.end method
.method public final setIsSystemDataExist(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/content/item/AppDataItem;->g:Z
return-void
.end method
.method public setSDCardData(JLjava/util/List;)V
.registers 5
iget v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
iput-wide p1, p0, Lcom/lenovo/content/item/AppDataItem;->k:J
iput-object p3, p0, Lcom/lenovo/content/item/AppDataItem;->l:Ljava/util/List;
return-void
.end method
.method public setSystemData(JLjava/lang/String;)V
.registers 5
iget v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/lenovo/content/item/AppDataItem;->f:I
iput-wide p1, p0, Lcom/lenovo/content/item/AppDataItem;->h:J
iput-object p3, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
return-void
.end method
.method public setSystemDataPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/content/item/AppDataItem;->i:Ljava/lang/String;
return-void
.end method