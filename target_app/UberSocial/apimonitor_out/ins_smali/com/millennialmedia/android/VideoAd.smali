.class  Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/ai;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field private static final G:Ljava/lang/String; = "VideoAd"
.field static final k:Ljava/lang/String; = "video.dat"
.field static final l:J = 0x252e2adaa757e358L
.field  A:[Ljava/lang/String;
.field  B:[Ljava/lang/String;
.field  C:Z
.field  D:Ljava/util/ArrayList;
.field  E:Ljava/util/ArrayList;
.field  F:Lcom/millennialmedia/android/ao;
.field private H:Ljava/lang/String;
.field  m:Z
.field  n:Z
.field  o:Ljava/lang/String;
.field  p:Ljava/lang/String;
.field  q:Ljava/lang/String;
.field  r:Ljava/lang/String;
.field  s:Z
.field  t:Z
.field  u:[Ljava/lang/String;
.field  v:[Ljava/lang/String;
.field  w:J
.field  x:J
.field  y:J
.field  z:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/millennialmedia/android/VideoAd$1;
invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$1;-><init>()V
sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/ai;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 5
invoke-direct {p0, p1}, Lcom/millennialmedia/android/ai;-><init>(Landroid/os/Parcel;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
:try_start_11
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
const/4 v0, 0x5
new-array v0, v0, [Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V
const/4 v1, 0x0
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->m:Z
const/4 v1, 0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->s:Z
const/4 v1, 0x2
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->t:Z
const/4 v1, 0x3
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->C:Z
const/4 v1, 0x4
aget-boolean v0, v0, v1
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->n:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->w:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->x:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->y:J
const-class v0, Lcom/millennialmedia/android/VideoImage;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
const-class v0, Lcom/millennialmedia/android/VideoLogEvent;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
:goto_b9
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b9} :catch_ba
return-void
:catch_ba
move-exception v0
const-string v1, "VideoAd"
const-string v2, "Exception with videoad parcel creation: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_b9
.end method
.method constructor <init>(Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/millennialmedia/android/ai;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
if-eqz p1, :cond_26
const/4 v1, 0x0
:try_start_14
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_19
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_27
:goto_19
if-eqz v0, :cond_26
const-string v1, "video"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_26
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoAd;->a(Lorg/json/JSONObject;)V
:cond_26
return-void
:catch_27
move-exception v0
const-string v2, "VideoAd"
const-string v3, "VideoAd json exception: "
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_19
.end method
.method static synthetic a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
return-object v0
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/az;)V
.registers 8
const/4 v3, 0x1
const/4 v4, 0x0
if-eqz p1, :cond_2d
invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_2e
const/4 v1, 0x0
invoke-virtual {v0, p0, v1, v4}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual {p2}, Lcom/millennialmedia/android/az;->e()V
const-string v1, "VideoAd"
const-string v2, "mmvideo: attempting to play video %s"
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-wide v1, p2, Lcom/millennialmedia/android/az;->e:J
invoke-virtual {v0, p0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;J)V
invoke-virtual {p2}, Lcom/millennialmedia/android/az;->c()V
:goto_2d
:cond_2d
return-void
:cond_2e
const-string v0, "VideoAd"
const-string v1, "mmvideo: Ad %s cannot be shown at this time."
new-array v2, v3, [Ljava/lang/Object;
aput-object p1, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "video.dat"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "video.dat"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, p0}, Lcom/millennialmedia/android/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
const-string v1, "VideoAd"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Caching completed successfully ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "video.dat"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")? %b"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
return v0
.end method
.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "video.dat"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method private e(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x2
new-instance v1, Lcom/millennialmedia/android/dm;
invoke-direct {v1, p1, p0}, Lcom/millennialmedia/android/dm;-><init>(Landroid/content/Context;Lcom/millennialmedia/android/VideoAd;)V
invoke-static {p1, v0, v1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V
return-void
.end method
.method  a(Landroid/content/Context;J)V
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoAd;->b(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
invoke-static {p1, v0}, Lcom/millennialmedia/android/dj;->b(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method  a(Lcom/millennialmedia/android/ao;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/VideoAd;->F:Lcom/millennialmedia/android/ao;
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 8
const/4 v5, 0x0
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->a(Lorg/json/JSONObject;)V
const-string v0, "startActivity"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
const-string v0, "overlayURL"
invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
const-string v0, "endURL"
invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
const-string v0, "cacheMissURL"
invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
const-string v0, "videoFileId"
invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
if-eqz v2, :cond_47
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
move v0, v1
:goto_36
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_4b
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_36
:cond_47
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
:cond_4b
const-string v0, "endActivity"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_6d
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
move v0, v1
:goto_5c
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_71
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_5c
:cond_6d
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
:cond_71
const-string v0, "cacheComplete"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_93
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
move v0, v1
:goto_82
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_97
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_82
:cond_93
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
:cond_97
const-string v0, "cacheFailed"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_b9
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
move v0, v1
:goto_a8
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_bd
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a8
:cond_b9
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
:cond_bd
const-string v0, "videoError"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_df
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
move v0, v1
:goto_ce
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_e3
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_ce
:cond_df
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
:cond_e3
const-string v0, "showVideoPlayerControls"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->m:Z
const-string v0, "showCountdownHUD"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->t:Z
const-string v0, "reloadOverlayOnRestart"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->C:Z
const-string v0, "onCompletion"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_113
const-string v2, "url"
invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
const-string v2, "stayInPlayer"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->s:Z
:cond_113
const-string v0, "duration"
const-wide/16 v2, 0x0
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v2
const-wide v4, 0x408f400000000000L
mul-double/2addr v2, v4
double-to-long v2, v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->w:J
const-string v0, "contentLength"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->x:J
const-string v0, "closeAfterDelay"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->y:J
const-string v0, "buttons"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_156
move v0, v1
:goto_13d
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_156
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
if-eqz v3, :cond_153
new-instance v4, Lcom/millennialmedia/android/VideoImage;
invoke-direct {v4, v3}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_153
add-int/lit8 v0, v0, 0x1
goto :goto_13d
:cond_156
const-string v0, "log"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_177
:goto_15e
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v1, v2, :cond_177
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_174
new-instance v3, Lcom/millennialmedia/android/VideoLogEvent;
invoke-direct {v3, v2}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_174
add-int/lit8 v1, v1, 0x1
goto :goto_15e
:cond_177
return-void
.end method
.method  a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method  a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p3, :cond_21
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->a()Z
move-result v2
if-nez v2, :cond_1f
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_1f
invoke-static {p1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v2
iget-object v3, p2, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
iget-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->g:J
invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/as;->a(Ljava/lang/String;J)Z
move-result v2
if-eqz v2, :cond_1f
:cond_1e
:goto_1e
return v0
:cond_1f
move v0, v1
goto :goto_1e
:cond_21
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->a()Z
move-result v2
if-nez v2, :cond_2d
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_1e
:cond_2d
move v0, v1
goto :goto_1e
.end method
.method  b(Landroid/content/Context;J)Landroid/content/Intent;
.registers 7
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "videoId"
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-wide/16 v1, -0x4
cmp-long v1, p2, v1
if-eqz v1, :cond_19
const-string v1, "internalId"
invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
:cond_19
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "video.dat"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
return-object v0
.end method
.method  b(Landroid/content/Context;)Z
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->h:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "video.dat"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/millennialmedia/android/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_51
move v1, v2
:goto_1f
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_51
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0, p1}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_74
move v0, v3
:cond_51
if-nez v0, :cond_79
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->j:Z
if-eqz v1, :cond_5a
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V
:cond_5a
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
invoke-static {v1}, Lcom/millennialmedia/android/aw;->a([Ljava/lang/String;)V
:goto_5f
:cond_5f
const-string v1, "VideoAd"
const-string v3, "Caching completed successfully? %b"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v4, v2
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
return v0
:cond_74
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v3
goto :goto_1f
:cond_79
if-eqz v0, :cond_5f
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->e:Ljava/lang/String;
if-eqz v1, :cond_8c
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->e:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_8c
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->e:Ljava/lang/String;
invoke-static {p1, v1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;)V
:cond_8c
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
invoke-static {v1}, Lcom/millennialmedia/android/aw;->a([Ljava/lang/String;)V
goto :goto_5f
.end method
.method  c()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method  c(Landroid/content/Context;)V
.registers 7
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->c(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoAd;->e(Landroid/content/Context;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->e:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "VideoAd"
const-string v1, "Ad %s was deleted."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method  d()Ljava/lang/String;
.registers 2
const-string v0, "Video"
return-object v0
.end method
.method  d(Landroid/content/Context;)Z
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {p1}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;
move-result-object v3
invoke-static {p1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;
move-result-object v4
if-eqz v3, :cond_86
if-eqz v4, :cond_86
new-instance v2, Lcom/millennialmedia/android/dl;
invoke-direct {v2, p0}, Lcom/millennialmedia/android/dl;-><init>(Lcom/millennialmedia/android/VideoAd;)V
invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_84
array-length v2, v2
if-lt v2, v0, :cond_84
const/4 v2, 0x1
:goto_24
if-eqz v2, :cond_82
if-eqz v4, :cond_82
new-instance v0, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
iget-object v6, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "video.dat"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_4a
move v0, v1
:goto_49
return v0
:cond_4a
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_50
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_82
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
new-instance v5, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_50
move v0, v1
goto :goto_49
:cond_82
move v0, v2
goto :goto_49
:cond_84
move v2, v1
goto :goto_24
:cond_86
move v0, v1
goto :goto_49
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  f()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
if-eqz v0, :cond_1b
const-string v0, "VideoAd"
const-string v1, "Cached video begin event logged"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_c
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_1b
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-static {v1}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_1b
return-void
.end method
.method  g()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
if-eqz v0, :cond_1b
const-string v0, "VideoAd"
const-string v1, "Cached video end event logged"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_c
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_1b
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-static {v1}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_1b
return-void
.end method
.method  h()Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoImage;->t:Z
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 7
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->readExternal(Ljava/io/ObjectInput;)V
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->m:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->s:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->t:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->C:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
new-array v0, v3, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
move v2, v1
:goto_4d
if-ge v2, v3, :cond_5d
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v4, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_4d
:cond_5d
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
new-array v0, v3, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
move v2, v1
:goto_66
if-ge v2, v3, :cond_76
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v4, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_66
:cond_76
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->w:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->n:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->x:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->y:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
new-array v0, v3, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
move v2, v1
:goto_97
if-ge v2, v3, :cond_a7
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v4, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_97
:cond_a7
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
new-array v0, v3, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
move v2, v1
:goto_b0
if-ge v2, v3, :cond_c0
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v4, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_b0
:cond_c0
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
new-array v0, v3, [Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
move v2, v1
:goto_c9
if-ge v2, v3, :cond_d9
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v4, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c9
:cond_d9
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v3
move v2, v1
:goto_e3
if-ge v2, v3, :cond_f4
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_e3
:cond_f4
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v2
:goto_fd
if-ge v1, v2, :cond_10e
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;
iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_fd
:cond_10e
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 7
const/4 v0, 0x0
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->writeExternal(Ljava/io/ObjectOutput;)V
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->m:Z
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->s:Z
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->t:Z
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->C:Z
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
array-length v1, v1
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_3b
if-ge v1, v3, :cond_45
aget-object v4, v2, v1
invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3b
:cond_45
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
array-length v1, v1
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_4f
if-ge v1, v3, :cond_59
aget-object v4, v2, v1
invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_4f
:cond_59
iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->w:J
invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->n:Z
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->x:J
invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->y:J
invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
array-length v1, v1
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_77
if-ge v1, v3, :cond_81
aget-object v4, v2, v1
invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_77
:cond_81
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
array-length v1, v1
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_8b
if-ge v1, v3, :cond_95
aget-object v4, v2, v1
invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_8b
:cond_95
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
array-length v1, v1
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
array-length v2, v1
:goto_9e
if-ge v0, v2, :cond_a8
aget-object v3, v1, v0
invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_9e
:cond_a8
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c7
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
goto :goto_b7
:cond_c7
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e6
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
goto :goto_d6
:cond_e6
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/ai;->writeToParcel(Landroid/os/Parcel;I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
const/4 v0, 0x5
new-array v0, v0, [Z
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->m:Z
aput-boolean v2, v0, v1
const/4 v1, 0x1
iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->s:Z
aput-boolean v2, v0, v1
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->t:Z
aput-boolean v2, v0, v1
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->C:Z
aput-boolean v2, v0, v1
const/4 v1, 0x4
iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->n:Z
aput-boolean v2, v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->H:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->w:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->x:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->y:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->A:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
return-void
.end method