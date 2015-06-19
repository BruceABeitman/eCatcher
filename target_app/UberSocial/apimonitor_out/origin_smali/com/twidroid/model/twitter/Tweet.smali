.class public Lcom/twidroid/model/twitter/Tweet;
.super Lcom/twidroid/model/twitter/CommunicationEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final K:Ljava/lang/String; = "web"

.field public static final L:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.twidroid.tweet"

.field public static final M:Ljava/lang/String; = "vnd.android.cursor.item/vnd.twidroid.tweet"

.field public static final N:Ljava/lang/String; = "tsource"

.field public static final O:Ljava/lang/String; = "purge"

.field public static final P:Ljava/lang/String; = "preview_url"

.field public static final Q:Ljava/lang/String; = "favorite"

.field public static final R:Ljava/lang/String; = "target_user_id"

.field public static final S:Ljava/lang/String; = "target_screenname"

.field public static final T:Ljava/lang/String; = "target_username"

.field public static final U:Ljava/lang/String; = "in_reply_to_status_id"

.field public static final V:Ljava/lang/String; = "is_public"

.field public static final W:Ljava/lang/String; = "is_inner_circle"

.field public static final X:Ljava/lang/String; = "verified"

.field public static final Y:Ljava/lang/String; = "retweet_count"

.field public static final Z:Ljava/lang/String; = "latitude"

.field private static final aC:Ljava/lang/String; = "com.uberbocial.Tweet"

.field public static final aa:Ljava/lang/String; = "longitude"

.field public static final ab:Ljava/lang/String; = "retweeted_status_id"

.field public static final ac:Ljava/lang/String; = "retweeted_username"

.field public static final ad:Ljava/lang/String; = "location_name"

.field public static final ae:Ljava/lang/String; = "retweeted_screenname"

.field public static final af:[Ljava/lang/String; = null

.field public static final as:I = 0x1

.field public static final at:I = 0x2


# instance fields
.field public aA:Z

.field public aB:I

.field public ag:J

.field public ah:J

.field public ai:Ljava/lang/String;

.field public aj:Z

.field public ak:Ljava/lang/String;

.field public al:D

.field public am:D

.field public an:Ljava/lang/String;

.field public ao:J

.field public ap:Ljava/lang/String;

.field public aq:Ljava/lang/String;

.field public ar:J

.field public au:Z

.field public av:I

.field public aw:Ljava/lang/String;

.field public ax:Z

.field public ay:Ljava/lang/String;

.field public az:Lcom/twidroid/model/twitter/User;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1e

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

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tsource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "purge"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "preview_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "readflag"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_inner_circle"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "target_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "target_screenname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "target_username"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "in_reply_to_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is_public"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "retweet_count"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "retweeted_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retweeted_username"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "location_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "spans"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "retweeted_screenname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twidroid/model/twitter/Tweet;->af:[Ljava/lang/String;

    new-instance v0, Lcom/twidroid/model/twitter/Tweet$1;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/Tweet$1;-><init>()V

    sput-object v0, Lcom/twidroid/model/twitter/Tweet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;DDJZZILjava/lang/String;Ljava/lang/String;)V
    .registers 40

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p6

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(JJLcom/twidroid/ui/StringUrlSpan;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-string v2, "null"

    iput-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    const-string v2, "null"

    iput-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    const-string v2, "web"

    iput-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    iput-wide p3, p0, Lcom/twidroid/model/twitter/Tweet;->C:J

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->B:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    move/from16 v0, p15

    iput v0, p0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->F:Z

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    move/from16 v0, p29

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const-class v0, Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/twidroid/ui/StringUrlSpan;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(JJLcom/twidroid/ui/StringUrlSpan;)V

    iput-boolean v7, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-string v0, "null"

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    iput-boolean v6, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    iput-boolean v7, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ag:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_111

    move v0, v6

    :goto_5e
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_114

    move v0, v6

    :goto_97
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_116

    move v0, v6

    :goto_a0
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->F:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_118

    move v0, v6

    :goto_a9
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_11a

    move v0, v6

    :goto_be
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    const-class v0, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_11c

    :goto_da
    iput-boolean v6, p0, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    sget-object v0, Lcom/ubermedia/model/twitter/UrlEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/UrlEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/MediaUrlEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/MediaUrlEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/HashtagEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/HashtagEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    sget-object v0, Lcom/ubermedia/model/twitter/MentionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/model/twitter/MentionEntity;

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    return-void

    :cond_111
    move v0, v7

    goto/16 :goto_5e

    :cond_114
    move v0, v7

    goto :goto_97

    :cond_116
    move v0, v7

    goto :goto_a0

    :cond_118
    move v0, v7

    goto :goto_a9

    :cond_11a
    move v0, v7

    goto :goto_be

    :cond_11c
    move v6, v7

    goto :goto_da
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    return-object p2

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_11
    return-object v0

    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_22
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_11

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v4

    const-string v5, "from_user_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "from_user_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    :cond_40
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    :cond_50
    iget-object v3, v4, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/ubermedia/b/a/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\<.*?>"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/twidroid/model/twitter/Tweet;->au:Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_67} :catch_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v0, p0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/util/List;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1d
    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_2c} :catch_63
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_121

    move-result v1

    if-ge v2, v1, :cond_1d

    :try_start_2f
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v1

    iput p1, v1, Lcom/twidroid/model/twitter/Tweet;->aB:I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_39} :catch_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_121

    if-eqz p2, :cond_3e

    :try_start_3b
    invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/model/twitter/Tweet;)V
    :try_end_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_3e} :catch_128
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_3e} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_121

    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_41} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_121

    :goto_41
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :catch_45
    move-exception v1

    :try_start_46
    const-string v4, "com.uberbocial.Tweet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JsonException in getTweets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_62} :catch_63
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_62} :catch_121

    goto :goto_41

    :catch_63
    move-exception v0

    :try_start_64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

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
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter error"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :try_start_91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_aa} :catch_aa

    :catch_aa
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter error"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b3
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Twitter is over capacity."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c7

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter is over capacity."

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c7
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "503 Service Temporarily Unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f2

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": 503 Service Temporarily Unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sorry, you are not authorized to see this status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_107

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Twitter is over capacity."

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_107
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rate limit exceeded."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11b

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Rate limit exceeded. Clients may not make more than 350 requests per hour."

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11b
    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_121
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_128
    move-exception v4

    goto/16 :goto_3e
.end method

.method private static a(Lcom/twidroid/model/twitter/Tweet;)V
    .registers 3

    sget-object v0, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/twidroid/net/c/r;

    invoke-direct {v0}, Lcom/twidroid/net/c/r;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/c/r;->a(Lcom/twidroid/ui/StringUrlSpan;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/ui/StringUrlSpan;)V

    :cond_20
    sget-object v0, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/twidroid/net/c/m;

    invoke-direct {v0}, Lcom/twidroid/net/c/m;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/c/m;->a(Lcom/twidroid/ui/StringUrlSpan;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/ui/StringUrlSpan;)V

    :cond_40
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
    .registers 43

    const-string v3, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v3, Ljava/util/Date;

    const-string v6, "created_at"

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/ubermedia/b/a/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/twidroid/net/a/c/c;->k:J

    sub-long v9, v6, v8

    invoke-static/range {p0 .. p0}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    const-string v6, "source"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_231

    const-string v12, "web"

    :goto_2e
    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-string v6, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string v6, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e

    const-string v3, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4e
    const-string v6, "geo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    const-string v6, "geo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_81

    const-string v6, "geo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "coordinates"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_81

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v26

    :cond_81
    const-string v6, "place"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_287

    const-string v6, "place"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_287

    const-string v6, "place"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "full_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_287

    const-string v3, "place"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "full_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_b5
    const-string v3, "in_reply_to_user_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v39

    const-string v3, "retweet_count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v32

    const-wide/16 v13, -0x1

    const-string v11, ""

    const-string v8, ""

    const-string v7, ""

    const-string v6, ""

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    const-string v17, "from_user_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10e

    const-string v3, "from_user_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v3, "verified"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "from_user"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "profile_image_url"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "description"

    const-string v11, ""

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v8

    :cond_10e
    const-string v17, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    if-eqz v17, :cond_279

    const-string v3, "id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6, v7}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v13

    const-string v3, "name"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "screen_name"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v3, "profile_image_url"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "description"

    const-string v6, ""

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "protected"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_248

    const/4 v3, 0x1

    :goto_154
    const-string v6, "verified"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v31

    new-instance v6, Lcom/twidroid/model/twitter/User;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v35, v6

    move v11, v3

    move-object/from16 v36, v7

    move-object v7, v8

    :goto_169
    const-wide/16 v21, -0x1

    const-string v3, "retweeted_status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_26e

    const-string v3, "id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v3, "user"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "id"

    const-wide/16 v13, -0x1

    invoke-virtual {v3, v6, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    const-string v6, "screen_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    move-object/from16 v0, v34

    invoke-static {v6, v0, v13}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    move-object/from16 v0, v23

    invoke-static {v6, v0, v13}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "profile_image_url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v7, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v8}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    move-object/from16 v0, v19

    invoke-static {v3, v0, v6}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v6, v17

    move-object/from16 v37, v3

    :goto_1be
    const-string v3, "in_reply_to_status_id"

    const-wide/16 v17, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v3, v1, v2}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v28

    const-string v3, "in_reply_to_screen_name"

    const-string v13, "null"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13}, Lcom/twidroid/model/twitter/Tweet;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "favorited"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    sget-object v3, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v18

    sget-object v41, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;

    if-eqz v8, :cond_24b

    const-string v3, "entities"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v38, v3

    :goto_1ee
    new-instance v8, Lcom/twidroid/ui/StringUrlSpan;

    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-direct {v8, v0, v3}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    const/16 v30, 0x0

    new-instance v3, Lcom/twidroid/model/twitter/Tweet;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v34}, Lcom/twidroid/model/twitter/Tweet;-><init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;DDJZZILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/twidroid/model/twitter/Tweet;->ag:J

    move-object/from16 v0, v36

    iput-object v0, v3, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    if-eqz v38, :cond_210

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lorg/json/JSONObject;)V

    :cond_210
    iget-object v4, v3, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    if-eqz v4, :cond_256

    iget-object v6, v3, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, v30

    :goto_21b
    if-ge v5, v7, :cond_257

    aget-object v8, v6, v5

    invoke-virtual {v8}, Lcom/ubermedia/model/twitter/MentionEntity;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v41 .. v41}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22e

    const/4 v4, 0x1

    :cond_22e
    add-int/lit8 v5, v5, 0x1

    goto :goto_21b

    :cond_231
    const-string v6, "source"

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/ubermedia/b/a/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/ubermedia/b/a/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\<.*?>"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2e

    :cond_248
    const/4 v3, 0x0

    goto/16 :goto_154

    :cond_24b
    const-string v3, "entities"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v38, v3

    goto :goto_1ee

    :cond_256
    const/4 v4, 0x0

    :cond_257
    iget-object v5, v3, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    iget-object v6, v3, Lcom/twidroid/model/twitter/Tweet;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    iget-object v7, v3, Lcom/twidroid/model/twitter/Tweet;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    iget-object v8, v3, Lcom/twidroid/model/twitter/Tweet;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    move-object/from16 v0, v37

    invoke-static {v0, v5, v6, v7, v8}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;[Lcom/ubermedia/model/twitter/MentionEntity;[Lcom/ubermedia/model/twitter/HashtagEntity;[Lcom/ubermedia/model/twitter/UrlEntity;[Lcom/ubermedia/model/twitter/MediaUrlEntity;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v5

    iput-object v5, v3, Lcom/twidroid/model/twitter/Tweet;->y:Lcom/twidroid/ui/StringUrlSpan;

    move-object/from16 v0, v35

    iput-object v0, v3, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    iput-boolean v4, v3, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    return-object v3

    :cond_26e
    move-object/from16 v16, v7

    move-object/from16 v15, v34

    move-object/from16 v37, v19

    move-wide v6, v13

    move-object/from16 v14, v23

    goto/16 :goto_1be

    :cond_279
    move-object/from16 v35, v15

    move/from16 v31, v3

    move-object/from16 v36, v6

    move-object/from16 v34, v8

    move-object/from16 v23, v11

    move/from16 v11, v16

    goto/16 :goto_169

    :cond_287
    move-object/from16 v33, v3

    goto/16 :goto_b5
.end method

.method private static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_28

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/ubermedia/model/twitter/UrlEntity;->a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/UrlEntity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4b

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v3}, Lcom/twidroid/model/twitter/Tweet;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_44

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-static {p0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/model/twitter/Tweet;)V

    return-void
.end method

.method public a([Lcom/ubermedia/model/twitter/HashtagEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/model/twitter/Tweet;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    return-void
.end method

.method public a([Lcom/ubermedia/model/twitter/MediaUrlEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/model/twitter/Tweet;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    return-void
.end method

.method public a([Lcom/ubermedia/model/twitter/MentionEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    return-void
.end method

.method public a([Lcom/ubermedia/model/twitter/UrlEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/model/twitter/Tweet;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    return-void
.end method

.method public b()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1}, Lcom/twidroid/model/twitter/CommunicationEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    iget v2, p0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    iget v3, p1, Lcom/twidroid/model/twitter/Tweet;->aB:I

    if-eq v2, v3, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    if-eq v2, v3, :cond_41

    move v0, v1

    goto :goto_4

    :cond_41
    iget v2, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    iget v3, p1, Lcom/twidroid/model/twitter/Tweet;->av:I

    if-eq v2, v3, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->ah:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_53

    move v0, v1

    goto :goto_4

    :cond_53
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ag:J

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->ag:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eq v2, v3, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eq v2, v3, :cond_6d

    move v0, v1

    goto :goto_4

    :cond_6d
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7f

    move v0, v1

    goto :goto_4

    :cond_7f
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_92

    move v0, v1

    goto/16 :goto_4

    :cond_92
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    if-nez v2, :cond_9d

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    if-eqz v2, :cond_aa

    move v0, v1

    goto/16 :goto_4

    :cond_9d
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    move v0, v1

    goto/16 :goto_4

    :cond_aa
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->ar:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b5

    move v0, v1

    goto/16 :goto_4

    :cond_b5
    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    iget-wide v4, p1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c0

    move v0, v1

    goto/16 :goto_4

    :cond_c0
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    if-nez v2, :cond_cb

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    if-eqz v2, :cond_d8

    move v0, v1

    goto/16 :goto_4

    :cond_cb
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    move v0, v1

    goto/16 :goto_4

    :cond_d8
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    if-nez v2, :cond_e3

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    if-eqz v2, :cond_f0

    move v0, v1

    goto/16 :goto_4

    :cond_e3
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    move v0, v1

    goto/16 :goto_4

    :cond_f0
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    if-nez v2, :cond_fb

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    if-eqz v2, :cond_108

    move v0, v1

    goto/16 :goto_4

    :cond_fb
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    move v0, v1

    goto/16 :goto_4

    :cond_108
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    if-nez v2, :cond_113

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    if-eqz v2, :cond_120

    move v0, v1

    goto/16 :goto_4

    :cond_113
    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v2, v3}, Lcom/twidroid/model/twitter/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    move v0, v1

    goto/16 :goto_4

    :cond_120
    iget-boolean v2, p0, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 10

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v8, 0x20

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    if-nez v0, :cond_ae

    move v0, v1

    :goto_17
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    if-eqz v0, :cond_b6

    move v0, v2

    :goto_1f
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    iget-wide v6, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->ag:J

    iget-wide v6, p0, Lcom/twidroid/model/twitter/Tweet;->ag:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_b9

    move v0, v2

    :goto_40
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eqz v0, :cond_bb

    move v0, v2

    :goto_48
    add-int/2addr v0, v4

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    if-nez v0, :cond_bd

    move v0, v1

    :goto_6a
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    iget-wide v6, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    iget-wide v6, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    if-nez v0, :cond_c4

    move v0, v1

    :goto_86
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    if-nez v0, :cond_cb

    move v0, v1

    :goto_8e
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    if-nez v0, :cond_d2

    move v0, v1

    :goto_96
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    if-nez v0, :cond_d9

    move v0, v1

    :goto_9e
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    if-nez v4, :cond_e0

    :goto_a5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    if-eqz v1, :cond_e7

    :goto_ac
    add-int/2addr v0, v2

    return v0

    :cond_ae
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_17

    :cond_b6
    move v0, v3

    goto/16 :goto_1f

    :cond_b9
    move v0, v3

    goto :goto_40

    :cond_bb
    move v0, v3

    goto :goto_48

    :cond_bd
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6a

    :cond_c4
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_86

    :cond_cb
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8e

    :cond_d2
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_96

    :cond_d9
    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9e

    :cond_e0
    iget-object v1, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->hashCode()I

    move-result v1

    goto :goto_a5

    :cond_e7
    move v2, v3

    goto :goto_ac
.end method

.method public q()[Lcom/ubermedia/model/twitter/UrlEntity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    return-object v0
.end method

.method public r()[Lcom/ubermedia/model/twitter/MediaUrlEntity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    return-object v0
.end method

.method public s()[Lcom/ubermedia/model/twitter/HashtagEntity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    return-object v0
.end method

.method public t()[Lcom/ubermedia/model/twitter/MentionEntity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->y:Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

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

.method public v()Z
    .registers 5

    iget-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->ag:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->ah:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twidroid/model/twitter/Tweet;->ar:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    if-eqz v0, :cond_b0

    move v0, v1

    :goto_58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->F:Z

    if-eqz v0, :cond_b2

    move v0, v1

    :goto_60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eqz v0, :cond_b4

    move v0, v1

    :goto_68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twidroid/model/twitter/Tweet;->av:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_7a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->ay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    if-eqz v0, :cond_b8

    :goto_8b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->G:[Lcom/ubermedia/model/twitter/UrlEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->J:[Lcom/ubermedia/model/twitter/MentionEntity;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_ad
    move v0, v2

    goto/16 :goto_28

    :cond_b0
    move v0, v2

    goto :goto_58

    :cond_b2
    move v0, v2

    goto :goto_60

    :cond_b4
    move v0, v2

    goto :goto_68

    :cond_b6
    move v0, v2

    goto :goto_7a

    :cond_b8
    move v1, v2

    goto :goto_8b
.end method
