.class public Lcom/twidroid/model/twitter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "savedsearches"

.field public static final g:Ljava/lang/String; = "SavedSearch"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:I

.field d:J

.field e:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/model/twitter/b;->a:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/twidroid/model/twitter/b;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/model/twitter/b;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twidroid/model/twitter/b;->d:J

    iput-boolean v2, p0, Lcom/twidroid/model/twitter/b;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 15

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "savedsearches"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v9

    const-string v0, "searchstring"

    aput-object v0, v2, v8

    const-string v0, "enablealert"

    aput-object v0, v2, v10

    const-string v0, "account "

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v3, "remote_id"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "nearbysearch"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchstring LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "searchstring"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_50

    :goto_4f
    return-void

    :cond_50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/model/twitter/b;->a:Ljava/lang/String;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_7f

    move v0, v8

    :goto_60
    iput-boolean v0, p0, Lcom/twidroid/model/twitter/b;->b:Z

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/model/twitter/b;->c:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twidroid/model/twitter/b;->d:J

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_81

    :goto_76
    iput-boolean v8, p0, Lcom/twidroid/model/twitter/b;->e:Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    :cond_7f
    move v0, v9

    goto :goto_60

    :cond_81
    move v8, v9

    goto :goto_76
.end method

.method public constructor <init>(Ljava/lang/String;ZIJZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/model/twitter/b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/twidroid/model/twitter/b;->b:Z

    iput p3, p0, Lcom/twidroid/model/twitter/b;->c:I

    iput-wide p4, p0, Lcom/twidroid/model/twitter/b;->d:J

    iput-boolean p6, p0, Lcom/twidroid/model/twitter/b;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/twidroid/model/twitter/b;
    .registers 4

    const-string v0, "SavedSearch"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/model/twitter/b;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/b;-><init>()V

    const-string v2, "query"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twidroid/model/twitter/b;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/model/twitter/b;->d:J
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4d

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "searchstring"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account"

    invoke-virtual {p1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "remote_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "savedsearches"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_46} :catch_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4d
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;Ljava/lang/String;IZ)Z
    .registers 13

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/twidroid/model/twitter/b;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/model/twitter/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/twidroid/model/twitter/b;->d:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1, p2}, Lcom/twidroid/net/a/c/c;->o(Ljava/lang/String;)Lcom/twidroid/model/twitter/b;

    move-result-object v1

    :try_start_13
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "searchstring"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nearbysearch"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "account"

    invoke-virtual {p1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "enablealert"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "remote_id"

    iget-wide v4, v1, Lcom/twidroid/model/twitter/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "savedsearches"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_51} :catch_58

    move-result-wide v1

    cmp-long v1, v1, v6

    if-lez v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :catch_58
    move-exception v1

    goto :goto_e
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lcom/twidroid/model/twitter/b;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/model/twitter/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/twidroid/model/twitter/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/twidroid/model/twitter/b;->c:I

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;)Z
    .registers 6

    :try_start_0
    iget-wide v0, p0, Lcom/twidroid/model/twitter/b;->d:J

    invoke-virtual {p2, v0, v1}, Lcom/twidroid/net/a/c/c;->k(J)V
    :try_end_5
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_5} :catch_28

    :try_start_5
    const-string v0, "savedsearches"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchstring LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/model/twitter/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_26} :catch_2b

    :goto_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    goto :goto_27

    :catch_2b
    move-exception v0

    goto :goto_26
.end method
