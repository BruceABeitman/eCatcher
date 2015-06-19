.class public Lcom/fsck/k9/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static preferences:Lcom/fsck/k9/Preferences;


# instance fields
.field private mStorage:Lcom/fsck/k9/preferences/Storage;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fsck/k9/preferences/Storage;->getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2f

    const-string v1, "k9"

    const-string v2, "Preferences storage is zero-size, importing from Android-style preferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/Editor;

    move-result-object v0

    const-string v1, "AndroidMail.Main"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/Editor;->copy(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/fsck/k9/preferences/Editor;->commit()Z

    :cond_2f
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
    .registers 3

    const-class v0, Lcom/fsck/k9/Preferences;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    if-nez v1, :cond_e

    new-instance v1, Lcom/fsck/k9/Preferences;

    invoke-direct {v1, p0}, Lcom/fsck/k9/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    :cond_e
    sget-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public dump()V
    .registers 1

    return-void
.end method

.method public getAccountByContentUri(Landroid/net/Uri;)Lcom/fsck/k9/Account;
    .registers 5

    new-instance v0, Lcom/fsck/k9/Account;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/Account;-><init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccounts()[Lcom/fsck/k9/Account;
    .registers 9

    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "accountUuids"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_17

    :cond_13
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/fsck/k9/Account;

    :goto_16
    return-object v5

    :cond_17
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v1, v5, [Lcom/fsck/k9/Account;

    const/4 v2, 0x0

    array-length v3, v4

    :goto_22
    if-ge v2, v3, :cond_30

    new-instance v5, Lcom/fsck/k9/Account;

    aget-object v6, v4, v2

    invoke-direct {v5, p0, v6}, Lcom/fsck/k9/Account;-><init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_30
    move-object v5, v1

    goto :goto_16
.end method

.method public getDefaultAccount()Lcom/fsck/k9/Account;
    .registers 11

    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "defaultAccountUuid"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v1

    if-eqz v4, :cond_24

    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_24

    aget-object v0, v2, v5

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    move-object v3, v0

    :cond_24
    if-nez v3, :cond_2f

    array-length v7, v1

    if-lez v7, :cond_2f

    const/4 v7, 0x0

    aget-object v3, v1, v7

    invoke-virtual {p0, v3}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    :cond_2f
    return-object v3

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_15
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    return-object v0
.end method

.method public setDefaultAccount(Lcom/fsck/k9/Account;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultAccountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
