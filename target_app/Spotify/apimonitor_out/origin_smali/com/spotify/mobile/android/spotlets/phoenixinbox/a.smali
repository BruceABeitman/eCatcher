.class public final Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const-string v1, "unknown"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const-string v1, "track"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const-string v1, "artist"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const-string v1, "playlist"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "is_seen"

    aput-object v1, v0, v4

    const-string v1, "message"

    aput-object v1, v0, v5

    const-string v1, "time_added"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "added_by_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "added_by_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "added_by_icon_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_user_browsable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private r()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->z:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->y:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->w:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->x:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->c:I

    return v0
.end method

.method public final a(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->A:Z

    if-eqz v0, :cond_11

    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->B:Z

    if-eqz v0, :cond_1d

    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    goto :goto_10
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 6

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->c:I

    sget-object v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->b:Ljava/util/Map;

    const/4 v1, 0x7

    const-string v2, "unknown"

    invoke-static {p1, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->g:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->h:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->j:Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->f:Z

    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->e:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->d:I

    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->A:Z

    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->B:Z

    const/4 v0, 0x0

    :try_start_57
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    new-instance v1, Lorg/json/JSONObject;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    packed-switch v0, :pswitch_data_208

    :goto_69
    return-void

    :pswitch_6a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    const-string v0, "album_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    const-string v0, "artist_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    const-string v0, "album_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    const-string v0, "artist_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    const-string v0, "album_image_small_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v0, "album_image_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_ae
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->o:Ljava/lang/String;

    const-string v0, "is_queueable"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->z:Z

    const-string v0, "is_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    const-string v0, "is_radio_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->w:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->x:Z
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_cf} :catch_d0

    goto :goto_69

    :catch_d0
    move-exception v0

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r()V

    goto :goto_69

    :pswitch_d5
    const/4 v0, 0x0

    :try_start_d6
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    const-string v0, "artist_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    const-string v0, "artist_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    const-string v0, "artist_image_small_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string v0, "artist_image_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_10f
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->z:Z

    const-string v0, "is_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    const-string v0, "is_radio_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->x:Z

    goto/16 :goto_69

    :pswitch_12c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    const-string v0, "is_starred"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->A:Z

    const-string v0, "is_toptracks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->B:Z

    const-string v0, "playlist_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    const-string v0, "playlist_owner_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    const-string v0, "playlist_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    const-string v0, "playlist_image_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->z:Z

    const-string v0, "is_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    const-string v0, "is_radio_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->x:Z

    goto/16 :goto_69

    :pswitch_189
    const-string v0, "track_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    const-string v0, "album_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    const-string v0, "artist_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    const-string v0, "track_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    const-string v0, "album_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    const-string v0, "artist_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    const-string v0, "album_image_small_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d7

    const-string v0, "album_image_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d7
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->o:Ljava/lang/String;

    const-string v0, "is_queueable"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->z:Z

    const-string v0, "is_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    const-string v0, "is_radio_available"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->y:Z

    const-string v0, "is_album_browsable"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->w:Z

    const-string v0, "is_artist_browsable"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->x:Z

    goto/16 :goto_69

    :pswitch_203
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r()V
    :try_end_206
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_206} :catch_d0

    goto/16 :goto_69

    :pswitch_data_208
    .packed-switch -0x1
        :pswitch_203
        :pswitch_189
        :pswitch_6a
        :pswitch_d5
        :pswitch_12c
    .end packed-switch
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->d:I

    return v0
.end method

.method public final b(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    const v0, 0x7f0f024a

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    const-string v0, ""

    goto :goto_14

    :cond_1d
    const v0, 0x7f0f0246

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->m:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->f:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->j:Z

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->k:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->v:Z

    return v0
.end method
