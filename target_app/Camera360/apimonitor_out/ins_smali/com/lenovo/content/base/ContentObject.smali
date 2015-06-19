.class public abstract Lcom/lenovo/content/base/ContentObject;
.super Lcom/lenovo/content/base/ContentExtras;
.source "ContentObject.java"
.field public static final INVALID_VALUE:I = -0x1
.field public static final LOCAL_SOURCE_PREFIX:Ljava/lang/String; = "local"
.field private a:Lcom/lenovo/content/base/ContentType;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Lcom/lenovo/content/base/ContentPath;
.method public constructor <init>(Lcom/lenovo/content/base/ContentObject;)V
.registers 3
invoke-direct {p0}, Lcom/lenovo/content/base/ContentExtras;-><init>()V
iget-object v0, p1, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
iget-object v0, p1, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
iget-boolean v0, p1, Lcom/lenovo/content/base/ContentObject;->e:Z
iput-boolean v0, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
iget-object v0, p1, Lcom/lenovo/content/base/ContentObject;->f:Lcom/lenovo/content/base/ContentPath;
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->f:Lcom/lenovo/content/base/ContentPath;
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
invoke-direct {p0}, Lcom/lenovo/content/base/ContentExtras;-><init>()V
iput-object p1, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
invoke-virtual {p0, p2}, Lcom/lenovo/content/base/ContentObject;->a(Lcom/lenovo/content/base/ContentProperties;)V
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Lcom/lenovo/content/base/ContentExtras;-><init>()V
iput-object p1, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
invoke-virtual {p0, p2}, Lcom/lenovo/content/base/ContentObject;->b(Lorg/json/JSONObject;)V
return-void
.end method
.method public static decodeVersionedId(Ljava/lang/String;)Landroid/util/Pair;
.registers 6
const-string/jumbo v3, "|"
invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_12
new-instance v3, Landroid/util/Pair;
const-string/jumbo v4, ""
invoke-direct {v3, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
:goto_11
return-object v3
:cond_12
const/4 v3, -0x1
if-ne v0, v3, :cond_19
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:cond_19
const/4 v3, 0x0
invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v3, v0, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/util/Pair;
invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_11
.end method
.method public a(Lcom/lenovo/content/base/ContentProperties;)V
.registers 4
const-string/jumbo v0, "id"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
const-string/jumbo v0, "ver"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
const-string/jumbo v0, "name"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
const-string/jumbo v0, "has_thumbnail"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 4
const-string/jumbo v0, "type"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "id"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "ver"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "name"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "has_thumbnail"
iget-boolean v1, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentObject;->isContainer()Z
move-result v0
if-eqz v0, :cond_2f
:goto_2e
:cond_2e
return-void
:cond_2f
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;
if-eq v0, v1, :cond_3b
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_47
:cond_3b
const-string/jumbo v0, "musicid"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_47
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_59
const-string/jumbo v0, "photoid"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_59
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_6b
const-string/jumbo v0, "contactid"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_6b
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_79
const-string/jumbo v0, "appname"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_79
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_87
const-string/jumbo v0, "contact_name"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_87
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;
if-eq v0, v1, :cond_99
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
if-eq v0, v1, :cond_99
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v1, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_2e
:cond_99
const-string/jumbo v0, "showname"
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_2e
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 6
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_20
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_20
const-string/jumbo v2, "packagename"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_20
const-string/jumbo v2, "packagename"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
:cond_20
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_44
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_44
const-string/jumbo v2, "versioncode"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_44
const-string/jumbo v2, "versioncode"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
:cond_44
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_64
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_64
const-string/jumbo v2, "filepath"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_64
const-string/jumbo v2, "filepath"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
:cond_64
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_84
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_84
const-string/jumbo v2, "fileid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_84
const-string/jumbo v2, "fileid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
:cond_84
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_a8
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_a8
const-string/jumbo v2, "last_time"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a8
const-string/jumbo v2, "last_time"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
:cond_a8
const/4 v0, -0x1
const-string/jumbo v2, "contactid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_b9
const-string/jumbo v2, "contactid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:cond_b9
const-string/jumbo v2, "musicid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_c9
const-string/jumbo v2, "musicid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:cond_c9
const-string/jumbo v2, "photoid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d9
const-string/jumbo v2, "photoid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:cond_d9
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_ea
const/4 v2, -0x1
if-eq v0, v2, :cond_ea
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
:cond_ea
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_104
const-string/jumbo v2, "id"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_104
const-string/jumbo v2, "id"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
:cond_104
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_11e
const-string/jumbo v2, "ver"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_11e
const-string/jumbo v2, "ver"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
:cond_11e
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
if-nez v2, :cond_127
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
:cond_127
const-string/jumbo v2, "name"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_139
const-string/jumbo v2, "name"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
:cond_139
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_14f
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
sget-object v3, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
if-ne v2, v3, :cond_14f
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
:cond_14f
iget-object v2, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_173
const/4 v1, 0x0
sget-object v2, Lcom/lenovo/content/base/ContentObject$1;->a:[I
iget-object v3, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_19e
:goto_165
if-eqz v1, :cond_173
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_173
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
:cond_173
const-string/jumbo v2, "has_thumbnail"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_185
const-string/jumbo v2, "has_thumbnail"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
:cond_185
const-string/jumbo v2, "filename"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_191
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
:cond_191
return-void
:pswitch_192
const-string/jumbo v1, "appname"
goto :goto_165
:pswitch_196
const-string/jumbo v1, "contact_name"
goto :goto_165
:pswitch_19a
const-string/jumbo v1, "showname"
goto :goto_165
:pswitch_data_19e
.packed-switch 0x1
:pswitch_192
:pswitch_196
:pswitch_19a
:pswitch_19a
:pswitch_19a
.end packed-switch
.end method
.method public compareTo(Lcom/lenovo/content/base/ContentObject;)I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final getContentType()Lcom/lenovo/content/base/ContentType;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->a:Lcom/lenovo/content/base/ContentType;
return-object v0
.end method
.method public final getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
return-object v0
.end method
.method public final getVer()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
return-object v0
.end method
.method public final getVersionedId()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/content/base/ContentObject;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final hasThumbnail()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/content/base/ContentObject;->e:Z
return v0
.end method
.method public final isContainer()Z
.registers 2
instance-of v0, p0, Lcom/lenovo/content/base/ContentContainer;
return v0
.end method
.method public final isLocalObject()Z
.registers 3
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->f:Lcom/lenovo/content/base/ContentPath;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/lenovo/content/base/ContentObject;->f:Lcom/lenovo/content/base/ContentPath;
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentPath;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "/local"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public final setContentPath(Lcom/lenovo/content/base/ContentPath;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/content/base/ContentObject;->f:Lcom/lenovo/content/base/ContentPath;
return-void
.end method
.method public final setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/content/base/ContentObject;->d:Ljava/lang/String;
return-void
.end method
.method public toJSON()Lorg/json/JSONObject;
.registers 2
const/4 v0, 0x0
return-object v0
.end method