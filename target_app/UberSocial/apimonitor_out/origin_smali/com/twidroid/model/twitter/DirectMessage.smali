.class public Lcom/twidroid/model/twitter/DirectMessage;
.super Lcom/twidroid/model/twitter/CommunicationEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final K:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.twidroid.directmessage"

.field public static final L:Ljava/lang/String; = "vnd.android.cursor.item/vnd.twidroid.directmessage"

.field public static final M:I = 0x1

.field public static final N:I = 0x2

.field public static final O:Ljava/lang/String; = "target_user_id"

.field public static final P:Ljava/lang/String; = "target_screenname"

.field public static final Q:Ljava/lang/String; = "target_username"

.field public static final R:Ljava/lang/String; = "target_avatar"

.field public static final S:Ljava/lang/String; = "is_outbox"

.field public static final T:Ljava/lang/String; = "is_inner_circle"

.field public static final U:[Ljava/lang/String; = null

.field private static final aa:Ljava/lang/String; = "DirectMessage"


# instance fields
.field public V:Ljava/lang/String;

.field public W:J

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created_at"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user_screenname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_avatar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "readflag"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_inner_circle"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "target_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "target_screenname"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "target_username"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "target_avatar"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_outbox"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "spans"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twidroid/model/twitter/DirectMessage;->U:[Ljava/lang/String;

    new-instance v0, Lcom/twidroid/model/twitter/DirectMessage$1;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/DirectMessage$1;-><init>()V

    sput-object v0, Lcom/twidroid/model/twitter/DirectMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/twidroid/ui/StringUrlSpan;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 28

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(JJLcom/twidroid/ui/StringUrlSpan;)V

    iput-object p6, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    iput-object p7, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    move/from16 v0, p11

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->F:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->X:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7e

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_80

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->F:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->X:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_82

    :goto_53
    iput-boolean v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    sget-object v0, Lcom/ubermedia/model/twitter/UrlEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/UrlEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/MediaUrlEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/MediaUrlEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/HashtagEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/HashtagEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/MentionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/MentionEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    return-void

    :cond_7e
    move v0, v2

    goto :goto_2a

    :cond_80
    move v0, v2

    goto :goto_33

    :cond_82
    move v1, v2

    goto :goto_53
.end method

.method public static a(Ljava/lang/String;J)Ljava/util/List;
    .registers 10

    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1f
    return-object v0

    :cond_20
    :try_start_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_2b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2e} :catch_60

    move-result v1

    if-ge v2, v1, :cond_1f

    :try_start_31
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/model/twitter/DirectMessage;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v1

    iput-wide p1, v1, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3e} :catch_42

    :goto_3e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    :catch_42
    move-exception v1

    :try_start_43
    const-string v4, "DirectMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JsonException in getMessages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_5f} :catch_60

    goto :goto_3e

    :catch_60
    move-exception v0

    :try_start_61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_85} :catch_85

    :catch_85
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter error"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    :try_start_8e
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_a2} :catch_85

    :cond_a2
    :try_start_a2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter error"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c4
    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static final b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/DirectMessage;
    .registers 24

    const-string v1, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "created_at"

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/ubermedia/b/a/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sget-object v1, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v12

    const/4 v1, 0x0

    const-wide/16 v17, -0x1

    const-string v4, "recipient_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string v1, "recipient_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    const/4 v1, 0x1

    :cond_3b
    const-wide/16 v7, -0x1

    const-string v4, "sender_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    const-string v1, "sender_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v15, 0x0

    :goto_52
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "sender"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e4

    const-string v10, "sender"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object v13, v10

    :goto_69
    if-eqz v13, :cond_f9

    const-string v1, "name"

    const/4 v4, 0x0

    invoke-static {v13, v1, v4}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "screen_name"

    const/4 v4, 0x0

    invoke-static {v13, v1, v4}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "id"

    const-wide/16 v9, -0x1

    invoke-static {v13, v1, v9, v10}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "profile_image_url"

    const/4 v4, 0x0

    invoke-static {v13, v1, v4}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_88
    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const-string v1, "recipient"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "recipient"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "name"

    const/4 v13, 0x0

    invoke-static {v1, v4, v13}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "screen_name"

    const/4 v13, 0x0

    invoke-static {v1, v4, v13}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "profile_image_url"

    const/4 v13, 0x0

    invoke-static {v1, v4, v13}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_b5
    const-string v1, "entities"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    new-instance v4, Lcom/twidroid/ui/StringUrlSpan;

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-direct {v4, v0, v1}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/model/twitter/DirectMessage;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/twidroid/model/twitter/DirectMessage;-><init>(JLcom/twidroid/ui/StringUrlSpan;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    if-eqz v22, :cond_d3

    move-object/from16 v0, v22

    invoke-static {v1, v0}, Lcom/twidroid/model/twitter/DirectMessage;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lorg/json/JSONObject;)V

    :cond_d3
    iget-object v2, v1, Lcom/twidroid/model/twitter/DirectMessage;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    iget-object v3, v1, Lcom/twidroid/model/twitter/DirectMessage;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    iget-object v4, v1, Lcom/twidroid/model/twitter/DirectMessage;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    iget-object v5, v1, Lcom/twidroid/model/twitter/DirectMessage;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3, v4, v5}, Lcom/twidroid/model/twitter/DirectMessage;->a(Ljava/lang/String;[Lcom/ubermedia/model/twitter/MentionEntity;[Lcom/ubermedia/model/twitter/HashtagEntity;[Lcom/ubermedia/model/twitter/UrlEntity;[Lcom/ubermedia/model/twitter/MediaUrlEntity;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/model/twitter/DirectMessage;->y:Lcom/twidroid/ui/StringUrlSpan;

    return-object v1

    :cond_e4
    const-string v11, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_fd

    const-string v10, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object v13, v10

    goto/16 :goto_69

    :cond_f9
    move-wide v10, v7

    move-object v7, v4

    move-object v8, v1

    goto :goto_88

    :cond_fd
    move-object v13, v10

    goto/16 :goto_69

    :cond_100
    move v15, v1

    goto/16 :goto_52
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Z)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    :goto_8
    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    goto :goto_8

    :cond_14
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    goto :goto_10
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    goto :goto_6
.end method

.method public c()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/DirectMessage;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->X:Ljava/lang/String;

    :goto_a
    invoke-virtual {p0, v1, v0}, Lcom/twidroid/model/twitter/DirectMessage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    goto :goto_a
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->w:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->x:J

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->y:Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->y:Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/DirectMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, ""

    goto :goto_c

    :cond_29
    const/4 v0, 0x0

    goto :goto_20

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public v()J
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    if-eqz v0, :cond_5e

    move v0, v1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->F:Z

    if-eqz v0, :cond_60

    move v0, v1

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->Z:Z

    if-eqz v0, :cond_62

    :goto_46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/DirectMessage;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :cond_5e
    move v0, v2

    goto :goto_23

    :cond_60
    move v0, v2

    goto :goto_2b

    :cond_62
    move v1, v2

    goto :goto_46
.end method
