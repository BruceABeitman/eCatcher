.class public Lcom/pinguo/album/common/PGPreferences;
.super Ljava/lang/Object;
.source "PGPreferences.java"


# static fields
.field private static final HAS_MORE_METADATA:Ljava/lang/String; = "has_more_metadata"

.field private static final INCREMENT_DATA_LAST_TIME:Ljava/lang/String; = "increment_last_time"

.field private static final IS_FIRST_TIME_ENTER_CLOUD:Ljava/lang/String; = "first_enter_cloud"

.field private static final METADATA_LAST_DOWNLOAD_TIME:Ljava/lang/String; = "metadata_last_download_time"

.field private static final META_DATA_LINKER:Ljava/lang/String; = "metadata_linker"

.field public static final PREF_FILE:Ljava/lang/String; = "pg_preference"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataLinkerSp(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "metadata_linker"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIncrementDataUpdateTime(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "increment_last_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMetadataUpdateTime(Landroid/content/Context;J)J
    .registers 6

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "metadata_last_download_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static hasMoreMetadata(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "pg_preference"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "has_more_metadata"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFirstTimeEnterCloud(Landroid/content/Context;)Z
    .registers 4

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_enter_cloud"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setDataLinkerSp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "metadata_linker"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/common/SharedPrefCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setIncrementDataUpdateTime(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "increment_last_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/common/SharedPrefCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setIsFirstTimeEnterCloud(Landroid/content/Context;Z)V
    .registers 5

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_enter_cloud"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/common/SharedPrefCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setMetaDataUpdateTime(Landroid/content/Context;J)V
    .registers 6

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "metadata_last_download_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/common/SharedPrefCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static sethasMoreMetadata(Landroid/content/Context;Z)V
    .registers 5

    const-string/jumbo v1, "pg_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "has_more_metadata"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/common/SharedPrefCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
