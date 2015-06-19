.class public Lcom/spotify/mobile/android/spotlets/discover/model/Story;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public static final a:[Ljava/lang/String;
.field private b:J
.field private c:Ljava/lang/String;
.field private d:I
.field private e:Lcom/spotify/mobile/android/util/SpotifyLink;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Lcom/spotify/mobile/android/util/SpotifyLink;
.field private k:Ljava/lang/String;
.field private l:Lcom/spotify/mobile/android/util/SpotifyLink;
.field private m:I
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/util/List;
.field private q:Ljava/lang/String;
.field private r:Z
.field private s:I
.field private t:Ljava/lang/String;
.field private u:J
.field private v:Ljava/util/TreeMap;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xd
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "story_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "story_type"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "recommended_item"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "hero_images"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "metadata_type"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "external_url"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "reason"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "summary"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "auxiliary_image"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "date_published"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "hermes_status_code"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a:[Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->p:Ljava/util/List;
iput-wide v1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->u:J
return-void
.end method
.method public static a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/discover/model/Story;
.registers 11
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v1, 0x0
new-instance v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
invoke-direct {v3}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;-><init>()V
const/16 v0, 0xc
invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->u:J
iget-wide v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->u:J
const-wide/16 v6, 0x0
cmp-long v0, v4, v6
if-lez v0, :cond_1a
move-object v0, v3
:goto_19
return-object v0
:cond_1a
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d:I
const/4 v0, 0x5
invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m:I
const/4 v0, 0x4
const-string v2, ""
invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Ljava/lang/String;)Ljava/util/TreeMap;
move-result-object v0
iput-object v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z
move-result v2
if-nez v2, :cond_4d
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b(Ljava/util/TreeMap;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e(Ljava/lang/String;)Z
:cond_4d
const/16 v0, 0x9
const-string v2, ""
invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/util/al;->b(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->n:Ljava/lang/String;
const/4 v0, 0x3
const-string v2, ""
invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v4, "display_name"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f:Ljava/lang/String;
new-instance v4, Lcom/spotify/mobile/android/util/SpotifyLink;
const-string v5, "uri"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
iput-object v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
if-eqz v4, :cond_97
const-string v5, "display_name"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i:Ljava/lang/String;
new-instance v5, Lcom/spotify/mobile/android/util/SpotifyLink;
const-string v6, "uri"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {v5, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
iput-object v5, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j:Lcom/spotify/mobile/android/util/SpotifyLink;
:cond_97
invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_b2
const-string v4, "display_name"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k:Ljava/lang/String;
new-instance v4, Lcom/spotify/mobile/android/util/SpotifyLink;
const-string v5, "uri"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v4, v2}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
iput-object v4, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l:Lcom/spotify/mobile/android/util/SpotifyLink;
:cond_b2
const-string v2, "previews"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_d5
move v0, v1
:goto_bb
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v0, v4, :cond_d5
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
const-string v5, ""
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_d2
iget-object v5, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->p:Ljava/util/List;
invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d2
add-int/lit8 v0, v0, 0x1
goto :goto_bb
:cond_d5
const/16 v0, 0xa
const-string v2, ""
invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->q:Ljava/lang/String;
const/16 v0, 0x8
const-string v2, ""
invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "format_string"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v4, "fields"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
if-eqz v4, :cond_196
move-object v2, v0
move v0, v1
:goto_100
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v0, v5, :cond_197
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "\\{"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\\}"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
invoke-static {v6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "text"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v8, "bold"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_13f
const-string v8, "<b>"
invoke-virtual {v7, v1, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
const-string v8, "</b>"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13f
const-string v8, "italic"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_151
const-string v8, "<i>"
invoke-virtual {v7, v1, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
const-string v8, "</i>"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_151
const-string v8, "underline"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_163
const-string v8, "<u>"
invoke-virtual {v7, v1, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
const-string v8, "</u>"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_163
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "<a href=\'"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v9, "uri"
invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, "\'>"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v7, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
const-string v6, "</a>"
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
add-int/lit8 v0, v0, 0x1
goto/16 :goto_100
:cond_196
move-object v2, v0
:cond_197
iput-object v2, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o:Ljava/lang/String;
const/4 v0, 0x7
invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->t:Ljava/lang/String;
const/16 v0, 0xb
invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, v3, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->s:I
move-object v0, v3
goto/16 :goto_19
.end method
.method static a(Ljava/lang/String;)Ljava/util/TreeMap;
.registers 7
new-instance v1, Ljava/util/TreeMap;
invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_37
:try_start_b
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_11
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_37
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "width"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const-string v5, "uri"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2e
.catch Lorg/json/JSONException; {:try_start_b .. :try_end_2e} :catch_31
add-int/lit8 v0, v0, 0x1
goto :goto_11
:catch_31
move-exception v0
const-string v2, "Failed parsing Json for Discover story hero image"
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Exception;)V
:cond_37
return-object v1
.end method
.method private static b(Ljava/util/TreeMap;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_b
:try_end_b
.catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
const-string v2, "Discover story: hero images map should not be empty"
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v1
goto :goto_b
.end method
.method private static c(Ljava/util/TreeMap;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_b
:try_end_b
.catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
const-string v2, "Discover story: hero images map should not be empty"
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v1
goto :goto_b
.end method
.method private static d(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_7
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
:goto_6
return-object v0
:cond_7
const-string v0, ""
goto :goto_6
.end method
.method static l(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
.registers 2
if-eqz p0, :cond_a
const-string v0, ""
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
goto :goto_b
.end method
.method private static m(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v3, 0x0
const-string v0, ""
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_a
:goto_9
:cond_9
return-object v0
:cond_a
:try_start_a
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-eqz v2, :cond_9
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "uri"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_1f
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_1f} :catch_21
move-result-object v0
goto :goto_9
:catch_21
move-exception v1
const-string v2, "A problem parsing image uris from json. Malformed document?"
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_9
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->u:J
return-wide v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m:I
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e:Lcom/spotify/mobile/android/util/SpotifyLink;
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->p:Ljava/util/List;
return-void
.end method
.method public final a(Ljava/util/TreeMap;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
return-void
.end method
.method public final a(Z)Z
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->r:Z
if-eq p1, v0, :cond_8
const/4 v0, 0x1
:goto_5
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->r:Z
return v0
:cond_8
const/4 v0, 0x0
goto :goto_5
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g:Ljava/lang/String;
return-object v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d:I
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j:Lcom/spotify/mobile/android/util/SpotifyLink;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
return-void
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
return-wide v0
.end method
.method public final c(Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l:Lcom/spotify/mobile/android/util/SpotifyLink;
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f:Ljava/lang/String;
return-void
.end method
.method public final c(I)Z
.registers 6
const/4 v0, 0x0
if-gez p1, :cond_9
const-string v1, "Discover story: suggestedWidth cannot be negative"
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_8
:cond_8
return v0
:cond_9
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
if-eqz v1, :cond_8
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z
move-result v1
if-nez v1, :cond_8
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_23
const/4 v0, 0x0
:goto_1e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e(Ljava/lang/String;)Z
move-result v0
goto :goto_8
:cond_23
if-nez p1, :cond_2a
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c(Ljava/util/TreeMap;)Ljava/lang/String;
move-result-object v0
goto :goto_1e
:cond_2a
invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
move-result-object v0
invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z
move-result v3
if-nez v3, :cond_56
invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
move v1, v0
:cond_56
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
move-result-object v0
invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z
move-result v3
if-nez v3, :cond_6d
invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:cond_6d
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_1e
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->s:I
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d:I
return v0
.end method
.method public final e(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g:Ljava/lang/String;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
:cond_c
const/4 v0, 0x1
:goto_d
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g:Ljava/lang/String;
return v0
:cond_10
const/4 v0, 0x0
goto :goto_d
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
iget-wide v4, p1, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final f()Lcom/spotify/mobile/android/util/SpotifyLink;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e:Lcom/spotify/mobile/android/util/SpotifyLink;
return-object v0
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h:Ljava/lang/String;
return-void
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f:Ljava/lang/String;
return-object v0
.end method
.method public final g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->q:Ljava/lang/String;
return-void
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i:Ljava/lang/String;
return-object v0
.end method
.method public final h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->n:Ljava/lang/String;
return-void
.end method
.method public hashCode()I
.registers 6
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
const/16 v4, 0x20
ushr-long/2addr v2, v4
xor-long/2addr v0, v2
long-to-int v0, v0
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public final i()Lcom/spotify/mobile/android/util/SpotifyLink;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j:Lcom/spotify/mobile/android/util/SpotifyLink;
return-object v0
.end method
.method public final i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k:Ljava/lang/String;
return-void
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h:Ljava/lang/String;
return-object v0
.end method
.method public final j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o:Ljava/lang/String;
return-void
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->q:Ljava/lang/String;
return-object v0
.end method
.method public final k(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->t:Ljava/lang/String;
return-void
.end method
.method public final l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->n:Ljava/lang/String;
return-object v0
.end method
.method public final m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k:Ljava/lang/String;
return-object v0
.end method
.method public final n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o:Ljava/lang/String;
return-object v0
.end method
.method public final o()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->r:Z
return v0
.end method
.method public final p()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->v:Ljava/util/TreeMap;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b(Ljava/util/TreeMap;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e(Ljava/lang/String;)Z
move-result v0
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public final q()J
.registers 5
iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->s:I
int-to-long v0, v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
return-wide v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->n:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->p:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->q:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->t:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->s:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method