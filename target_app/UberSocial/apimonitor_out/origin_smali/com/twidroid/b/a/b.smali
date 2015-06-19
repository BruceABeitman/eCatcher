.class public Lcom/twidroid/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:I = 0x0

.field public static final c:Ljava/lang/String; = "followers"

.field public static final d:Ljava/lang/String; = "muted"

.field public static final e:Ljava/lang/String; = "subscribedlists"

.field public static final f:Ljava/lang/String; = "savedsearches"

.field public static final g:Ljava/lang/String; = "outbox"

.field public static final h:Ljava/lang/String; = "hashtags"

.field public static final k:Ljava/lang/String; = "settings"

.field public static final l:I = 0x7f0c016f

.field public static final o:Ljava/util/regex/Pattern; = null

.field private static final p:I = 0x50

.field private static r:I = 0x0

.field private static final s:I = 0xfa

.field private static t:Ljava/lang/String;

.field private static u:Lcom/twidroid/b/a/b;

.field private static v:Landroid/database/sqlite/SQLiteDatabase;

.field private static w:Lcom/twidroid/b/a/c;


# instance fields
.field a:Lcom/twidroid/model/twitter/c;

.field i:Z

.field j:Z

.field m:[Ljava/lang/Long;

.field n:Ljava/util/ArrayList;

.field private q:Lcom/twidroid/net/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x32

    sput v1, Lcom/twidroid/b/a/b;->r:I

    const-string v0, "Twidroid::TwitterApiPlus"

    sput-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    sput v1, Lcom/twidroid/b/a/b;->b:I

    const-string v0, "([^@:.])?@([a-zA-Z0-9_/-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select valnumber from settings where vkey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_27
    return p2

    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_27
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Lcom/twidroid/model/twitter/Tweet;ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 13

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "sender_id"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "message"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "created_at"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->l()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "target_user_id"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->ag:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "in_reply_to_status_id"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->ah:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "target_username"

    iget-object v5, p1, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    iget-boolean v5, p1, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "is_public"

    iget-boolean v0, p1, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eqz v0, :cond_f1

    move v0, v1

    :goto_68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f6

    const-string v5, "type"

    iget-boolean v0, p1, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_f4

    move v0, v3

    :goto_79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_80
    const-string v0, "latitude"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "longitude"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "deleted"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "retweeted_username"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retweeted_status_id"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "retweet_count"

    iget-wide v5, p1, Lcom/twidroid/model/twitter/Tweet;->ar:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "tsource"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_name"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_screenname"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_avatar"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->B:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorite"

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    if-eqz v3, :cond_100

    :goto_de
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "account"

    iget v1, p1, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v4

    :cond_f1
    move v0, v2

    goto/16 :goto_68

    :cond_f4
    move v0, v2

    goto :goto_79

    :cond_f6
    const-string v0, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_80

    :cond_100
    move v1, v2

    goto :goto_de
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 29

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "tweetcache"

    sget-object v4, Lcom/twidroid/model/twitter/DirectMessage;->U:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v25

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_46
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_175

    new-instance v5, Lcom/twidroid/ui/StringUrlSpan;

    const-string v2, "message"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spans"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    new-instance v2, Lcom/twidroid/model/twitter/DirectMessage;

    const-string v3, "id"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v6, "created_at"

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-string v8, "user_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "user_screenname"

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_avatar"

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sender_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    const-string v13, "account"

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "readflag"

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16d

    const/4 v14, 0x1

    :goto_e7
    const-string v15, "is_inner_circle"

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-lez v15, :cond_170

    const/4 v15, 0x1

    :goto_f8
    const-string v16, "is_outbox"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_172

    const/16 v16, 0x1

    :goto_114
    const-string v17, "target_screenname"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "target_user_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v20, "target_username"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "target_avatar"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v2 .. v21}, Lcom/twidroid/model/twitter/DirectMessage;-><init>(JLcom/twidroid/ui/StringUrlSpan;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_46

    :cond_16d
    const/4 v14, 0x0

    goto/16 :goto_e7

    :cond_170
    const/4 v15, 0x0

    goto :goto_f8

    :cond_172
    const/16 v16, 0x0

    goto :goto_114

    :cond_175
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_178
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_178} :catch_179

    :goto_178
    return-object v23

    :catch_179
    move-exception v2

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_178
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 42

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "tweetcache"

    sget-object v4, Lcom/twidroid/model/twitter/Tweet;->af:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v37

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tweets read from database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move/from16 v34, v2

    :goto_3e
    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_239

    new-instance v7, Lcom/twidroid/ui/StringUrlSpan;

    const-string v2, "message"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spans"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    new-instance v2, Lcom/twidroid/model/twitter/Tweet;

    const-string v3, "id"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "sender_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    const-string v8, "created_at"

    move-object/from16 v0, v36

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v36

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const-string v10, "is_public"

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_225

    const/4 v10, 0x1

    :goto_a6
    const-string v11, "tsource"

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "favorite"

    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_228

    const/4 v12, 0x1

    :goto_c5
    const-string v13, "user_name"

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "user_screenname"

    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "user_avatar"

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "target_username"

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "account"

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v18, "readflag"

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22b

    const/16 v18, 0x1

    :goto_12f
    const-string v19, "is_inner_circle"

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-lez v19, :cond_22f

    const/16 v19, 0x1

    :goto_145
    const-string v20, "retweeted_status_id"

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-string v22, "retweeted_username"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "latitude"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-string v25, "longitude"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-string v27, "in_reply_to_status_id"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-string v29, "type"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_233

    const/16 v29, 0x1

    :goto_1c5
    const-string v30, "verified"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-lez v30, :cond_236

    const/16 v30, 0x1

    :goto_1db
    const-string v31, "retweet_count"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const-string v32, "location_name"

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "retweeted_screenname"

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v2 .. v33}, Lcom/twidroid/model/twitter/Tweet;-><init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;DDJZZILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput v3, v2, Lcom/twidroid/model/twitter/Tweet;->av:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v34, 0x1

    move/from16 v34, v2

    goto/16 :goto_3e

    :cond_225
    const/4 v10, 0x0

    goto/16 :goto_a6

    :cond_228
    const/4 v12, 0x0

    goto/16 :goto_c5

    :cond_22b
    const/16 v18, 0x0

    goto/16 :goto_12f

    :cond_22f
    const/16 v19, 0x0

    goto/16 :goto_145

    :cond_233
    const/16 v29, 0x0

    goto :goto_1c5

    :cond_236
    const/16 v30, 0x0

    goto :goto_1db

    :cond_239
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V
    :try_end_23c
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_23c} :catch_23d

    :goto_23c
    return-object v35

    :catch_23d
    move-exception v2

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V

    goto :goto_23c
.end method

.method private a(ZJJLjava/lang/String;ZZ)Ljava/util/List;
    .registers 24

    new-instance v5, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    if-nez v3, :cond_f

    move-object v3, v5

    :goto_e
    return-object v3

    :cond_f
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    cmp-long v3, p4, v6

    if-lez v3, :cond_c3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v0, p4

    move/from16 v2, p7

    invoke-virtual {v3, v0, v1, v6, v2}, Lcom/twidroid/net/a/c/c;->a(JZZ)Ljava/util/List;

    move-result-object v3

    :goto_23
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/twidroid/b/a/b;->k(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/twidroid/b/a/b;->l(I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez p8, :cond_58

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5c
    :goto_5c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v11, v3, Lcom/twidroid/model/twitter/Tweet;->C:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_e4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e4

    invoke-virtual {p0, v3, v9}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;Ljava/util/ArrayList;)Z

    move-result v11

    if-nez v11, :cond_e4

    if-nez p8, :cond_b9

    const/4 v11, 0x1

    move/from16 v0, p7

    invoke-virtual {p0, v3, v11, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_5c

    :cond_b9
    if-nez p1, :cond_cf

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    :goto_c1
    move v4, v3

    goto :goto_5c

    :cond_c3
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/twidroid/net/a/c/c;->a(Z)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_23

    :cond_cf
    :try_start_cf
    iget-object v11, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_de

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/NullPointerException; {:try_start_cf .. :try_end_dc} :catch_e0

    add-int/lit8 v4, v4, 0x1

    :cond_de
    move v3, v4

    goto :goto_c1

    :catch_e0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_e4
    move v3, v4

    goto :goto_c1

    :cond_e6
    if-nez p8, :cond_f6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f6
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->n()V

    move-object v3, v5

    goto/16 :goto_e
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "valnumber"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vkey=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2, v4}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "vkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    invoke-static {p0, v1, v4, v0}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3a
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "valtext"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vkey=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2, v4}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "vkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    invoke-static {p0, v1, v4, v0}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_36
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "valnumber"

    if-ne p2, v0, :cond_3e

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vkey=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v4}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "vkey"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p0, v0, v4, v1}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3d
    return p2

    :cond_3e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1a
    return-object v2
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select valnumber from settings where vkey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_27
    return-wide p2

    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_27
.end method

.method public static declared-synchronized b()Lcom/twidroid/b/a/b;
    .registers 2

    const-class v1, Lcom/twidroid/b/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twidroid/b/a/b;->u:Lcom/twidroid/b/a/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/twidroid/b/a/b;

    invoke-direct {v0}, Lcom/twidroid/b/a/b;-><init>()V

    sput-object v0, Lcom/twidroid/b/a/b;->u:Lcom/twidroid/b/a/b;

    :cond_e
    sget-object v0, Lcom/twidroid/b/a/b;->u:Lcom/twidroid/b/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select valtext from settings where vkey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_27
    return-object p2

    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_27
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    sget v0, Lcom/twidroid/b/a/b;->r:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select valnumber from settings where vkey=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_28
    return p2

    :cond_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    move p2, v0

    goto :goto_28
.end method

.method private m(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from tweetcache where favorite=1 and account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private q(J)Ljava/util/List;
    .registers 7

    const-wide/16 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    cmp-long v0, p1, v2

    if-lez v0, :cond_48

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twidroid/net/a/c/c;->h(J)Ljava/util/List;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    const/4 v3, 0x1

    :try_start_35
    invoke-virtual {p0, v0, v3}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/DirectMessage;I)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_28

    :catch_3f
    move-exception v0

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v3, "Message not added to database - already exists"

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_48
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/twidroid/net/a/c/c;->h(J)Ljava/util/List;

    move-result-object v0

    goto :goto_1d

    :cond_51
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->n()V

    move-object v0, v1

    goto :goto_10
.end method


# virtual methods
.method public A()V
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from savedsearches"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_45

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v4, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/twidroid/model/twitter/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_45
    return-void
.end method

.method public B()I
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select count(*) from outbox"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return v0

    :catch_18
    move-exception v0

    move v0, v1

    goto :goto_17
.end method

.method public C()I
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select count(*) from tweetcache where type=0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return v0

    :catch_18
    move-exception v0

    move v0, v1

    goto :goto_17
.end method

.method public D()Ljava/util/ArrayList;
    .registers 16

    const/4 v9, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "outbox"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "messagetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "message"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "longitude"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "errormessage"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "place_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id asc"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    :goto_4d
    return-object v0

    :cond_4e
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move v12, v9

    :goto_56
    if-ge v12, v14, :cond_8f

    new-instance v0, Lcom/twidroid/model/b;

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const/4 v7, 0x5

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const/4 v8, 0x6

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct/range {v0 .. v10}, Lcom/twidroid/model/b;-><init>(JIILjava/lang/String;FFLjava/lang/String;J)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_56

    :cond_8f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_92} :catch_94

    :goto_92
    move-object v0, v11

    goto :goto_4d

    :catch_94
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92
.end method

.method public E()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/util/List;
    .registers 10

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fbcache"

    const-string v7, "createdTime desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    new-instance v1, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-direct {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->h(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->j(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->k(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(I)V

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(J)V

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->l(Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->m(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->n(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_b5
    return-object v8
.end method

.method public G()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fbcache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;II)I
    .registers 11

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select message_id from column_state join tweetcache on column_state.message_id = tweetcache.id where type="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " and account_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_35
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    cmp-long v2, v0, v2

    if-lez v2, :cond_9e

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select count(*) from tweetcache where type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_77
    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", free: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v0, p3, v0

    return v0

    :cond_9e
    move v0, v4

    goto :goto_77

    :cond_a0
    move-wide v0, v2

    goto :goto_35
.end method

.method public a(Z)I
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select screen_name from muted where screen_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_37

    const-string v0, " NOT"

    :goto_14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " LIKE \'@%\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ltz v2, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_36
    return v0

    :cond_37
    const-string v0, ""

    goto :goto_14

    :cond_3a
    move v0, v1

    goto :goto_36

    :cond_3c
    move v0, v1

    goto :goto_36
.end method

.method public a(Lcom/twidroid/model/twitter/Tweet;IZ)J
    .registers 16

    const/4 v3, 0x2

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "sender_id"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "message"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "created_at"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->l()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "target_user_id"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->ag:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "in_reply_to_status_id"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->ah:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "target_username"

    iget-object v7, p1, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    iget-boolean v7, p1, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "location_name"

    iget-object v7, p1, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "is_public"

    iget-boolean v0, p1, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eqz v0, :cond_11f

    move v0, v1

    :goto_72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_125

    const-string v7, "type"

    iget-boolean v0, p1, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_122

    move v0, v3

    :goto_83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_8a
    const-string v0, "latitude"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "longitude"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->am:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "deleted"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "retweeted_username"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retweeted_status_id"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "retweet_count"

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->ar:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "tsource"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_name"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_screenname"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_avatar"

    iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->B:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorite"

    iget-boolean v3, p1, Lcom/twidroid/model/twitter/Tweet;->aj:Z

    if-eqz v3, :cond_e9

    move v2, v1

    :cond_e9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "account"

    iget v2, p1, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spans"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/ui/StringUrlSpan;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retweeted_screenname"

    iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_10f
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "tweetcache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_119
    .catch Landroid/database/SQLException; {:try_start_10f .. :try_end_119} :catch_132

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_130

    :goto_11e
    return-wide v0

    :cond_11f
    move v0, v2

    goto/16 :goto_72

    :cond_122
    move v0, v2

    goto/16 :goto_83

    :cond_125
    const-string v0, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8a

    :cond_130
    move-wide v0, v4

    goto :goto_11e

    :catch_132
    move-exception v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "tweetcache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p1, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-ne p2, v1, :cond_1aa

    :try_start_153
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from tweetcache where type<>2 and id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_153 .. :try_end_171} :catch_19f

    :try_start_171
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tweetcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17b} :catch_180
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_171 .. :try_end_17b} :catch_19f

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v0

    goto :goto_11e

    :catch_180
    move-exception v0

    :try_start_181
    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mention Update exception - already exists - handling case: two accounts mentioned in single tweet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_181 .. :try_end_19d} :catch_19f

    move-wide v0, v4

    goto :goto_11e

    :catch_19f
    move-exception v0

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "database is locked. can\'t update tweets"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    goto/16 :goto_11e

    :cond_1aa
    move-wide v0, v4

    goto/16 :goto_11e
.end method

.method public a(Lcom/twidroid/model/twitter/c;)J
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select max(id),max(created_at) from tweetcache where type=0 and deleted=0 and account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_2b
    return-wide v0

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/twidroid/fragments/base/TimelineState;
    .registers 14

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "column_state"

    sget-object v2, Lcom/twidroid/fragments/base/TimelineState;->f:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and timeline=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :try_start_35
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_76

    new-instance v0, Lcom/twidroid/fragments/base/TimelineState;

    const-string v1, "timeline"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "timestamp"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "message_id"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "yPos"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/twidroid/fragments/base/TimelineState;-><init>(Ljava/lang/String;JJJI)V
    :try_end_72
    .catchall {:try_start_35 .. :try_end_72} :catchall_7b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_75
    return-object v0

    :cond_76
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_75

    :catchall_7b
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ws.geonames.org/findNearbyJSON?featureClass=P&featureCode=PPLA&featureCode=PPL&featureCode=PPLC&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&maxRows=5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "geonames"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "countryName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_61

    move-result-object v0

    return-object v0

    :catch_61
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public a(II)Ljava/util/ArrayList;
    .registers 9

    const/4 v5, 0x3

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and  message LIKE \'%http://%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and message NOT LIKE \'%http://%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    if-ne p2, v5, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_44
    if-lez p1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    invoke-virtual {p0, p1}, Lcom/twidroid/b/a/b;->e(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted=0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "created_at"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tweets read from database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    const-string v0, ""

    if-lez p1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_status_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_screenname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)Ljava/util/ArrayList;
    .registers 10

    const-wide/16 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, p1, v3

    if-lez v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " and account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, p1, v3

    if-lez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " and id > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_4e
    const-string v0, ""

    goto :goto_24

    :cond_51
    const-string v0, ""

    goto :goto_3f
.end method

.method public a(IJZ)Ljava/util/List;
    .registers 9

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    sget v1, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/twidroid/net/a/c/c;->a(IJZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iput-boolean v3, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    invoke-virtual {p0, v0, v3, p4}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->n()V

    return-object v1
.end method

.method public a(IZ)Ljava/util/List;
    .registers 11

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    return-object v1

    :cond_d
    if-lez p1, :cond_38

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/net/a/c/c;->i(J)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    const/4 v4, -0x1

    invoke-virtual {p0, v0, v4, p2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_42

    add-int/lit8 v0, v2, 0x1

    :goto_36
    move v2, v0

    goto :goto_1d

    :cond_38
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->j()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_19

    :cond_42
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update tweetcache set favorite=1 where id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v0, v2

    goto :goto_36
.end method

.method public a(JJZI)Ljava/util/List;
    .registers 14

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_89

    if-eqz p5, :cond_76

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    :goto_23
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    const-wide/32 v3, 0x36ee80

    sub-long v3, p3, v3

    const/4 v5, 0x0

    :try_start_40
    invoke-virtual {p0, v0, v5}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/DirectMessage;I)Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_92

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_52

    goto :goto_2e

    :catch_52
    move-exception v0

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message not added to database - already exists - notify watermark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id watermark: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_76
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    goto :goto_23

    :cond_89
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_23

    :cond_92
    :try_start_92
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v3, "discard old dm"

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_52

    goto :goto_2e

    :cond_9a
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->n()V

    move-object v0, v1

    goto/16 :goto_e
.end method

.method public a(JLcom/twidroid/service/f;)Ljava/util/List;
    .registers 16

    const/4 v5, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v10

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz p3, :cond_9b

    invoke-virtual {p3}, Lcom/twidroid/service/f;->e()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual {p3}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;

    move-result-object v0

    move-object v7, v0

    :goto_1c
    move v8, v5

    :goto_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_93

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    if-eqz v7, :cond_57

    invoke-virtual {v7, v0}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping DM\'s update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because streaming is on for this account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1d

    :cond_57
    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check direct messages for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->f(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v1

    const/16 v6, 0xc8

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(JJZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1, v2}, Lcom/twidroid/b/a/b;->q(J)Ljava/util/List;

    goto :goto_53

    :cond_93
    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    return-object v9

    :cond_9b
    move-object v7, v0

    goto :goto_1c
.end method

.method public a(Lcom/twidroid/d/v;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    invoke-virtual {p0, p1, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/d/v;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twidroid/d/v;I)Ljava/util/List;
    .registers 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_10

    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->b(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->d(Lcom/twidroid/model/twitter/c;)J

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check tweets for account: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/d/v;->D()Z

    move-result v5

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;IJZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total number of new messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_a1
    return-object v6
.end method

.method public a(Ljava/lang/String;IJZ)Ljava/util/List;
    .registers 12

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, p5}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    goto :goto_1a

    :cond_2b
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->n()V

    return-object v1
.end method

.method public a(ZJJLjava/lang/String;ZZLjava/lang/String;)Ljava/util/List;
    .registers 31

    new-instance v14, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    if-nez v2, :cond_f

    move-object v2, v14

    :goto_e
    return-object v2

    :cond_f
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->c(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v19

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_b7

    sget v2, Lcom/twidroid/b/a/b;->b:I

    :goto_2c
    if-nez p9, :cond_23f

    const/16 v2, 0xfa

    move v15, v2

    :goto_31
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_bb

    :try_start_37
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v5, p4

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    :goto_50
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v15, :cond_d6

    const/4 v2, 0x1

    :goto_57
    if-eqz v2, :cond_e2

    if-nez p9, :cond_e2

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v3, "Has more tweets?"

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v5, p4

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/Integer;JJZ)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tweets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_b2
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_b2} :catch_db

    move-result v2

    if-ne v2, v15, :cond_d8

    const/4 v2, 0x1

    goto :goto_57

    :cond_b7
    sget v2, Lcom/twidroid/b/a/b;->r:I

    goto/16 :goto_2c

    :cond_bb
    :try_start_bb
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;
    :try_end_d2
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_d2} :catch_db

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_50

    :cond_d6
    const/4 v2, 0x0

    goto :goto_57

    :cond_d8
    const/4 v2, 0x0

    goto/16 :goto_57

    :catch_db
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v14

    goto/16 :goto_e

    :cond_e2
    invoke-virtual/range {v16 .. v16}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->k(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->l(I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez p8, :cond_ff

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_ff
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v10

    :cond_104
    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_198

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_23c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23c

    if-nez p8, :cond_17a

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v2, v7, v1}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_104

    :cond_17a
    if-nez p1, :cond_184

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    :goto_182
    move v3, v2

    goto :goto_104

    :cond_184
    :try_start_184
    iget-object v7, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_193

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_191
    .catch Ljava/lang/NullPointerException; {:try_start_184 .. :try_end_191} :catch_195

    add-int/lit8 v3, v3, 0x1

    :cond_193
    move v2, v3

    goto :goto_182

    :catch_195
    move-exception v2

    move v2, v3

    goto :goto_182

    :cond_198
    if-nez p8, :cond_1a8

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1a8
    if-eqz p9, :cond_236

    if-eqz v14, :cond_236

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_236

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v8, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v12, v2, Lcom/twidroid/model/twitter/Tweet;->w:J

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v19

    cmp-long v2, v2, v12

    if-gez v2, :cond_236

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v15, :cond_236

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap detected for timeline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/ubermedia/model/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v10, v19, v6

    move-wide/from16 v6, v17

    invoke-direct/range {v2 .. v13}, Lcom/ubermedia/model/a;-><init>(Ljava/lang/String;JJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->a(Lcom/ubermedia/model/a;)V

    :cond_236
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->n()V

    move-object v2, v14

    goto/16 :goto_e

    :cond_23c
    move v2, v3

    goto/16 :goto_182

    :cond_23f
    move v15, v2

    goto/16 :goto_31
.end method

.method public a(ZLcom/twidroid/d/v;ZJ)Ljava/util/List;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLcom/twidroid/d/v;ZJLcom/twidroid/service/f;)Ljava/util/List;
    .registers 22

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/d/v;->D()Z

    move-result v8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v13

    :try_start_d
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v14

    const-string v1, ","

    invoke-static {v1, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz p6, :cond_f5

    invoke-virtual/range {p6 .. p6}, Lcom/twidroid/service/f;->e()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-virtual/range {p6 .. p6}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;

    move-result-object v1

    move-object v10, v1

    :goto_25
    const/4 v1, 0x0

    move v11, v1

    :goto_27
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_d5

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/model/twitter/c;

    if-eqz v10, :cond_61

    invoke-virtual {v10, v1}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z

    move-result v2

    if-eqz v2, :cond_61

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping Mentions update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " because streaming is on for this account"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_27

    :cond_61
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_c7

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, v2}, Lcom/twidroid/b/a/b;->e(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v5

    :goto_78
    const/4 v9, 0x0

    if-eqz p3, :cond_a3

    const/4 v2, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/d/v;->aF()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;II)I

    move-result v2

    if-gtz v2, :cond_a3

    const/4 v9, 0x1

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mentions cache full for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    move-object v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/twidroid/b/a/b;->a(ZJJLjava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz p3, :cond_bc

    if-eqz v9, :cond_ca

    const-string v2, "MentionsTimeline"

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;II)V

    :cond_bc
    :goto_bc
    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_bf} :catch_c0

    goto :goto_5d

    :catch_c0
    move-exception v1

    new-instance v2, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v2, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_c7
    move-wide/from16 v5, p4

    goto :goto_78

    :cond_ca
    :try_start_ca
    const-string v2, "MentionsTimeline"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;II)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d4} :catch_c0

    goto :goto_bc

    :cond_d5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ed

    const-string v2, "mentions.timestamp"

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Lcom/twidroid/d/v;->a(Ljava/lang/String;J)V

    :cond_ed
    invoke-virtual {v13}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    return-object v12

    :cond_f5
    move-object v10, v1

    goto/16 :goto_25
.end method

.method public a(ZLcom/twidroid/d/v;ZJLjava/lang/String;)Ljava/util/List;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLjava/lang/String;Lcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLcom/twidroid/d/v;ZJLjava/lang/String;Lcom/twidroid/service/f;)Ljava/util/List;
    .registers 21

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/twidroid/d/v;->D()Z

    move-result v7

    const-string v6, ""

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    :cond_3b
    const/4 v0, 0x0

    if-eqz p7, :cond_13e

    invoke-virtual/range {p7 .. p7}, Lcom/twidroid/service/f;->e()Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-virtual/range {p7 .. p7}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;

    move-result-object v0

    move-object v10, v0

    :goto_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4d
    :goto_4d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    if-eqz v10, :cond_84

    invoke-virtual {v10, v0}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping Tweets update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because streaming is on for this account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_84
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v4

    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-nez v1, :cond_117

    :goto_95
    const/4 v8, 0x0

    if-eqz p3, :cond_c0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/twidroid/d/v;->aF()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;II)I

    move-result v1

    if-gtz v1, :cond_c0

    const/4 v8, 0x1

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tweet cache full for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check tweets for account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/twidroid/b/a/b;->a(ZJJLjava/lang/String;ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total number of new messages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4d

    if-eqz v8, :cond_11b

    const-string v1, "MentionsTimeline"

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;II)V

    goto/16 :goto_4d

    :cond_117
    move-wide/from16 v4, p4

    goto/16 :goto_95

    :cond_11b
    const-string v1, "MentionsTimeline"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;II)V

    goto/16 :goto_4d

    :cond_127
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13d

    const-string v1, "timeline.timestamp"

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/twidroid/d/v;->a(Ljava/lang/String;J)V

    :cond_13d
    return-object v11

    :cond_13e
    move-object v10, v0

    goto/16 :goto_49
.end method

.method public a(I)V
    .registers 2

    sput p1, Lcom/twidroid/b/a/b;->b:I

    return-void
.end method

.method public a(IJ)V
    .registers 6

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(J)V

    return-void
.end method

.method public a(J)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from tweetcache where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from dmmessages where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from followers where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from outbox where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from savedsearches where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from muted where account_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    :goto_9c
    return-void

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9c
.end method

.method public a(JLcom/twidroid/model/twitter/User;)V
    .registers 9

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "retweeted_status_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "retweeted_username"

    if-eqz p3, :cond_3e

    iget-object v0, p3, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    :goto_14
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "retweeted_screenname"

    if-eqz p3, :cond_4b

    iget-object v0, p3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "tweetcache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3d
    return-void

    :cond_3e
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_4b
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_58

    move-result-object v0

    goto :goto_1d

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method public a(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/twidroid/b/a/b;->w:Lcom/twidroid/b/a/c;

    if-nez v0, :cond_47

    new-instance v0, Lcom/twidroid/b/a/c;

    invoke-direct {v0, p1}, Lcom/twidroid/b/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twidroid/b/a/b;->w:Lcom/twidroid/b/a/c;

    sget-object v0, Lcom/twidroid/b/a/b;->w:Lcom/twidroid/b/a/c;

    invoke-virtual {v0}, Lcom/twidroid/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/twidroid/net/a/c/c;

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/oauth/a;

    invoke-direct {v2, p1}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/twidroid/b/a/b;->i:Z

    iget-boolean v4, p0, Lcom/twidroid/b/a/b;->j:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V

    iput-object v0, p0, Lcom/twidroid/b/a/b;->q:Lcom/twidroid/net/a/c/c;

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/b/a/b;->a:Lcom/twidroid/model/twitter/c;

    new-instance v0, Lcom/twidroid/d/v;

    invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/twidroid/d/v;->al()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twidroid/b/a/b;->i:Z

    invoke-virtual {v0}, Lcom/twidroid/d/v;->am()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/b/a/b;->j:Z

    const/16 v0, 0x50

    sput v0, Lcom/twidroid/b/a/b;->b:I

    :goto_46
    return-void

    :cond_47
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "Database already inited"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method public a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 12

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/OutboxListing;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02016d

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    if-lez p2, :cond_2a

    iput p2, v2, Landroid/app/Notification;->number:I

    :cond_2a
    invoke-virtual {v2, p1, p3, p4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_3c

    iput-object v1, v2, Landroid/app/Notification;->vibrate:[J

    const v1, 0x7f0c016f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_3c
    .array-data 0x8
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public a(Landroid/content/Context;JILjava/lang/String;ZDDLjava/lang/String;)V
    .registers 16

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "messagetype"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "account"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errormessage"

    invoke-virtual {v0, v1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_6b

    const-string v1, "latitude"

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "longitude"

    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :goto_35
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "outbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select count(*) as total_messages from outbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const v0, 0x7f0c016f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, p5}, Lcom/twidroid/b/a/b;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v0, 0x7f0c016f

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6b
    const-string v1, "latitude"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "longitude"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_35

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while saving into outbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/twidroid/model/twitter/d;)V
    .registers 3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/d;)V

    return-void
.end method

.method public a(Lcom/ubermedia/model/a;)V
    .registers 11

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timeline"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_id"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "next_id"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "prev_id"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "next_timestamp"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "prev_timestamp"

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "gaps"

    sget-object v2, Lcom/ubermedia/model/a;->g:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->f()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and timeline=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_c4

    const-string v2, "gaps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->f()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and timeline=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ubermedia/model/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_c0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_c4
    const-string v2, "gaps"

    invoke-virtual {v0, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_c0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/twidroid/d/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_25
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from muted where screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ltz p2, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " and account_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " COLLATE NOCASE;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :cond_40
    const-string v0, ""

    goto :goto_2e
.end method

.method public a(Ljava/lang/String;II)V
    .registers 13

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timeline"

    const-string v1, "total_new"

    const-string v1, "uncached"

    const-string v1, "timeline"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_19
    const-string v1, "counters"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timeline"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "total_new"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "uncached"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "total_new"

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uncached"

    add-int/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "counters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_94} :catch_96

    goto/16 :goto_4

    :catch_96
    move-exception v0

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "Counters table NOT FOUND"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a0
    :try_start_a0
    const-string v2, "total_new"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uncached"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "counters"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_b8} :catch_96

    goto :goto_91
.end method

.method public a(Ljava/lang/String;JJJI)V
    .registers 20

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v10, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_id"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "message_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "yPos"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "column_state"

    sget-object v4, Lcom/twidroid/fragments/base/TimelineState;->f:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and timeline=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_98

    const-string v4, "column_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and timeline=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v10, v5, v6}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    :goto_94
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_98
    const-string v4, "column_state"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v10}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_94
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;ZI)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p6}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_41

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "screen_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "muted_until"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "avatar_url"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync"

    if-eqz p5, :cond_3f

    :goto_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "account_id"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "muted"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_3e
    return-void

    :cond_3f
    move v0, v1

    goto :goto_24

    :cond_41
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update muted set muted_until="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", avatar_url=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', sync="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p5, :cond_8c

    :goto_66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE NOCASE;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3e

    :cond_8c
    move v0, v1

    goto :goto_66
.end method

.method public a(Ljava/lang/String;ZI)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sync"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update muted set sync="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4c

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " where screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " COLLATE NOCASE;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :cond_4c
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public a(Ljava/util/List;)V
    .registers 9

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromId"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromName"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pictureUrl"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thumbnailPictureUrl"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "normalPictureUrl"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "albumPictureUrl"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "link"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "linkName"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "linkDescription"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "commentsCount"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "likesCount"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "createdTime"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "linkCaption"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "story"

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_9 .. :try_end_c8} :catchall_128

    :try_start_c8
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "fbcache"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_128
    .catch Landroid/database/SQLException; {:try_start_c8 .. :try_end_d2} :catch_d4

    goto/16 :goto_12

    :catch_d4
    move-exception v1

    :try_start_d5
    const-string v4, "insertStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " values: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "fbcache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_d5 .. :try_end_126} :catchall_128

    goto/16 :goto_12

    :catchall_128
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_12f
    :try_start_12f
    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_128

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_8
.end method

.method public declared-synchronized a(Ljava/util/List;Z)V
    .registers 9

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, p2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update tweetcache set favorite=1 where id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    goto :goto_9

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 16

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/b/a/b;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .registers 16

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "name"

    invoke-virtual {p0, p3}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screenname"

    invoke-virtual {p0, p4}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastupdate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "account"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "profileimageurl"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isfollower"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_in_circle"

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_97

    :try_start_65
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "followers"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6f
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_6f} :catch_7a

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_78

    const/4 v0, 0x1

    :goto_77
    return v0

    :cond_78
    const/4 v0, 0x0

    goto :goto_77

    :catch_7a
    move-exception v1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "followers"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_95

    const/4 v0, 0x1

    goto :goto_77

    :cond_95
    const/4 v0, 0x0

    goto :goto_77

    :cond_97
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "followers"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_ab

    const/4 v0, 0x1

    goto :goto_77

    :cond_ab
    const/4 v0, 0x0

    goto :goto_77
.end method

.method public a(Lcom/twidroid/model/twitter/DirectMessage;I)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "message"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "created_at"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "is_outbox"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "type"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "account"

    iget-wide v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "spans"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/ui/StringUrlSpan;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_ac

    const-string v2, "sender_id"

    iget-wide v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "user_name"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_screenname"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_avatar"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "target_screenname"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "target_user_id"

    iget-wide v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "target_username"

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    :try_start_9a
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "tweetcache"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a4
    .catch Landroid/database/SQLException; {:try_start_9a .. :try_end_a4} :catch_ef

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_ed

    :cond_ab
    :goto_ab
    return v0

    :cond_ac
    const-string v2, "sender_id"

    iget-wide v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "user_name"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_screenname"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_avatar"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->B:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "target_screenname"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->V:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "target_username"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->Y:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "target_user_id"

    iget-wide v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->W:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "target_avatar"

    iget-object v4, p1, Lcom/twidroid/model/twitter/DirectMessage;->X:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_ed
    move v0, v1

    goto :goto_ab

    :catch_ef
    move-exception v2

    const-string v4, "insertStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " values: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "tweetcache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_ab

    move v0, v1

    goto/16 :goto_ab
.end method

.method public a(Lcom/twidroid/model/twitter/Tweet;Ljava/util/ArrayList;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->s()[Lcom/ubermedia/model/twitter/HashtagEntity;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_d
    if-ge v0, v5, :cond_1f

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/ubermedia/model/twitter/HashtagEntity;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v1, v2

    :cond_46
    :goto_46
    return v1

    :cond_47
    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_52
    array-length v4, v3

    if-ge v0, v4, :cond_64

    aget-object v4, v3, v0

    const-string v5, "[^\\w]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_64
    array-length v4, v3

    move v0, v1

    :goto_66
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    move v1, v2

    goto :goto_46

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_66
.end method

.method public a(Lcom/twidroid/model/twitter/User;I)Z
    .registers 10

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/twidroid/model/twitter/User;IZ)Z
    .registers 13

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/b/a/b;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/twidroid/model/twitter/User;IZZ)Z
    .registers 14

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/b/a/b;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Long;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update tweetcache set deleted=1 where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(I)I
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    if-ne v0, p1, :cond_19

    :goto_18
    return v1

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    move v1, v2

    goto :goto_18
.end method

.method public b(JJ)I
    .registers 9

    const/4 v3, 0x3

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select count(*) from tweetcache where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select count(*) from tweetcache where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public b(Lcom/twidroid/model/twitter/c;)J
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select min(id) from tweetcache where type=0 and deleted=0 and account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_2b
    return-wide v0

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b
.end method

.method public b(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ws.geonames.org/findNearestIntersectionJSON?lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "intersection"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "street1"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "street2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "placename"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminCode1"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(II)Ljava/util/ArrayList;
    .registers 9

    const/4 v5, 0x3

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and  message LIKE \'%http://%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and message NOT LIKE \'%http://%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    if-ne p2, v5, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_44
    if-lez p1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    invoke-virtual {p0, p1}, Lcom/twidroid/b/a/b;->e(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted=0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "created_at"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_inner_circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tweets read from database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized b(Z)Ljava/util/List;
    .registers 10

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v6

    move v4, v2

    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3c

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/twidroid/b/a/b;->m(I)V

    move v1, v2

    :goto_20
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/twidroid/b/a/b;->a(IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_3e

    move-result v1

    const/16 v7, 0x63

    if-gt v1, v7, :cond_41

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    :cond_3c
    monitor-exit p0

    return-object v5

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_41
    move v1, v3

    goto :goto_20
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "hashtag"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "hashtags"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1c

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public b(Ljava/lang/String;J)V
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM column_state WHERE account_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and timeline=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)Z
    .registers 8

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public b(Landroid/content/Context;)Z
    .registers 30

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v3, "outbox check"

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select id, messagetype, account, message, latitude, longitude, errormessage, place_id from outbox order by id asc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_225

    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide v2, 0x3f50624dd2f1a9fcL

    cmpl-double v2, v6, v2

    if-gtz v2, :cond_67

    const-wide v2, -0x40af9db22d0e5604L

    cmpg-double v2, v6, v2

    if-gez v2, :cond_79

    :cond_67
    const-wide v2, 0x3f50624dd2f1a9fcL

    cmpl-double v2, v8, v2

    if-gtz v2, :cond_7f

    const-wide v2, -0x40af9db22d0e5604L

    cmpg-double v2, v8, v2

    if-ltz v2, :cond_7f

    :cond_79
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_13f

    :cond_7f
    const/4 v5, 0x1

    :goto_80
    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processing outbox queue: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " msg: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " account: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ae} :catch_139

    :try_start_ae
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_c6

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual/range {v2 .. v11}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;ZDDJ)Lcom/twidroid/model/twitter/Tweet;
    :try_end_c6
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_ae .. :try_end_c6} :catch_155
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c6} :catch_139

    :cond_c6
    const-wide/16 v2, 0x1

    cmp-long v2, v15, v2

    if-nez v2, :cond_d9

    :try_start_cc
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v2, v3, v12, v4}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;)Lcom/twidroid/model/twitter/DirectMessage;
    :try_end_d9
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_cc .. :try_end_d9} :catch_142
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d9} :catch_139

    :cond_d9
    const-wide/16 v2, 0x1

    cmp-long v2, v15, v2

    if-lez v2, :cond_f5

    :try_start_df
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v13

    move-object v14, v4

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    invoke-virtual/range {v12 .. v23}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;JZDDJ)Lcom/twidroid/model/twitter/Tweet;

    :cond_f5
    new-instance v2, Ljava/lang/Long;

    move-wide/from16 v0, v26

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_101
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_df .. :try_end_101} :catch_155
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_101} :catch_139

    :try_start_101
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from outbox where id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_138} :catch_139

    goto :goto_10e

    :catch_139
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_13e
    return v2

    :cond_13f
    const/4 v5, 0x0

    goto/16 :goto_80

    :catch_142
    move-exception v2

    :try_start_143
    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "org.json.JSONException"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    new-instance v3, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v3, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_155
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_143 .. :try_end_155} :catch_155
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_155} :catch_139

    :catch_155
    move-exception v2

    :try_start_156
    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_13e

    :cond_17e
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1bd

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select count(*) as total_messages from outbox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1bf

    const v2, 0x7f0c01dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v3, v2

    :goto_1ab
    if-nez v4, :cond_1ee

    const v2, 0x7f0c0214

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1b6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/twidroid/b/a/b;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1bd
    :goto_1bd
    const/4 v2, 0x1

    goto :goto_13e

    :cond_1bf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c01e2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1ab

    :cond_1ee
    const/4 v2, 0x1

    if-ne v4, v2, :cond_1fb

    const v2, 0x7f0c01df

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1b6

    :cond_1fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0c01de

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b6

    :cond_225
    if-eqz v24, :cond_1bd

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_22a} :catch_139

    goto :goto_1bd
.end method

.method public b(Lcom/twidroid/model/twitter/User;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twidroid/b/a/b;->b(Lcom/twidroid/model/twitter/User;IZ)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/twidroid/model/twitter/User;IZ)Z
    .registers 11

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screenname"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "location"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twidroid/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dirty"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "profileimageurl"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    const-string v2, "url"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    const-string v2, "lastupdate"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "account"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "isfollower"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_8a
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "followers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ab} :catch_b0

    move-result v1

    if-lez v1, :cond_af

    const/4 v0, 0x1

    :cond_af
    :goto_af
    return v0

    :catch_b0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_af
.end method

.method public b(Ljava/lang/Long;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update tweetcache set deleted=1 where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select screen_name from muted where screen_name=\'@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and account_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COLLATE NOCASE;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_3c
    return v0

    :cond_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_42

    const/4 v0, 0x1

    goto :goto_3c

    :catch_42
    move-exception v1

    goto :goto_3c
.end method

.method public b(Ljava/util/ArrayList;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set unread markers for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update tweetcache set readflag=1 where id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_27

    move v0, v1

    goto :goto_8
.end method

.method public c(Lcom/twidroid/model/twitter/c;)J
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select max(id),max(created_at) from tweetcache where type=0 and deleted=0 and account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_2b
    return-wide v0

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b
.end method

.method public c(Ljava/lang/String;I)J
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select muted_until from muted where screen_name=\'@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE NOCASE;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_40
    return-wide v0

    :cond_41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    goto :goto_40
.end method

.method public c(Z)Lcom/twidroid/model/twitter/e;
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v10, Lcom/twidroid/model/twitter/e;

    invoke-direct {v10}, Lcom/twidroid/model/twitter/e;-><init>()V

    if-eqz p1, :cond_d3

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND listowner=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3c
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "uri"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "listowner"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "listname"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_public"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "enablenotification"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "account"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "imageurl"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "subscriber_count"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "member_count"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "subscribedlists"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listname"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_7d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance v0, Lcom/twidroid/model/twitter/d;

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_108

    move v3, v8

    :goto_97
    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V

    iput-boolean p1, v0, Lcom/twidroid/model/twitter/d;->h:Z

    invoke-virtual {v10, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_b4} :catch_b5

    goto :goto_7d

    :catch_b5
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbGetSubscribedListsForAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    return-object v10

    :cond_d3
    :try_start_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND listowner<>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3c

    :cond_108
    move v3, v9

    goto :goto_97

    :cond_10a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catch Landroid/database/SQLException; {:try_start_d3 .. :try_end_10d} :catch_b5

    goto :goto_d2
.end method

.method public c(Ljava/lang/String;J)Lcom/ubermedia/model/a;
    .registers 19

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gaps"

    sget-object v4, Lcom/ubermedia/model/a;->g:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and timeline=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :try_start_39
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_84

    new-instance v2, Lcom/ubermedia/model/a;

    const-string v3, "timeline"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "account_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "next_id"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "prev_id"

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "next_timestamp"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "prev_timestamp"

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct/range {v2 .. v13}, Lcom/ubermedia/model/a;-><init>(Ljava/lang/String;JJJJJ)V
    :try_end_80
    .catchall {:try_start_39 .. :try_end_80} :catchall_89

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :goto_83
    return-object v2

    :cond_84
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto :goto_83

    :catchall_89
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public c(JJ)Ljava/util/ArrayList;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(sender_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "target_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v0, p3, v2

    if-lez v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "and account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_5f
    const-string v0, ""

    goto :goto_50
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from hashtags;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized c(II)V
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/twidroid/b/a/b;->g(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_31

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/twidroid/b/a/b;->m(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_20
    if-ge v0, v3, :cond_2c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/twidroid/b/a/b;->a(Ljava/util/List;Z)V
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_31

    goto :goto_e

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return v2

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_20

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    goto :goto_b

    :cond_20
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    goto :goto_b
.end method

.method public c(J)Z
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public c(Lcom/twidroid/model/twitter/User;I)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "is_in_circle"

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->n()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "followers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v4, v3, v5, v6}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_42

    :goto_3f
    return v1

    :cond_40
    move v0, v2

    goto :goto_10

    :cond_42
    move v1, v2

    goto :goto_3f
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public c(Ljava/util/ArrayList;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update tweetcache set readflag=1 where id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_57} :catch_27

    move v0, v1

    goto :goto_8
.end method

.method public d(Lcom/twidroid/model/twitter/c;)J
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select min(created_at) from tweetcache where type=0 and deleted=0 and account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_2b
    return-wide v0

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b
.end method

.method public d()Lcom/twidroid/model/twitter/c;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    goto :goto_12
.end method

.method public d(J)Lcom/twidroid/model/twitter/c;
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public d(Ljava/lang/String;)Lcom/twidroid/model/twitter/c;
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public d(I)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->C()I

    move-result v1

    if-ge v1, p1, :cond_f

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "::cleanupdb - no need to run cleanup"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    const/4 v3, 0x2

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v0, v3, v4}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;II)I

    move-result v3

    if-gtz v3, :cond_78

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mention cache full for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Skipping cleanup."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;II)I

    move-result v3

    if-gtz v3, :cond_fa

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tweet cache full for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". Skipping cleanup."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_78
    sget-object v3, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select id from tweetcache where type=2 and account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  order by id desc LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_d3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v6, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete from tweetcache where type=2 and account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and  id< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_d3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_d6} :catch_d8

    goto/16 :goto_4b

    :catch_d8
    move-exception v0

    const-string v1, "CLEANUPThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while cleaning up db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    :cond_fa
    :try_start_fa
    sget-object v3, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select id from tweetcache where type=0 and account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  order by id desc LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_153

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v6, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete from tweetcache where type=0 and account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " and  id< "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_153
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_156} :catch_d8

    goto/16 :goto_74
.end method

.method public d(JJ)V
    .registers 8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM gaps WHERE account_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prev_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;J)V
    .registers 8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "gaps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and timeline=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method

.method public e(I)J
    .registers 7

    if-lez p1, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select created_at from tweetcache where deleted=0 and favorite=0 and type=0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " order by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "created_at"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " asc limit 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_52

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_4e
    return-wide v0

    :cond_4f
    const-string v0, ""

    goto :goto_15

    :cond_52
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-object v2, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::getLastPlainTweetIdFromCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public e(Lcom/twidroid/model/twitter/c;)J
    .registers 12

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tweetcache"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v9

    const/4 v3, 0x1

    const-string v5, "created_at"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "deleted"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=0 and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "created_at desc"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_63

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_62
    return-wide v0

    :cond_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_62
.end method

.method public e(Ljava/lang/String;)Lcom/twidroid/model/twitter/DirectMessage;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_outbox=0 and deleted=0 and user_screenname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found message:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    :goto_46
    return-object v0

    :cond_47
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "Direct Message not found in database"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_46
.end method

.method public e()Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/b/a/b;->a:Lcom/twidroid/model/twitter/c;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->f()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/twidroid/b/a/b;->a:Lcom/twidroid/model/twitter/c;

    goto :goto_8
.end method

.method public e(J)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/b/a/b;->m:[Ljava/lang/Long;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->f()Lcom/twidroid/model/twitter/c;

    :cond_8
    iget-object v2, p0, Lcom/twidroid/b/a/b;->m:[Ljava/lang/Long;

    array-length v3, v2

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    :cond_19
    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public f(Lcom/twidroid/model/twitter/c;)J
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select max(id) from tweetcache where account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_2b
    return-wide v0

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b
.end method

.method public f()Lcom/twidroid/model/twitter/c;
    .registers 8

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/twidroid/b/a/b;->m:[Ljava/lang/Long;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v4, p0, Lcom/twidroid/b/a/b;->m:[Ljava/lang/Long;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_15

    :cond_31
    iget-object v0, p0, Lcom/twidroid/b/a/b;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    const-string p1, ""

    goto :goto_2
.end method

.method public f(I)Ljava/util/ArrayList;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p1, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "and account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_46
    const-string v0, ""

    goto :goto_20
.end method

.method public f(J)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select message from tweetcache where id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_29

    move-result v2

    if-ne v2, v0, :cond_27

    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_23

    :catchall_29
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public g(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;
    .registers 15

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "subscribedlists"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "uri"

    aput-object v3, v2, v9

    const-string v3, "listowner"

    aput-object v3, v2, v8

    const-string v3, "listname"

    aput-object v3, v2, v11

    const-string v3, "is_public"

    aput-object v3, v2, v12

    const/4 v3, 0x4

    const-string v5, "enablenotification"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "account"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "imageurl"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "subscriber_count"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "member_count"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "listname"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_63
    return-object v4

    :cond_64
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/twidroid/model/twitter/d;

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_95

    move v3, v8

    :goto_78
    const/4 v4, 0x5

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto :goto_63

    :cond_95
    move v3, v9

    goto :goto_78
.end method

.method public g()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    :cond_16
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/b/a/b;->a:Lcom/twidroid/model/twitter/c;

    iget-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g(I)Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0 and favorite=1 and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/twidroid/model/twitter/c;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v5, v5, v4}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;Z)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/twidroid/model/twitter/d;->a(Lcom/twidroid/model/twitter/d;Lcom/twidroid/model/twitter/c;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_27

    :cond_47
    return-void
.end method

.method public g(J)Z
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from followers where _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_27

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_26
.end method

.method public h(I)Lcom/twidroid/model/twitter/c;
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    if-ne v0, p1, :cond_22

    invoke-virtual {p0, v1}, Lcom/twidroid/b/a/b;->c(I)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    :goto_21
    return-object v0

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public h(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;
    .registers 3

    invoke-static {p1}, Lcom/twidroid/model/twitter/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->t(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;

    move-result-object v0

    return-object v0
.end method

.method public h(J)Ljava/util/ArrayList;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " and account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_33
    const-string v0, ""

    goto :goto_24
.end method

.method public h(Lcom/twidroid/model/twitter/c;)Ljava/util/ArrayList;
    .registers 5

    const-string v0, ""

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    if-lez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_status_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_screenname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/b/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_23
    return-void
.end method

.method public i(I)Lcom/twidroid/model/twitter/c;
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    if-ne v0, p1, :cond_1f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public i()Ljava/util/ArrayList;
    .registers 11

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "savedsearches"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "searchstring"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "enablealert"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "remote_id"

    aput-object v4, v2, v3

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "searchstring"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v8

    :goto_3b
    if-ge v0, v2, :cond_4b

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_4e} :catch_4f

    :goto_4e
    return-object v9

    :catch_4f
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwitterApiPlus.listSavedSearch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public i(J)Ljava/util/ArrayList;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_outbox=0 and deleted=0 and id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_inner_circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/twidroid/model/twitter/c;)Ljava/util/ArrayList;
    .registers 5

    const-string v0, ""

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    if-lez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_status_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retweeted_screenname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from tweetcache where user_screenname LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)I
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "muted"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "account_id"

    aput-object v3, v2, v9

    const-string v3, "screen_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v7, "screen_name asc"

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_2e
    const/4 v0, -0x1

    goto :goto_2a
.end method

.method public j(I)Ljava/util/ArrayList;
    .registers 15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from muted where muted_until <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "muted"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "screen_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "muted_until"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "avatar_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "sync"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "account_id"

    aput-object v4, v2, v3

    if-ltz p1, :cond_a4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screen_name COLLATE NOCASE"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    move v9, v0

    :goto_72
    if-ge v9, v12, :cond_a8

    new-instance v0, Lcom/twidroid/model/a;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_a6

    const/4 v7, 0x1

    :goto_92
    const/4 v8, 0x5

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/twidroid/model/a;-><init>(JLjava/lang/String;JLjava/lang/String;ZI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_72

    :cond_a4
    const/4 v3, 0x0

    goto :goto_5f

    :cond_a6
    const/4 v7, 0x0

    goto :goto_92

    :cond_a8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_ab} :catch_ac

    :goto_ab
    return-object v10

    :catch_ac
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab
.end method

.method public j()Ljava/util/List;
    .registers 34

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6b

    new-instance v6, Lcom/twidroid/ui/StringUrlSpan;

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/model/twitter/SavedSearchCompat;

    add-int/lit8 v30, v2, 0x1

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const/4 v9, 0x1

    const-string v10, "savedsearches"

    const/4 v11, 0x0

    const-string v12, "user_name"

    const-string v13, "user_screenname"

    const-string v14, "user_avatar"

    const-string v15, "reply_user"

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-string v21, ""

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, ""

    invoke-direct/range {v1 .. v29}, Lcom/twidroid/model/twitter/SavedSearchCompat;-><init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;FFJZZILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v30

    :goto_68
    move v2, v1

    goto :goto_f

    :cond_6a
    return-object v31

    :cond_6b
    move v1, v2

    goto :goto_68
.end method

.method public j(J)Z
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from outbox where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public k(I)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "muted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "screen_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muted_until >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and screen_name LIKE \'@%\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ltz p1, :cond_7f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screen_name asc"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v9

    :goto_5c
    if-ge v0, v2, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_7f
    const-string v3, ""

    goto :goto_42

    :cond_82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_85} :catch_8a

    :goto_85
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_8a
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85
.end method

.method public k()Ljava/util/ArrayList;
    .registers 3

    const-string v0, "deleted=0"

    const-string v1, "id desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public k(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twidroid/net/a/c/c;->b(J)V

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/b/a/b;->f(J)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update tweetcache set favorite=1 where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFavorite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist in database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public k(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM counters WHERE timeline=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .registers 3

    const-string v0, "deleted=0 and  type=2"

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Ljava/util/ArrayList;
    .registers 13

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "muted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "screen_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muted_until >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and screen_name NOT LIKE \'@%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screen_name asc"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v9

    :goto_43
    if-ge v0, v2, :cond_53

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_56} :catch_57

    :goto_56
    return-object v10

    :catch_57
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method public l(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twidroid/net/a/c/c;->d(J)V

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/b/a/b;->f(J)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update tweetcache set favorite=0 where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyFavorite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist in database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public l(Ljava/lang/String;)[I
    .registers 11

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "timeline"

    const-string v0, "total_new"

    const-string v0, "uncached"

    new-array v8, v3, [I

    aput v1, v8, v2

    aput v1, v8, v1

    :try_start_f
    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "counters"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timeline"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "total_new"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "uncached"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v8, v1
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-object v8

    :catch_5d
    move-exception v0

    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    const-string v1, "Counters table NOT FOUND"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public m(J)Lcom/twidroid/model/twitter/Tweet;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0 and id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created_at desc"

    const-string v2, "1"

    invoke-direct {p0, v0, v1, v2}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    :goto_2a
    return-object v0

    :cond_2b
    sget-object v0, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tweet found with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public m()Ljava/util/ArrayList;
    .registers 3

    const-string v0, "deleted=0 and favorite=1 and type<>3"

    const-string v1, "created_at desc"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public n(J)Ljava/util/List;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twidroid/b/a/b;->a(JLcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .registers 6

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "update tweetcache set is_inner_circle=0"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;

    move-result-object v1

    const-string v0, "("

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_14

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",)"

    const-string v2, ")"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update tweetcache set is_inner_circle=1 where  sender_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or (target_user_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or (id in (select in_reply_to_status_id from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tweetcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where sender_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from outbox;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public o(J)Z
    .registers 12

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_reply_to_status_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND sender_id IN (SELECT _id FROM followers WHERE is_in_circle>0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_1a
    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tweetcache"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_2c} :catch_34

    move-result v0

    if-lez v0, :cond_3d

    const/4 v0, 0x1

    :goto_30
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_30 .. :try_end_33} :catch_3b

    :goto_33
    return v0

    :catch_34
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_37
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_33

    :catch_3b
    move-exception v1

    goto :goto_37

    :cond_3d
    move v0, v8

    goto :goto_30
.end method

.method public p()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/twidroid/b/a/b;->w:Lcom/twidroid/b/a/c;

    invoke-virtual {v0}, Lcom/twidroid/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/twidroid/b/a/b;->v:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_a
.end method

.method public p(J)Ljava/util/ArrayList;
    .registers 21

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gaps"

    sget-object v4, Lcom/ubermedia/model/a;->g:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "5"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    :try_start_30
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move v14, v2

    :goto_35
    move/from16 v0, v17

    if-ge v14, v0, :cond_9c

    new-instance v2, Lcom/ubermedia/model/a;

    const-string v3, "timeline"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "account_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "next_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "prev_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "next_timestamp"

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "prev_timestamp"

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct/range {v2 .. v13}, Lcom/ubermedia/model/a;-><init>(Ljava/lang/String;JJJJJ)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_98
    .catchall {:try_start_30 .. :try_end_98} :catchall_a0

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_35

    :cond_9c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-object v15

    :catchall_a0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public q()Landroid/database/Cursor;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "followers"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "screenname"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "location"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "profileimageurl"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "lastupdate"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "dirty"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "is_in_circle"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "account"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 16

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v3, "is_in_circle>0"

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "followers"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "screenname"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_22
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Lcom/twidroid/model/twitter/User;

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/twidroid/model/twitter/User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_22

    :catch_45
    move-exception v0

    const-string v1, "Twidroyd"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-object v13

    :cond_50
    :try_start_50
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Landroid/database/SQLException; {:try_start_50 .. :try_end_53} :catch_45

    goto :goto_4f
.end method

.method public s()Ljava/util/List;
    .registers 19

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/twidroid/b/a/b;->q()Landroid/database/Cursor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    move v14, v1

    :goto_12
    move/from16 v0, v17

    if-ge v14, v0, :cond_76

    new-instance v1, Lcom/twidroid/model/twitter/User;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "null"

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/twidroid/model/twitter/User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V

    const/16 v2, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/User;->a(I)V

    const-string v2, "is_in_circle"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x1

    :goto_67
    invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/User;->a(Z)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_12

    :cond_74
    const/4 v2, 0x0

    goto :goto_67

    :cond_76
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_79
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_79} :catch_7a

    :goto_79
    return-object v15

    :catch_7a
    move-exception v1

    const-string v2, "Twidroyd"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79
.end method

.method public t()Ljava/util/List;
    .registers 16

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x7

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "screenname"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "location"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "profileimageurl"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "is_in_circle"

    aput-object v1, v2, v0

    const-string v3, "is_in_circle>0"

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "followers"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_3b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    new-instance v0, Lcom/twidroid/model/twitter/User;

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/twidroid/model/twitter/User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V

    const-string v1, "is_in_circle"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    :goto_77
    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/User;->a(Z)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_7d} :catch_7e

    goto :goto_3b

    :catch_7e
    move-exception v0

    const-string v1, "Twidroyd"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_88
    return-object v13

    :cond_89
    const/4 v1, 0x0

    goto :goto_77

    :cond_8b
    :try_start_8b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catch Landroid/database/SQLException; {:try_start_8b .. :try_end_8e} :catch_7e

    goto :goto_88
.end method

.method public u()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from followers where is_inner_circle!=1;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from messages;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from outbox;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from hashtags;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from dmmessages;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from savedsearches;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from uberdeals;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from tweetcache;"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public v()Lcom/twidroid/model/twitter/e;
    .registers 16

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->E()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/twidroid/model/twitter/e;

    invoke-direct {v12}, Lcom/twidroid/model/twitter/e;-><init>()V

    const/16 v0, 0x9

    :try_start_d
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "uri"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "listowner"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "listname"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_public"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "enablenotification"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "account"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "imageurl"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "subscriber_count"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "member_count"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "subscribedlists"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listname"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move v10, v9

    :goto_55
    if-ge v10, v14, :cond_99

    new-instance v0, Lcom/twidroid/model/twitter/d;

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_97

    move v3, v8

    :goto_6b
    const/4 v4, 0x5

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual {v12, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z

    :cond_90
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_55

    :cond_97
    move v3, v9

    goto :goto_6b

    :cond_99
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_9c} :catch_9d

    :goto_9c
    return-object v12

    :catch_9d
    move-exception v0

    sget-object v1, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscribedTwitterLists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method

.method public w()V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from subscribedlists"

    invoke-static {v0, v1}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v3, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, v0}, Lcom/twidroid/b/a/b;->g(Lcom/twidroid/model/twitter/c;)V

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_3b
    return-void
.end method

.method public x()Lcom/twidroid/net/a/c/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/b/a/b;->q:Lcom/twidroid/net/a/c/c;

    return-object v0
.end method

.method public y()Lcom/twidroid/model/twitter/e;
    .registers 7

    new-instance v2, Lcom/twidroid/model/twitter/e;

    invoke-direct {v2}, Lcom/twidroid/model/twitter/e;-><init>()V

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/e;->clear()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v4, :cond_46

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v5, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/twidroid/net/a/c/c;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twidroid/model/twitter/e;->addAll(Ljava/util/Collection;)Z

    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_46
    return-object v2
.end method

.method public z()Lcom/twidroid/model/twitter/e;
    .registers 7

    new-instance v2, Lcom/twidroid/model/twitter/e;

    invoke-direct {v2}, Lcom/twidroid/model/twitter/e;-><init>()V

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/e;->clear()V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    :goto_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v2, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_67
    const/4 v1, 0x0

    goto :goto_22

    :cond_69
    invoke-virtual {v2}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    sget-object v3, Lcom/twidroid/b/a/b;->t:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::getAllMyLists(): Twitter URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " listname:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  :  listowner:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account_user_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subscribers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / members: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " // "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->g()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "// is MY LIST: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, v0, Lcom/twidroid/model/twitter/d;->h:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6d

    :cond_fb
    return-object v2
.end method
