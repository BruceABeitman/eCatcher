.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;
.super Landroid/content/ContentProvider;
.source "Camera360FeedbackProvider.java"


# static fields
.field public static final FEEDBACK_TABLE_NAME:Ljava/lang/String; = "feedback"

.field private static final URL_CAMER360_FEEDKBACK:I = 0x1

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.pinguo.camera360.crab.feedback"

    const-string/jumbo v2, "c360_feedback"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private constructQueryForCamera360Photo(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .registers 5

    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_30

    :goto_14
    if-lez v0, :cond_22

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_2c

    :cond_22
    monitor-exit p0

    return v0

    :pswitch_24
    :try_start_24
    const-string/jumbo v2, "feedback"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2c

    move-result v0

    goto :goto_14

    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string/jumbo v3, ""

    sget-object v4, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_34

    :goto_d
    iget-object v4, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2a

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    :cond_2a
    monitor-exit p0

    return-object p1

    :pswitch_2c
    :try_start_2c
    const-string/jumbo v3, "feedback"
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_d

    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public declared-synchronized onCreate()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper;

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_32

    move-result v2

    packed-switch v2, :pswitch_data_36

    :goto_10
    monitor-exit p0

    return-object v8

    :pswitch_12
    const/4 v2, 0x0

    :try_start_13
    invoke-direct {p0, v0, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->constructQueryForCamera360Photo(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    goto :goto_10

    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_30

    :goto_14
    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_2c

    :cond_26
    monitor-exit p0

    return v0

    :pswitch_28
    :try_start_28
    const-string/jumbo v2, "feedback"
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_14

    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch
.end method
