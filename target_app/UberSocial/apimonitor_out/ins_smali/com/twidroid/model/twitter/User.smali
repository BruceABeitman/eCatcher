.class public Lcom/twidroid/model/twitter/User;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field static u:J = 0x0L
.field static final w:[Ljava/lang/String; = null
.field private static final y:Ljava/lang/String; = "User"
.field private A:I
.field public a:Ljava/lang/String;
.field public b:J
.field public c:Ljava/lang/String;
.field public final d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Z
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field public j:I
.field public k:J
.field public l:J
.field public m:J
.field public n:J
.field public o:Ljava/lang/String;
.field public p:Ljava/util/Date;
.field public q:Z
.field public r:J
.field public s:Z
.field public t:Lcom/twidroid/model/twitter/Tweet;
.field public v:Z
.field private x:Ljava/lang/String;
.field private z:Z
.method static constructor <clinit>()V
.registers 3
const-wide/16 v0, -0x1
sput-wide v0, Lcom/twidroid/model/twitter/User;->u:J
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "user"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "sender"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "recipient"
aput-object v2, v0, v1
sput-object v0, Lcom/twidroid/model/twitter/User;->w:[Ljava/lang/String;
new-instance v0, Lcom/twidroid/model/twitter/User$1;
invoke-direct {v0}, Lcom/twidroid/model/twitter/User$1;-><init>()V
sput-object v0, Lcom/twidroid/model/twitter/User;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V
.registers 15
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/model/twitter/User;->j:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->n:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->s:Z
iput-wide p1, p0, Lcom/twidroid/model/twitter/User;->b:J
iput-object p3, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iput-object p5, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
iput-object p6, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
iput-object p7, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
iput-object p8, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
iput-boolean p9, p0, Lcom/twidroid/model/twitter/User;->f:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->k:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->l:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->m:J
iput-object p11, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
iput-boolean p10, p0, Lcom/twidroid/model/twitter/User;->v:Z
iput-object p12, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/User;->j:I
const-wide/16 v3, 0x0
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->n:J
iput-boolean v2, p0, Lcom/twidroid/model/twitter/User;->q:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/User;->s:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_b5
move v0, v1
:goto_37
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/twidroid/model/twitter/User;->j:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->k:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->l:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->m:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->n:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_b7
move v0, v1
:goto_70
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/twidroid/model/twitter/User;->r:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_b9
move v0, v1
:goto_7f
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->s:Z
const-class v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
sput-wide v3, Lcom/twidroid/model/twitter/User;->u:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_bb
:goto_a1
iput-boolean v1, p0, Lcom/twidroid/model/twitter/User;->v:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->i:Ljava/lang/String;
new-instance v0, Ljava/util/Date;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
return-void
:cond_b5
move v0, v2
goto :goto_37
:cond_b7
move v0, v2
goto :goto_70
:cond_b9
move v0, v2
goto :goto_7f
:cond_bb
move v1, v2
goto :goto_a1
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twidroid/model/twitter/User$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/model/twitter/User;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 10
const/4 v0, 0x0
const/4 v2, 0x1
const-wide/16 v6, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
iput v3, p0, Lcom/twidroid/model/twitter/User;->j:I
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->n:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->q:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->s:Z
:try_start_12
const-string v1, "id"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
iput-wide v4, p0, Lcom/twidroid/model/twitter/User;->b:J
:goto_1a
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_135
const-string v1, "name"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
const-string v1, "screen_name"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
const-string v1, "location"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
:try_start_32
const-string v1, "verified"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/model/twitter/User;->v:Z
:try_end_3a
.catch Lorg/json/JSONException; {:try_start_32 .. :try_end_3a} :catch_102
:try_start_3a
:goto_3a
invoke-static {p1}, Lcom/twidroid/model/twitter/User;->a(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
:goto_40
:try_start_40
:try_end_40
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_108
const-string v1, "display_zone"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_50
const-string v1, "display_zone"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
:cond_50
:try_end_50
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_132
:try_start_50
:goto_50
const-string v1, "featured"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_60
const-string v1, "featured"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/model/twitter/User;->s:Z
:cond_60
:goto_60
:try_end_60
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_60} :catch_10f
const-string v1, "profile_image_url"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_114
:goto_68
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
:try_start_6a
const-string v0, "entities"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "urls"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "expanded_url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
:try_end_89
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_89} :catch_12f
:goto_89
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
if-eqz v0, :cond_9b
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "null"
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_9f
:cond_9b
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
:try_start_9f
:cond_9f
const-string v0, "geo_enabled"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_af
const-string v0, "geo_enabled"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
:try_end_af
.catch Ljava/lang/Exception; {:try_start_9f .. :try_end_af} :catch_12d
:cond_af
:try_start_af
:goto_af
const-string v0, "statuses_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->n:J
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_12b
:goto_b8
:try_start_b8
const-string v0, "protected"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
:try_end_c0
.catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c0} :catch_129
:goto_c0
:try_start_c0
const-string v0, "followers_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->k:J
:try_end_c8
.catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c8} :catch_127
:goto_c8
:try_start_c8
const-string v0, "friends_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->l:J
:try_end_d0
.catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d0} :catch_117
:goto_d0
:try_start_d0
const-string v0, "favourites_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->m:J
:try_start_d8
:try_end_d8
.catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d8} :catch_11b
:goto_d8
const-string v0, "following"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11f
move v0, v2
:goto_e1
iput v0, p0, Lcom/twidroid/model/twitter/User;->j:I
:try_end_e3
.catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e3} :catch_121
:goto_e3
const-string v0, "time_zone"
invoke-static {v0, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE MMM dd HH:mm:ss ZZZZZ yyyy"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V
:try_start_f5
const-string v1, "created_at"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
:try_end_101
.catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_101} :catch_125
:goto_101
return-void
:catch_102
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_3a
:catch_108
move-exception v1
const-string v1, ""
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
goto/16 :goto_40
:catch_10f
move-exception v1
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->s:Z
goto/16 :goto_60
:cond_114
move-object v0, v1
goto/16 :goto_68
:catch_117
move-exception v0
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->l:J
goto :goto_d0
:catch_11b
move-exception v0
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->m:J
goto :goto_d8
:cond_11f
move v0, v3
goto :goto_e1
:catch_121
move-exception v0
iput v3, p0, Lcom/twidroid/model/twitter/User;->j:I
goto :goto_e3
:catch_125
move-exception v0
goto :goto_101
:catch_127
move-exception v0
goto :goto_c8
:catch_129
move-exception v0
goto :goto_c0
:catch_12b
move-exception v0
goto :goto_b8
:catch_12d
move-exception v0
goto :goto_af
:catch_12f
move-exception v0
goto/16 :goto_89
:catch_132
move-exception v1
goto/16 :goto_50
:catch_135
move-exception v1
goto/16 :goto_1a
.end method
.method public constructor <init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
.registers 11
const/4 v0, 0x0
const/4 v2, 0x1
const-wide/16 v6, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
iput v3, p0, Lcom/twidroid/model/twitter/User;->j:I
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->n:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->q:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->s:Z
:try_start_12
const-string v1, "id"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
iput-wide v4, p0, Lcom/twidroid/model/twitter/User;->b:J
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_134
:goto_1a
const-string v1, "name"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
const-string v1, "screen_name"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
:try_start_2a
const-string v1, "verified"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/model/twitter/User;->v:Z
:goto_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_131
iput-object p2, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
const-string v1, "location"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
:try_start_3c
invoke-static {p1}, Lcom/twidroid/model/twitter/User;->a(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
:try_start_42
:try_end_42
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_104
:goto_42
const-string v1, "display_zone"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_52
const-string v1, "display_zone"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
:goto_52
:cond_52
:try_start_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_12e
const-string v1, "featured"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_62
const-string v1, "featured"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/model/twitter/User;->s:Z
:cond_62
:try_end_62
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_10b
:goto_62
const-string v1, "profile_image_url"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_110
:goto_6a
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
:try_start_6c
const-string v0, "entities"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "urls"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "expanded_url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
:goto_8b
:try_end_8b
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8b} :catch_12b
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "null"
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_a1
:cond_9d
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
:try_start_a1
:cond_a1
const-string v0, "geo_enabled"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b1
const-string v0, "geo_enabled"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
:cond_b1
:try_end_b1
.catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b1} :catch_129
:goto_b1
:try_start_b1
const-string v0, "statuses_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->n:J
:goto_ba
:try_end_ba
.catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ba} :catch_127
:try_start_ba
const-string v0, "protected"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
:try_end_c2
.catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c2} :catch_125
:goto_c2
:try_start_c2
const-string v0, "followers_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->k:J
:goto_ca
:try_end_ca
.catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ca} :catch_123
:try_start_ca
const-string v0, "friends_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->l:J
:try_end_d2
.catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d2} :catch_113
:try_start_d2
:goto_d2
const-string v0, "favourites_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/User;->m:J
:try_end_da
.catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_da} :catch_117
:goto_da
:try_start_da
const-string v0, "following"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11b
move v0, v2
:goto_e3
iput v0, p0, Lcom/twidroid/model/twitter/User;->j:I
:goto_e5
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_da .. :try_end_e5} :catch_11d
const-string v0, "time_zone"
invoke-static {v0, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE MMM dd HH:mm:ss ZZZZZ yyyy"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V
:try_start_f7
const-string v1, "created_at"
invoke-static {v1, p1}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
:goto_103
:try_end_103
.catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_103} :catch_121
return-void
:catch_104
move-exception v1
const-string v1, ""
iput-object v1, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
goto/16 :goto_42
:catch_10b
move-exception v1
iput-boolean v3, p0, Lcom/twidroid/model/twitter/User;->s:Z
goto/16 :goto_62
:cond_110
move-object v0, v1
goto/16 :goto_6a
:catch_113
move-exception v0
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->l:J
goto :goto_d2
:catch_117
move-exception v0
iput-wide v6, p0, Lcom/twidroid/model/twitter/User;->m:J
goto :goto_da
:cond_11b
move v0, v3
goto :goto_e3
:catch_11d
move-exception v0
iput v3, p0, Lcom/twidroid/model/twitter/User;->j:I
goto :goto_e5
:catch_121
move-exception v0
goto :goto_103
:catch_123
move-exception v0
goto :goto_ca
:catch_125
move-exception v0
goto :goto_c2
:catch_127
move-exception v0
goto :goto_ba
:catch_129
move-exception v0
goto :goto_b1
:catch_12b
move-exception v0
goto/16 :goto_8b
:catch_12e
move-exception v1
goto/16 :goto_52
:catch_131
move-exception v1
goto/16 :goto_32
:catch_134
move-exception v1
goto/16 :goto_1a
.end method
.method protected static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.registers 5
invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-ge v0, v2, :cond_1e
new-instance v0, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
goto :goto_d
:cond_1e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_d
.end method
.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 8
:try_start_0
const-string v0, "entities"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_70
const-string v0, "entities"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "description"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "urls"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_70
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "description"
invoke-static {v0, p0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "entities"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "description"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "urls"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_43
if-ltz v0, :cond_6b
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "indices"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getInt(I)I
move-result v4
const-string v5, "indices"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getInt(I)I
move-result v5
const-string v6, "display_url"
invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, -0x1
goto :goto_43
:cond_6b
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_6f
:cond_6f
return-object v0
:cond_70
const-string v0, "description"
invoke-static {v0, p0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6f
const-string v1, "null"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6f
const-string v0, ""
:try_end_82
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83
goto :goto_6f
:catch_83
move-exception v0
const-string v1, "User"
const-string v2, "error extracting user description"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
goto :goto_6f
.end method
.method public static a(Ljava/lang/String;)Ljava/util/List;
.registers 7
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_10
return-object v0
:try_start_11
:cond_11
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:try_start_16
:try_end_16
.catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_66
const-string v0, "{"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6d
const-string v0, "User"
const-string v2, "Creating JSONObject"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "users"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const-string v3, "next_cursor"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_57
const-string v3, "next_cursor"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
sput-wide v2, Lcom/twidroid/model/twitter/User;->u:J
:try_end_40
.catch Lorg/json/JSONException; {:try_start_16 .. :try_end_40} :catch_5c
:goto_40
const/4 v2, 0x0
:goto_41
:try_start_41
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v2, v3, :cond_7a
invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
new-instance v4, Lcom/twidroid/model/twitter/User;
const/4 v5, 0x0
invoke-direct {v4, v3, v5}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_54
.catch Lorg/json/JSONException; {:try_start_41 .. :try_end_54} :catch_66
add-int/lit8 v2, v2, 0x1
goto :goto_41
:cond_57
const-wide/16 v2, -0x1
:try_start_59
sput-wide v2, Lcom/twidroid/model/twitter/User;->u:J
:try_end_5b
.catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5b} :catch_5c
goto :goto_40
:catch_5c
move-exception v0
:try_start_5d
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
:try_end_65
.catch Lorg/json/JSONException; {:try_start_5d .. :try_end_65} :catch_66
goto :goto_40
:catch_66
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_6d
:try_start_6d
const-string v0, "User"
const-string v2, "Creating JSONOArray instead of JSONObject"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
:try_end_79
.catch Lorg/json/JSONException; {:try_start_6d .. :try_end_79} :catch_5c
goto :goto_40
:cond_7a
move-object v0, v1
goto :goto_10
.end method
.method public static b()J
.registers 2
sget-wide v0, Lcom/twidroid/model/twitter/User;->u:J
return-wide v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/twidroid/model/twitter/User;->A:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/twitter/User;->A:I
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/User;->z:Z
return-void
.end method
.method public c()Ljava/lang/String;
.registers 5
const/16 v3, 0x2e
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x4
if-le v0, v1, :cond_49
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/twidroid/model/twitter/User;->b:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_48
return-object v0
:cond_49
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/twidroid/model/twitter/User;->b:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_48
:cond_7d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/twidroid/model/twitter/User;->b:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_48
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, ""
goto :goto_6
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/User;->b:J
return-wide v0
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
check-cast p1, Lcom/twidroid/model/twitter/User;
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->m:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->m:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4d
move v0, v1
goto :goto_4
:cond_4d
iget-boolean v2, p0, Lcom/twidroid/model/twitter/User;->s:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->s:Z
if-eq v2, v3, :cond_55
move v0, v1
goto :goto_4
:cond_55
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->k:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->k:J
cmp-long v2, v2, v4
if-eqz v2, :cond_5f
move v0, v1
goto :goto_4
:cond_5f
iget v2, p0, Lcom/twidroid/model/twitter/User;->j:I
iget v3, p1, Lcom/twidroid/model/twitter/User;->j:I
if-eq v2, v3, :cond_67
move v0, v1
goto :goto_4
:cond_67
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->l:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->l:J
cmp-long v2, v2, v4
if-eqz v2, :cond_71
move v0, v1
goto :goto_4
:cond_71
iget-boolean v2, p0, Lcom/twidroid/model/twitter/User;->q:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->q:Z
if-eq v2, v3, :cond_79
move v0, v1
goto :goto_4
:cond_79
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->b:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_83
move v0, v1
goto :goto_4
:cond_83
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->r:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->r:J
cmp-long v2, v2, v4
if-eqz v2, :cond_8e
move v0, v1
goto/16 :goto_4
:cond_8e
iget-boolean v2, p0, Lcom/twidroid/model/twitter/User;->z:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->z:Z
if-eq v2, v3, :cond_97
move v0, v1
goto/16 :goto_4
:cond_97
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
if-nez v2, :cond_a2
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
if-eqz v2, :cond_af
move v0, v1
goto/16 :goto_4
:cond_a2
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_af
move v0, v1
goto/16 :goto_4
:cond_af
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
if-nez v2, :cond_ba
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
if-eqz v2, :cond_c7
move v0, v1
goto/16 :goto_4
:cond_ba
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c7
move v0, v1
goto/16 :goto_4
:cond_c7
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
if-nez v2, :cond_d2
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
if-eqz v2, :cond_df
move v0, v1
goto/16 :goto_4
:cond_d2
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_df
move v0, v1
goto/16 :goto_4
:cond_df
iget-boolean v2, p0, Lcom/twidroid/model/twitter/User;->f:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->f:Z
if-eq v2, v3, :cond_e8
move v0, v1
goto/16 :goto_4
:cond_e8
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
if-nez v2, :cond_f3
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
if-eqz v2, :cond_100
move v0, v1
goto/16 :goto_4
:cond_f3
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_100
move v0, v1
goto/16 :goto_4
:cond_100
iget-wide v2, p0, Lcom/twidroid/model/twitter/User;->n:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/User;->n:J
cmp-long v2, v2, v4
if-eqz v2, :cond_10b
move v0, v1
goto/16 :goto_4
:cond_10b
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
if-nez v2, :cond_116
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
if-eqz v2, :cond_123
move v0, v1
goto/16 :goto_4
:cond_116
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_123
move v0, v1
goto/16 :goto_4
:cond_123
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
if-nez v2, :cond_12e
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
if-eqz v2, :cond_13b
move v0, v1
goto/16 :goto_4
:cond_12e
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2, v3}, Lcom/twidroid/model/twitter/Tweet;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_13b
move v0, v1
goto/16 :goto_4
:cond_13b
iget-boolean v2, p0, Lcom/twidroid/model/twitter/User;->v:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->v:Z
if-eq v2, v3, :cond_144
move v0, v1
goto/16 :goto_4
:cond_144
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
if-nez v2, :cond_14f
iget-object v2, p1, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto/16 :goto_4
:cond_14f
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 10
const/16 v3, 0x4d5
const/16 v2, 0x4cf
const/16 v8, 0x20
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
if-nez v0, :cond_b6
move v0, v1
:goto_c
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
if-nez v0, :cond_be
move v0, v1
:goto_15
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->m:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->m:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->s:Z
if-eqz v0, :cond_c6
move v0, v2
:goto_27
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->k:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->k:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget v4, p0, Lcom/twidroid/model/twitter/User;->j:I
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->l:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->l:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
if-eqz v0, :cond_c9
move v0, v2
:goto_48
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->b:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->b:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->r:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->r:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->z:Z
if-eqz v0, :cond_cc
move v0, v2
:goto_64
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
if-nez v0, :cond_ce
move v0, v1
:goto_6c
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
if-nez v0, :cond_d5
move v0, v1
:goto_74
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
if-nez v0, :cond_dc
move v0, v1
:goto_7c
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
if-eqz v0, :cond_e3
move v0, v2
:goto_84
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
if-nez v0, :cond_e5
move v0, v1
:goto_8c
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/twidroid/model/twitter/User;->n:J
iget-wide v6, p0, Lcom/twidroid/model/twitter/User;->n:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
if-nez v0, :cond_ec
move v0, v1
:goto_9e
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_f3
move v0, v1
:goto_a6
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-boolean v4, p0, Lcom/twidroid/model/twitter/User;->v:Z
if-eqz v4, :cond_fa
:goto_ad
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
if-nez v2, :cond_fc
:goto_b4
add-int/2addr v0, v1
return v0
:cond_b6
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_c
:cond_be
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_15
:cond_c6
move v0, v3
goto/16 :goto_27
:cond_c9
move v0, v3
goto/16 :goto_48
:cond_cc
move v0, v3
goto :goto_64
:cond_ce
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6c
:cond_d5
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_74
:cond_dc
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_7c
:cond_e3
move v0, v3
goto :goto_84
:cond_e5
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_8c
:cond_ec
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_9e
:cond_f3
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->hashCode()I
move-result v0
goto :goto_a6
:cond_fa
move v2, v3
goto :goto_ad
:cond_fc
iget-object v1, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_b4
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
return-object v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->s:Z
return v0
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
return-object v0
.end method
.method public n()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->z:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->f:Z
if-eqz v0, :cond_89
move v0, v1
:goto_20
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/model/twitter/User;->j:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->k:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->l:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->m:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->n:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->q:Z
if-eqz v0, :cond_8b
move v0, v1
:goto_50
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lcom/twidroid/model/twitter/User;->r:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->s:Z
if-eqz v0, :cond_8d
move v0, v1
:goto_5d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->x:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
sget-wide v3, Lcom/twidroid/model/twitter/User;->u:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lcom/twidroid/model/twitter/User;->v:Z
if-eqz v0, :cond_8f
:goto_73
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->i:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
if-eqz v0, :cond_91
iget-object v0, p0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
:goto_85
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
:cond_89
move v0, v2
goto :goto_20
:cond_8b
move v0, v2
goto :goto_50
:cond_8d
move v0, v2
goto :goto_5d
:cond_8f
move v1, v2
goto :goto_73
:cond_91
const-wide/16 v0, 0x0
goto :goto_85
.end method