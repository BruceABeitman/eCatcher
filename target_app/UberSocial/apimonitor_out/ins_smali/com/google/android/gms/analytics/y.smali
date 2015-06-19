.class  Lcom/google/android/gms/analytics/y;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/ao;
.field private static final a:Ljava/lang/String;
.field private final b:Lcom/google/android/gms/analytics/z;
.field private volatile c:Lcom/google/android/gms/analytics/az;
.field private final d:Lcom/google/android/gms/analytics/ap;
.field private final e:Landroid/content/Context;
.field private final f:Ljava/lang/String;
.field private g:Lcom/google/android/gms/analytics/x;
.field private h:J
.field private final i:I
.field private j:Lcom/google/android/gms/analytics/at;
.method static constructor <clinit>()V
.registers 4
const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"
const/4 v1, 0x6
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "hits2"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "hit_id"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "hit_time"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "hit_url"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "hit_string"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "hit_app_id"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/analytics/y;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/analytics/ap;Landroid/content/Context;)V
.registers 5
const-string v0, "google_analytics_v4.db"
const/16 v1, 0x7d0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/y;-><init>(Lcom/google/android/gms/analytics/ap;Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/analytics/ap;Landroid/content/Context;Ljava/lang/String;I)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/y;->e:Landroid/content/Context;
iput-object p3, p0, Lcom/google/android/gms/analytics/y;->f:Ljava/lang/String;
iput-object p1, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
new-instance v0, Lcom/google/android/gms/analytics/y$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/y$1;-><init>(Lcom/google/android/gms/analytics/y;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/at;
new-instance v0, Lcom/google/android/gms/analytics/z;
iget-object v1, p0, Lcom/google/android/gms/analytics/y;->e:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->f:Ljava/lang/String;
invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/z;-><init>(Lcom/google/android/gms/analytics/y;Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/z;
new-instance v0, Lcom/google/android/gms/analytics/ae;
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->e:Landroid/content/Context;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ae;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/y;->c:Lcom/google/android/gms/analytics/az;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/analytics/y;->h:J
iput p4, p0, Lcom/google/android/gms/analytics/y;->i:I
return-void
.end method
.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/z;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
invoke-static {p1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_6
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/y;)Lcom/google/android/gms/analytics/at;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/at;
return-object v0
.end method
.method static a(Ljava/util/Map;)Ljava/lang/String;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Map;->size()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/google/android/gms/analytics/br;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/analytics/br;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_4c
const-string v0, "&"
invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/util/Map;JLjava/lang/String;)V
.registers 10
const-string v0, "Error opening database for putHit"
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
if-nez v3, :cond_9
:goto_8
return-void
:cond_9
new-instance v4, Landroid/content/ContentValues;
invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
const-string v0, "hit_string"
invoke-static {p1}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Map;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "hit_time"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-wide/16 v1, 0x0
const-string v0, "AppUID"
invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6b
:try_start_2a
const-string v0, "AppUID"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_35
.catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_35} :catch_4f
move-result-wide v0
:goto_36
const-string v2, "hit_app_id"
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
if-nez p4, :cond_43
const-string p4, "http://www.google-analytics.com/collect"
:cond_43
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_52
const-string v0, "Empty path: not sending hit"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
goto :goto_8
:catch_4f
move-exception v0
move-wide v0, v1
goto :goto_36
:cond_52
const-string v0, "hit_url"
invoke-virtual {v4, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:try_start_57
const-string v0, "hits2"
const/4 v1, 0x0
invoke-virtual {v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/ap;->a(Z)V
:try_end_63
.catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_63} :catch_64
goto :goto_8
:catch_64
move-exception v0
const-string v0, "Error storing hit"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
goto :goto_8
:cond_6b
move-wide v0, v1
goto :goto_36
.end method
.method private a(Ljava/util/Map;Ljava/util/Collection;)V
.registers 8
const-string v0, "&_v"
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
if-eqz p2, :cond_2c
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/di;
const-string v3, "appendVersion"
invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d
invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/y;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/y;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->e:Landroid/content/Context;
return-object v0
.end method
.method static synthetic e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/analytics/y;->a:Ljava/lang/String;
return-object v0
.end method
.method private f()V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v0
iget v1, p0, Lcom/google/android/gms/analytics/y;->i:I
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
if-lez v0, :cond_3b
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/y;->a(I)Ljava/util/List;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Store full, deleting "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " hits to make room."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/y;->a([Ljava/lang/String;)V
:cond_3b
return-void
.end method
.method  a()I
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/at;
invoke-interface {v2}, Lcom/google/android/gms/analytics/at;->a()J
move-result-wide v2
iget-wide v4, p0, Lcom/google/android/gms/analytics/y;->h:J
const-wide/32 v6, 0x5265c00
add-long/2addr v4, v6
cmp-long v4, v2, v4
if-gtz v4, :cond_13
:cond_12
:goto_12
return v1
:cond_13
iput-wide v2, p0, Lcom/google/android/gms/analytics/y;->h:J
const-string v2, "Error opening database for deleteStaleHits."
invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
if-eqz v2, :cond_12
iget-object v3, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/at;
invoke-interface {v3}, Lcom/google/android/gms/analytics/at;->a()J
move-result-wide v3
const-wide v5, 0x9a7ec800L
sub-long/2addr v3, v5
const-string v5, "hits2"
const-string v6, "HIT_TIME < ?"
new-array v7, v0, [Ljava/lang/String;
invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v3
aput-object v3, v7, v1
invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v2
iget-object v3, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v4
if-nez v4, :cond_46
:goto_41
invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/ap;->a(Z)V
move v1, v2
goto :goto_12
:cond_46
move v0, v1
goto :goto_41
.end method
.method  a(I)Ljava/util/List;
.registers 15
const/4 v10, 0x0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
if-gtz p1, :cond_f
const-string v0, "Invalid maxHits specified. Skipping"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
move-object v0, v9
:goto_e
return-object v0
:cond_f
const-string v0, "Error opening database for peekHitIds."
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_19
move-object v0, v9
goto :goto_e
:cond_19
:try_start_19
const-string v1, "hits2"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "hit_id"
aput-object v4, v2, v3
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-string v7, "%s ASC"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v11, 0x0
const-string v12, "hit_id"
aput-object v12, v8, v11
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_3c
.catchall {:try_start_19 .. :try_end_3c} :catchall_7e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_5c
move-result-object v1
:try_start_3d
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_55
:cond_43
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
:try_end_52
.catchall {:try_start_3d .. :try_end_52} :catchall_86
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_52} :catch_88
move-result v0
if-nez v0, :cond_43
:cond_55
if-eqz v1, :cond_5a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_5a
:cond_5a
move-object v0, v9
goto :goto_e
:catch_5c
move-exception v0
move-object v1, v10
:goto_5e
:try_start_5e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error in peekHits fetching hitIds: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:try_end_78
.catchall {:try_start_5e .. :try_end_78} :catchall_86
if-eqz v1, :cond_5a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_5a
:catchall_7e
move-exception v0
move-object v1, v10
:goto_80
if-eqz v1, :cond_85
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_85
throw v0
:catchall_86
move-exception v0
goto :goto_80
:catch_88
move-exception v0
goto :goto_5e
.end method
.method public a(J)V
.registers 9
const/4 v5, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "Error opening database for clearHits"
invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
if-eqz v2, :cond_21
const-wide/16 v3, 0x0
cmp-long v3, p1, v3
if-nez v3, :cond_22
const-string v3, "hits2"
invoke-virtual {v2, v3, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:goto_16
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v3
if-nez v3, :cond_36
:goto_1e
invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/ap;->a(Z)V
:cond_21
return-void
:cond_22
new-array v3, v0, [Ljava/lang/String;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v1
const-string v4, "hits2"
const-string v5, "hit_app_id = ?"
invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
goto :goto_16
:cond_36
move v0, v1
goto :goto_1e
.end method
.method  a(Ljava/util/Collection;)V
.registers 9
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
:cond_8
const-string v0, "Empty/Null collection passed to deleteHits."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:goto_d
return-void
:cond_e
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
new-array v3, v0, [Ljava/lang/String;
const/4 v0, 0x0
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_1a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/analytics/bq;
add-int/lit8 v2, v1, 0x1
invoke-virtual {v0}, Lcom/google/android/gms/analytics/bq;->b()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v1
move v1, v2
goto :goto_1a
:cond_34
invoke-virtual {p0, v3}, Lcom/google/android/gms/analytics/y;->a([Ljava/lang/String;)V
goto :goto_d
.end method
.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->a()I
invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->f()V
invoke-direct {p0, p1, p5}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Map;Ljava/util/Collection;)V
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Map;JLjava/lang/String;)V
return-void
.end method
.method  a([Ljava/lang/String;)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_7
array-length v2, p1
if-nez v2, :cond_d
:cond_7
const-string v0, "Empty hitIds passed to deleteHits."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:goto_c
:cond_c
return-void
:cond_d
const-string v2, "Error opening database for deleteHits."
invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
if-eqz v2, :cond_c
const-string v3, "HIT_ID in (%s)"
new-array v4, v0, [Ljava/lang/Object;
const-string v5, ","
array-length v6, p1
const-string v7, "?"
invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;
move-result-object v6
invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
:try_start_2c
const-string v4, "hits2"
invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v3
if-nez v3, :cond_55
:goto_39
invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/ap;->a(Z)V
:try_end_3c
.catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3c} :catch_3d
goto :goto_c
:catch_3d
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Error deleting hits "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
goto :goto_c
:cond_55
move v0, v1
goto :goto_39
.end method
.method  b()I
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
const-string v2, "Error opening database for getNumStoredHits."
invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
if-nez v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
:try_start_b
const-string v3, "SELECT COUNT(*) from hits2"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_1e
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
:try_end_1c
.catchall {:try_start_b .. :try_end_1c} :catchall_30
.catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24
move-result-wide v2
long-to-int v0, v2
:cond_1e
if-eqz v1, :cond_a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_a
:catch_24
move-exception v2
:try_start_25
const-string v2, "Error getting numStoredHits"
invoke-static {v2}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:try_end_2a
.catchall {:try_start_25 .. :try_end_2a} :catchall_30
if-eqz v1, :cond_a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_a
:catchall_30
move-exception v0
if-eqz v1, :cond_36
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_36
throw v0
.end method
.method public b(I)Ljava/util/List;
.registers 17
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
const-string v1, "Error opening database for peekHits"
invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/y;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
if-nez v1, :cond_f
move-object v1, v10
:cond_e
:goto_e
return-object v1
:cond_f
const/4 v11, 0x0
:try_start_10
const-string v2, "hits2"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string v5, "hit_id"
aput-object v5, v3, v4
const/4 v4, 0x1
const-string v5, "hit_time"
aput-object v5, v3, v4
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "%s ASC"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v12, 0x0
const-string v13, "hit_id"
aput-object v13, v9, v12
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_38
.catchall {:try_start_10 .. :try_end_38} :catchall_f7
.catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_38} :catch_d2
move-result-object v12
:try_start_39
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
:try_end_3e
.catchall {:try_start_39 .. :try_end_3e} :catchall_173
.catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_3e} :catch_179
:try_start_3e
invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_5d
:cond_44
new-instance v2, Lcom/google/android/gms/analytics/bq;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
const/4 v6, 0x1
invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v6
invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/analytics/bq;-><init>(Ljava/lang/String;JJ)V
invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
:try_end_5a
.catchall {:try_start_3e .. :try_end_5a} :catchall_173
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_5a} :catch_17f
move-result v2
if-nez v2, :cond_44
:cond_5d
if-eqz v12, :cond_62
invoke-interface {v12}, Landroid/database/Cursor;->close()V
:cond_62
const/4 v10, 0x0
:try_start_63
const-string v2, "hits2"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string v5, "hit_id"
aput-object v5, v3, v4
const/4 v4, 0x1
const-string v5, "hit_string"
aput-object v5, v3, v4
const/4 v4, 0x2
const-string v5, "hit_url"
aput-object v5, v3, v4
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "%s ASC"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v13, 0x0
const-string v14, "hit_id"
aput-object v14, v9, v13
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_90
.catchall {:try_start_63 .. :try_end_90} :catchall_167
.catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_90} :catch_171
move-result-object v2
:try_start_91
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_ca
move v3, v10
:goto_98
move-object v0, v2
check-cast v0, Landroid/database/sqlite/SQLiteCursor;
move-object v1, v0
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;
move-result-object v1
invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I
move-result v1
if-lez v1, :cond_fe
invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/analytics/bq;
const/4 v4, 0x1
invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/bq;->a(Ljava/lang/String;)V
invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/analytics/bq;
const/4 v4, 0x2
invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/bq;->b(Ljava/lang/String;)V
:goto_c2
add-int/lit8 v1, v3, 0x1
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
:try_end_c7
.catchall {:try_start_91 .. :try_end_c7} :catchall_16e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_91 .. :try_end_c7} :catch_11c
move-result v3
if-nez v3, :cond_185
:cond_ca
if-eqz v2, :cond_cf
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_cf
move-object v1, v11
goto/16 :goto_e
:catch_d2
move-exception v1
move-object v2, v1
move-object v3, v11
move-object v1, v10
:goto_d6
:try_start_d6
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error in peekHits fetching hitIds: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:try_end_f0
.catchall {:try_start_d6 .. :try_end_f0} :catchall_176
if-eqz v3, :cond_e
invoke-interface {v3}, Landroid/database/Cursor;->close()V
goto/16 :goto_e
:catchall_f7
move-exception v1
:goto_f8
if-eqz v11, :cond_fd
invoke-interface {v11}, Landroid/database/Cursor;->close()V
:cond_fd
throw v1
:try_start_fe
:cond_fe
const-string v4, "HitString for hitId %d too large.  Hit will be deleted."
const/4 v1, 0x1
new-array v5, v1, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/analytics/bq;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/bq;->b()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:try_end_11b
.catchall {:try_start_fe .. :try_end_11b} :catchall_16e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_fe .. :try_end_11b} :catch_11c
goto :goto_c2
:catch_11c
move-exception v1
move-object v12, v2
:goto_11e
:try_start_11e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error in peekHits fetching hitString: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x0
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_142
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_15a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/analytics/bq;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/bq;->a()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_155
.catchall {:try_start_11e .. :try_end_155} :catchall_167
move-result v5
if-eqz v5, :cond_163
if-eqz v3, :cond_162
:cond_15a
if-eqz v12, :cond_15f
invoke-interface {v12}, Landroid/database/Cursor;->close()V
:cond_15f
move-object v1, v2
goto/16 :goto_e
:cond_162
const/4 v3, 0x1
:cond_163
:try_start_163
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_166
.catchall {:try_start_163 .. :try_end_166} :catchall_167
goto :goto_142
:catchall_167
move-exception v1
:goto_168
if-eqz v12, :cond_16d
invoke-interface {v12}, Landroid/database/Cursor;->close()V
:cond_16d
throw v1
:catchall_16e
move-exception v1
move-object v12, v2
goto :goto_168
:catch_171
move-exception v1
goto :goto_11e
:catchall_173
move-exception v1
move-object v11, v12
goto :goto_f8
:catchall_176
move-exception v1
move-object v11, v3
goto :goto_f8
:catch_179
move-exception v1
move-object v2, v1
move-object v3, v12
move-object v1, v10
goto/16 :goto_d6
:catch_17f
move-exception v1
move-object v2, v1
move-object v3, v12
move-object v1, v11
goto/16 :goto_d6
:cond_185
move v3, v1
goto/16 :goto_98
.end method
.method public c()V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
const-string v2, "Dispatch running..."
invoke-static {v2}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Lcom/google/android/gms/analytics/az;
invoke-interface {v2}, Lcom/google/android/gms/analytics/az;->a()Z
move-result v2
if-nez v2, :cond_10
:goto_f
return-void
:cond_10
const/16 v2, 0x28
invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/y;->b(I)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v3
if-eqz v3, :cond_27
const-string v1, "...nothing to dispatch"
invoke-static {v1}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/y;->d:Lcom/google/android/gms/analytics/ap;
invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/ap;->a(Z)V
goto :goto_f
:cond_27
iget-object v3, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/x;
if-nez v3, :cond_34
new-instance v3, Lcom/google/android/gms/analytics/x;
const-string v4, "_t=dispatch&_v=ma4.0.0"
invoke-direct {v3, v4, v0}, Lcom/google/android/gms/analytics/x;-><init>(Ljava/lang/String;Z)V
iput-object v3, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/x;
:cond_34
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v3
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
if-gt v3, v4, :cond_96
:goto_3e
iget-object v3, p0, Lcom/google/android/gms/analytics/y;->c:Lcom/google/android/gms/analytics/az;
iget-object v4, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/x;
invoke-interface {v3, v2, v4, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/util/List;Lcom/google/android/gms/analytics/x;Z)I
move-result v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "sent "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " of "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " hits"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Collection;)V
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
if-ne v0, v1, :cond_98
invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->b()I
move-result v0
if-lez v0, :cond_98
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->e:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->e()V
goto/16 :goto_f
:cond_96
move v0, v1
goto :goto_3e
:cond_98
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/x;
goto/16 :goto_f
.end method
.method public d()Lcom/google/android/gms/analytics/az;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/y;->c:Lcom/google/android/gms/analytics/az;
return-object v0
.end method