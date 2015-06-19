.class public Lcom/twidroid/uberchannels/models/UberTopic;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field private static final m:Ljava/lang/String; = "UberTopic"
.field public a:Lcom/twidroid/uberchannels/models/c;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Ljava/util/ArrayList;
.field public g:Ljava/util/ArrayList;
.field public h:I
.field  i:Lcom/twidroid/uberchannels/models/UberTopic;
.field public j:I
.field public k:I
.field  l:I
.field private final n:Lorg/json/JSONObject;
.field private o:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/twidroid/uberchannels/models/UberTopic$1;
invoke-direct {v0}, Lcom/twidroid/uberchannels/models/UberTopic$1;-><init>()V
sput-object v0, Lcom/twidroid/uberchannels/models/UberTopic;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
iput v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
iput v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->n:Lorg/json/JSONObject;
iput v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->o:I
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;I)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
iput v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
iput v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
iput-object p1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->n:Lorg/json/JSONObject;
iput p2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->o:I
const-string v0, "name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
const-string v0, "title"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
const-string v0, "description"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
const-string v0, "category"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
const-string v0, "actions"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4a
const-string v0, "actions"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/uberchannels/models/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
:cond_4a
const-string v0, "subtopics"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
invoke-static {p0, v0, p2}, Lcom/twidroid/uberchannels/models/UberTopic;->a(Lcom/twidroid/uberchannels/models/UberTopic;Lorg/json/JSONArray;I)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
const-string v0, "droid2"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_76
new-instance v0, Lcom/twidroid/uberchannels/models/c;
const-string v1, "droid2"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/twidroid/uberchannels/models/c;-><init>(Lorg/json/JSONObject;I)V
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
:goto_6b
:cond_6b
const-string v0, "tweet_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
iput v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
return-void
:cond_76
const-string v0, "droid"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6b
new-instance v0, Lcom/twidroid/uberchannels/models/c;
const-string v1, "droid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/twidroid/uberchannels/models/c;-><init>(Lorg/json/JSONObject;I)V
iput-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
goto :goto_6b
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "/"
const/4 v1, 0x3
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const-string v1, "/"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(Lcom/twidroid/uberchannels/models/UberTopic;Lorg/json/JSONArray;I)Ljava/util/ArrayList;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:try_start_6
:goto_6
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_33
new-instance v2, Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-direct {v2, v3, p2}, Lcom/twidroid/uberchannels/models/UberTopic;-><init>(Lorg/json/JSONObject;I)V
iget v3, v2, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
if-lez v3, :cond_26
invoke-direct {v2, p0}, Lcom/twidroid/uberchannels/models/UberTopic;->a(Lcom/twidroid/uberchannels/models/UberTopic;)V
iget v3, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
add-int/lit8 v3, v3, 0x1
invoke-direct {v2, v3}, Lcom/twidroid/uberchannels/models/UberTopic;->a(I)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_26
:try_end_26
.catch Lorg/json/JSONException; {:try_start_6 .. :try_end_26} :catch_29
add-int/lit8 v0, v0, 0x1
goto :goto_6
:catch_29
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_33
return-object v1
.end method
.method public static a(Ljava/lang/String;I)Ljava/util/List;
.registers 7
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
:cond_11
return-object v0
:cond_12
:try_start_12
new-instance v2, Lorg/json/JSONArray;
const-string v1, "\\n"
const-string v3, ""
invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
:goto_20
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v1, v3, :cond_11
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
new-instance v4, Lcom/twidroid/uberchannels/models/UberTopic;
invoke-direct {v4, v3, p1}, Lcom/twidroid/uberchannels/models/UberTopic;-><init>(Lorg/json/JSONObject;I)V
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_32
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_35
add-int/lit8 v1, v1, 0x1
goto :goto_20
:catch_35
move-exception v0
const-string v1, "UberTopic"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "UberTopic::getLists() Can\'t parse topics: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method private a(I)V
.registers 3
iput p1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
iget v0, v0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
if-ge v0, p1, :cond_10
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
iput p1, v0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
:cond_10
return-void
.end method
.method private a(Lcom/twidroid/uberchannels/models/UberTopic;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
return-void
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
const-string v1, "/"
const/4 v2, 0x2
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string v1, "/"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
:cond_5
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
iget-object p0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-nez p0, :cond_5
const-string v1, "UberTopic"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Path: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
return v0
.end method
.method public c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.tweetmixx.com/topics/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Z
.registers 3
iget v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
const/4 v1, 0x2
if-ge v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/twidroid/uberchannels/models/UberTopic;
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
iget v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
if-eq v2, v3, :cond_61
move v0, v1
goto :goto_4
:cond_61
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
iget v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
if-eq v2, v3, :cond_69
move v0, v1
goto :goto_4
:cond_69
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
iget v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
if-eq v2, v3, :cond_71
move v0, v1
goto :goto_4
:cond_71
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
if-nez v2, :cond_7b
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
if-eqz v2, :cond_88
move v0, v1
goto :goto_4
:cond_7b
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_88
move v0, v1
goto/16 :goto_4
:cond_88
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-nez v2, :cond_93
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-eqz v2, :cond_a0
move v0, v1
goto/16 :goto_4
:cond_93
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {v2, v3}, Lcom/twidroid/uberchannels/models/UberTopic;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_a0
move v0, v1
goto/16 :goto_4
:cond_a0
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
if-nez v2, :cond_ab
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
if-eqz v2, :cond_b8
move v0, v1
goto/16 :goto_4
:cond_ab
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b8
move v0, v1
goto/16 :goto_4
:cond_b8
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
if-nez v2, :cond_c3
iget-object v2, p1, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
if-eqz v2, :cond_d0
move v0, v1
goto/16 :goto_4
:cond_c3
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d0
move v0, v1
goto/16 :goto_4
:cond_d0
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
iget v3, p1, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
if-eq v2, v3, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public f()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".png"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1f
return-object v0
:cond_20
new-instance v0, Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
iget-object v1, v1, Lcom/twidroid/uberchannels/models/c;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, "_avat_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
iget-object v1, v1, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1f
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
iget-object v0, v0, Lcom/twidroid/uberchannels/models/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
iget-object v0, v0, Lcom/twidroid/uberchannels/models/c;->d:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
if-nez v0, :cond_4c
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
if-nez v0, :cond_53
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
if-nez v0, :cond_5a
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->j:I
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->k:I
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
if-nez v0, :cond_61
move v0, v1
:goto_2e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-nez v0, :cond_68
move v0, v1
:goto_36
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
if-nez v0, :cond_6f
move v0, v1
:goto_3e
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
if-nez v2, :cond_76
:goto_45
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->l:I
add-int/2addr v0, v1
return v0
:cond_4c
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I
move-result v0
goto :goto_6
:cond_53
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_5a
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_17
:cond_61
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2e
:cond_68
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {v0}, Lcom/twidroid/uberchannels/models/UberTopic;->hashCode()I
move-result v0
goto :goto_36
:cond_6f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I
move-result v0
goto :goto_3e
:cond_76
iget-object v1, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_45
.end method
.method public i()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public j()Lcom/twidroid/uberchannels/models/UberTopic;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
return-object v0
.end method
.method public k()Ljava/lang/String;
.registers 2
:cond_0
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
if-eqz v0, :cond_6
iget-object p0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->i:Lcom/twidroid/uberchannels/models/UberTopic;
:cond_6
invoke-virtual {p0}, Lcom/twidroid/uberchannels/models/UberTopic;->d()Z
move-result v0
if-eqz v0, :cond_0
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->b:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->n:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/uberchannels/models/UberTopic;->o:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method