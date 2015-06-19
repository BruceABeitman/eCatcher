.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Ljava/lang/Object;
.field private static final AA:Lcom/google/android/gms/cast/MediaMetadata$a; = null
.field private static final Az:[Ljava/lang/String; = null
.field public static final KEY_ALBUM_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
.field public static final KEY_ALBUM_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_TITLE"
.field public static final KEY_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ARTIST"
.field public static final KEY_BROADCAST_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.BROADCAST_DATE"
.field public static final KEY_COMPOSER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.COMPOSER"
.field public static final KEY_CREATION_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.CREATION_DATE"
.field public static final KEY_DISC_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.DISC_NUMBER"
.field public static final KEY_EPISODE_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.EPISODE_NUMBER"
.field public static final KEY_HEIGHT:Ljava/lang/String; = "com.google.android.gms.cast.metadata.HEIGHT"
.field public static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"
.field public static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"
.field public static final KEY_LOCATION_NAME:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_NAME"
.field public static final KEY_RELEASE_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.RELEASE_DATE"
.field public static final KEY_SEASON_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SEASON_NUMBER"
.field public static final KEY_SERIES_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SERIES_TITLE"
.field public static final KEY_STUDIO:Ljava/lang/String; = "com.google.android.gms.cast.metadata.STUDIO"
.field public static final KEY_SUBTITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SUBTITLE"
.field public static final KEY_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TITLE"
.field public static final KEY_TRACK_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TRACK_NUMBER"
.field public static final KEY_WIDTH:Ljava/lang/String; = "com.google.android.gms.cast.metadata.WIDTH"
.field public static final MEDIA_TYPE_GENERIC:I = 0x0
.field public static final MEDIA_TYPE_MOVIE:I = 0x1
.field public static final MEDIA_TYPE_MUSIC_TRACK:I = 0x3
.field public static final MEDIA_TYPE_PHOTO:I = 0x4
.field public static final MEDIA_TYPE_TV_SHOW:I = 0x2
.field public static final MEDIA_TYPE_USER:I = 0x64
.field private final AB:Landroid/os/Bundle;
.field private AC:I
.field private final zN:Ljava/util/List;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x4
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const/4 v2, 0x0
aput-object v2, v0, v1
const-string v1, "String"
aput-object v1, v0, v3
const-string v1, "int"
aput-object v1, v0, v4
const-string v1, "double"
aput-object v1, v0, v6
const-string v1, "ISO-8601 date String"
aput-object v1, v0, v5
sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->Az:[Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-direct {v0}, Lcom/google/android/gms/cast/MediaMetadata$a;-><init>()V
const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"
const-string v2, "creationDateTime"
invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"
const-string v2, "releaseDate"
invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"
const-string v2, "originalAirdate"
invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
const-string v2, "title"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"
const-string v2, "subtitle"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.ARTIST"
const-string v2, "artist"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
const-string v2, "albumArtist"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"
const-string v2, "albumName"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"
const-string v2, "composer"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"
const-string v2, "discNumber"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"
const-string v2, "trackNumber"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"
const-string v2, "season"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"
const-string v2, "episode"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"
const-string v2, "seriesTitle"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.STUDIO"
const-string v2, "studio"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.WIDTH"
const-string v2, "width"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"
const-string v2, "height"
invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"
const-string v2, "location"
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"
const-string v2, "latitude"
invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"
const-string v2, "longitude"
invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;
move-result-object v0
sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
iput p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
return-void
.end method
.method private varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)V
.registers 9
:try_start_0
array-length v1, p2
const/4 v0, 0x0
:goto_2
if-ge v0, v1, :cond_4d
aget-object v2, p2, v0
iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_11
:goto_e
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_11
sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I
move-result v3
packed-switch v3, :pswitch_data_8a
goto :goto_e
:pswitch_1b
sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_e
:catch_2b
move-exception v0
:cond_2c
return-void
:pswitch_2d
sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
goto :goto_e
:pswitch_3d
sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v4, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v4
invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
goto :goto_e
:cond_4d
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_57
:cond_57
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v2, "com.google."
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_57
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
instance-of v3, v2, Ljava/lang/String;
if-eqz v3, :cond_79
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_57
:cond_79
instance-of v3, v2, Ljava/lang/Integer;
if-eqz v3, :cond_81
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_57
:cond_81
instance-of v3, v2, Ljava/lang/Double;
if-eqz v3, :cond_57
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_88
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_88} :catch_2b
goto :goto_57
nop
:pswitch_data_8a
.packed-switch 0x1
:pswitch_1b
:pswitch_2d
:pswitch_3d
:pswitch_1b
.end packed-switch
.end method
.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
.registers 10
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/os/Bundle;->size()I
move-result v0
invoke-virtual {p2}, Landroid/os/Bundle;->size()I
move-result v1
if-eq v0, v1, :cond_d
move v0, v5
:goto_c
return v0
:cond_d
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_15
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
instance-of v1, v2, Landroid/os/Bundle;
if-eqz v1, :cond_3f
instance-of v1, v4, Landroid/os/Bundle;
if-eqz v1, :cond_3f
move-object v1, v2
check-cast v1, Landroid/os/Bundle;
move-object v3, v4
check-cast v3, Landroid/os/Bundle;
invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
move-result v1
if-nez v1, :cond_3f
move v0, v5
goto :goto_c
:cond_3f
if-nez v2, :cond_4b
if-nez v4, :cond_49
invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
:cond_49
move v0, v5
goto :goto_c
:cond_4b
invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
move v0, v5
goto :goto_c
:cond_53
const/4 v0, 0x1
goto :goto_c
.end method
.method private varargs b(Lorg/json/JSONObject;[Ljava/lang/String;)V
.registers 11
new-instance v3, Ljava/util/HashSet;
invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
:try_start_9
invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v4
:goto_d
:cond_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_95
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "metadataType"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d
sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata$a;->af(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_83
invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
:try_end_2c
.catch Lorg/json/JSONException; {:try_start_9 .. :try_end_2c} :catch_94
move-result v2
if-eqz v2, :cond_d
:try_start_2f
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_d
sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I
move-result v2
packed-switch v2, :pswitch_data_b8
goto :goto_d
:pswitch_3f
instance-of v2, v1, Ljava/lang/String;
if-eqz v2, :cond_d
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:catch_4b
move-exception v1
goto :goto_d
:pswitch_4d
instance-of v2, v1, Ljava/lang/String;
if-eqz v2, :cond_d
move-object v0, v1
check-cast v0, Ljava/lang/String;
move-object v2, v0
invoke-static {v2}, Lcom/google/android/gms/internal/gt;->aq(Ljava/lang/String;)Ljava/util/Calendar;
move-result-object v2
if-eqz v2, :cond_d
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:pswitch_63
instance-of v2, v1, Ljava/lang/Integer;
if-eqz v2, :cond_d
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto :goto_d
:pswitch_73
instance-of v2, v1, Ljava/lang/Double;
if-eqz v2, :cond_d
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v1, Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
:try_end_82
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_82} :catch_4b
goto :goto_d
:try_start_83
:cond_83
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
instance-of v5, v2, Ljava/lang/String;
if-eqz v5, :cond_96
iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v2, Ljava/lang/String;
invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d
:catch_94
move-exception v1
:cond_95
return-void
:cond_96
instance-of v5, v2, Ljava/lang/Integer;
if-eqz v5, :cond_a7
iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_d
:cond_a7
instance-of v5, v2, Ljava/lang/Double;
if-eqz v5, :cond_d
iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
check-cast v2, Ljava/lang/Double;
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
:try_end_b6
.catch Lorg/json/JSONException; {:try_start_83 .. :try_end_b6} :catch_94
goto/16 :goto_d
:pswitch_data_b8
.packed-switch 0x1
:pswitch_3f
:pswitch_63
:pswitch_73
:pswitch_4d
.end packed-switch
.end method
.method private d(Ljava/lang/String;I)V
.registers 6
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "null and empty keys are not allowed"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->AA:Lcom/google/android/gms/cast/MediaMetadata$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I
move-result v0
if-eq v0, p2, :cond_3f
if-eqz v0, :cond_3f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Value for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " must be a "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->Az:[Ljava/lang/String;
aget-object v2, v2, p2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
return-void
.end method
.method public addImage(Lcom/google/android/gms/common/images/WebImage;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 9
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->clear()V
iput v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
:try_start_a
const-string v0, "metadataType"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
:goto_12
:try_end_12
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_12} :catch_c0
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/gt;->a(Ljava/util/List;Lorg/json/JSONObject;)V
iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
packed-switch v0, :pswitch_data_c4
new-array v0, v2, [Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
:goto_21
return-void
:pswitch_22
new-array v0, v6, [Ljava/lang/String;
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
aput-object v1, v0, v2
const-string v1, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v1, v0, v3
const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"
aput-object v1, v0, v4
const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v1, v0, v5
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_21
:pswitch_38
new-array v0, v6, [Ljava/lang/String;
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
aput-object v1, v0, v2
const-string v1, "com.google.android.gms.cast.metadata.STUDIO"
aput-object v1, v0, v3
const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"
aput-object v1, v0, v4
const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v1, v0, v5
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_21
:pswitch_4e
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
aput-object v1, v0, v2
const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"
aput-object v1, v0, v3
const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"
aput-object v1, v0, v4
const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"
aput-object v1, v0, v5
const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"
aput-object v1, v0, v6
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_21
:pswitch_69
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
aput-object v1, v0, v2
const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"
aput-object v1, v0, v3
const-string v1, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v1, v0, v4
const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
aput-object v1, v0, v5
const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"
aput-object v1, v0, v6
const/4 v1, 0x5
const-string v2, "com.google.android.gms.cast.metadata.TRACK_NUMBER"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "com.google.android.gms.cast.metadata.DISC_NUMBER"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v2, v0, v1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_21
:pswitch_94
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const-string v1, "com.google.android.gms.cast.metadata.TITLE"
aput-object v1, v0, v2
const-string v1, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v1, v0, v3
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"
aput-object v1, v0, v4
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"
aput-object v1, v0, v5
const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"
aput-object v1, v0, v6
const/4 v1, 0x5
const-string v2, "com.google.android.gms.cast.metadata.WIDTH"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "com.google.android.gms.cast.metadata.HEIGHT"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"
aput-object v2, v0, v1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto/16 :goto_21
:catch_c0
move-exception v0
goto/16 :goto_12
nop
:pswitch_data_c4
.packed-switch 0x0
:pswitch_22
:pswitch_38
:pswitch_4e
:pswitch_69
:pswitch_94
.end packed-switch
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public clearImages()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public containsKey(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public dU()Lorg/json/JSONObject;
.registers 9
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_a
const-string v1, "metadataType"
iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:goto_11
:try_end_11
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_bf
iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-static {v0, v1}, Lcom/google/android/gms/internal/gt;->a(Lorg/json/JSONObject;Ljava/util/List;)V
iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
packed-switch v1, :pswitch_data_c2
new-array v1, v3, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
:goto_20
return-object v0
:pswitch_21
new-array v1, v7, [Ljava/lang/String;
const-string v2, "com.google.android.gms.cast.metadata.TITLE"
aput-object v2, v1, v3
const-string v2, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v2, v1, v4
const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"
aput-object v2, v1, v5
const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v2, v1, v6
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_20
:pswitch_37
new-array v1, v7, [Ljava/lang/String;
const-string v2, "com.google.android.gms.cast.metadata.TITLE"
aput-object v2, v1, v3
const-string v2, "com.google.android.gms.cast.metadata.STUDIO"
aput-object v2, v1, v4
const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"
aput-object v2, v1, v5
const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v2, v1, v6
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_20
:pswitch_4d
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const-string v2, "com.google.android.gms.cast.metadata.TITLE"
aput-object v2, v1, v3
const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"
aput-object v2, v1, v4
const-string v2, "com.google.android.gms.cast.metadata.SEASON_NUMBER"
aput-object v2, v1, v5
const-string v2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"
aput-object v2, v1, v6
const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"
aput-object v2, v1, v7
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_20
:pswitch_68
const/16 v1, 0x8
new-array v1, v1, [Ljava/lang/String;
const-string v2, "com.google.android.gms.cast.metadata.TITLE"
aput-object v2, v1, v3
const-string v2, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v2, v1, v4
const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"
aput-object v2, v1, v5
const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
aput-object v2, v1, v6
const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"
aput-object v2, v1, v7
const/4 v2, 0x5
const-string v3, "com.google.android.gms.cast.metadata.TRACK_NUMBER"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "com.google.android.gms.cast.metadata.DISC_NUMBER"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto :goto_20
:pswitch_93
const/16 v1, 0x8
new-array v1, v1, [Ljava/lang/String;
const-string v2, "com.google.android.gms.cast.metadata.TITLE"
aput-object v2, v1, v3
const-string v2, "com.google.android.gms.cast.metadata.ARTIST"
aput-object v2, v1, v4
const-string v2, "com.google.android.gms.cast.metadata.LOCATION_NAME"
aput-object v2, v1, v5
const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"
aput-object v2, v1, v6
const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"
aput-object v2, v1, v7
const/4 v2, 0x5
const-string v3, "com.google.android.gms.cast.metadata.WIDTH"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "com.google.android.gms.cast.metadata.HEIGHT"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, "com.google.android.gms.cast.metadata.CREATION_DATE"
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V
goto/16 :goto_20
:catch_bf
move-exception v1
goto/16 :goto_11
:pswitch_data_c2
.packed-switch 0x0
:pswitch_21
:pswitch_37
:pswitch_4d
:pswitch_68
:pswitch_93
.end packed-switch
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
instance-of v2, p1, Lcom/google/android/gms/cast/MediaMetadata;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-direct {p0, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
move-result v2
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_21
move v0, v1
goto :goto_4
.end method
.method public getDate(Ljava/lang/String;)Ljava/util/Calendar;
.registers 3
const/4 v0, 0x4
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-static {v0}, Lcom/google/android/gms/internal/gt;->aq(Ljava/lang/String;)Ljava/util/Calendar;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public getDateAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x4
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDouble(Ljava/lang/String;)D
.registers 4
const/4 v0, 0x3
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v0
return-wide v0
.end method
.method public getImages()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
return-object v0
.end method
.method public getInt(Ljava/lang/String;)I
.registers 3
const/4 v0, 0x2
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getMediaType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AC:I
return v0
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hasImages()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public hashCode()I
.registers 5
const/16 v0, 0x11
iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
mul-int/lit8 v1, v1, 0x1f
iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_d
:cond_28
mul-int/lit8 v0, v1, 0x1f
iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zN:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public putDate(Ljava/lang/String;Ljava/util/Calendar;)V
.registers 5
const/4 v0, 0x4
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-static {p2}, Lcom/google/android/gms/internal/gt;->a(Ljava/util/Calendar;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public putDouble(Ljava/lang/String;D)V
.registers 5
const/4 v0, 0x3
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
return-void
.end method
.method public putInt(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x2
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public putString(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AB:Landroid/os/Bundle;
invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method