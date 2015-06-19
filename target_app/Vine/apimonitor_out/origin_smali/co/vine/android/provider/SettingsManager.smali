.class public Lco/vine/android/provider/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static final CURRENT_ACCOUNT_KEY:Ljava/lang/String; = "current_account"

.field private static final CURRENT_ACCOUNT_NAME:Ljava/lang/String; = "current_name"

.field private static final CURRENT_USER_ID_KEY:Ljava/lang/String; = "current_user_id"

.field private static final VALUE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "current_account"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAccountName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "current_name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserId(Landroid/content/Context;)J
    .registers 4

    const-string v0, "current_user_id"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEdition(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_edition"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getValue(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 14

    const-class v9, Lco/vine/android/provider/SettingsManager;

    monitor-enter v9

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-wide v7, p2

    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v9

    return-wide v7

    :catchall_2b
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static declared-synchronized getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-class v8, Lco/vine/android/provider/SettingsManager;

    monitor-enter v8

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v7, p2

    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v8

    return-object v7

    :catchall_2b
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    const-string v0, "current_account"

    invoke-static {p0, v0, p1}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_user_id"

    invoke-static {p0, v0, p3, p4}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "current_name"

    invoke-static {p0, v0, p2}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setValue(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/vine/android/provider/VineDatabaseHelper;->saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method private static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/vine/android/provider/VineDatabaseHelper;->saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method
