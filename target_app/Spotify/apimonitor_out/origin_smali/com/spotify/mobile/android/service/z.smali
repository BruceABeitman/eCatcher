.class public final Lcom/spotify/mobile/android/service/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/net/Uri;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.spotify.mobile.android.migration/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/z;->b:Landroid/net/Uri;

    const-string v0, "migration_complete"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/z;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/z;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/io/File;)V
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_8f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_ab
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_61
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_78

    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    :goto_15
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2e

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_9f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_1f} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1f} :catch_a5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_a2

    goto :goto_15

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    const-string v2, "MigrationClient"

    const-string v3, "Error migrating files."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_9f

    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_41

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_9f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_34} :catch_20
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2e .. :try_end_34} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_34} :catch_a5
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_a2

    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_2d

    :catch_38
    move-exception v0

    const-string v1, "MigrationClient"

    const-string v2, "Error migrating files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_41
    move-exception v0

    const-string v1, "MigrationClient"

    const-string v2, "Error migrating files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_4a
    move-exception v0

    :goto_4b
    :try_start_4b
    const-string v1, "MigrationClient"

    const-string v3, "Error migrating files."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_8f

    if-eqz v2, :cond_2d

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_2d

    :catch_58
    move-exception v0

    const-string v1, "MigrationClient"

    const-string v2, "Error migrating files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    const-string v1, "MigrationClient"

    const-string v3, "Error migrating files."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_8f

    if-eqz v2, :cond_2d

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_2d

    :catch_6f
    move-exception v0

    const-string v1, "MigrationClient"

    const-string v2, "Error migrating files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_78
    move-exception v0

    :goto_79
    :try_start_79
    const-string v1, "MigrationClient"

    const-string v3, "Error migrating files."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_8f

    if-eqz v2, :cond_2d

    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_2d

    :catch_86
    move-exception v0

    const-string v1, "MigrationClient"

    const-string v2, "Error migrating files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catchall_8f
    move-exception v0

    :goto_90
    if-eqz v2, :cond_95

    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    :cond_95
    :goto_95
    throw v0

    :catch_96
    move-exception v1

    const-string v2, "MigrationClient"

    const-string v3, "Error migrating files."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    :catchall_9f
    move-exception v0

    move-object v2, v1

    goto :goto_90

    :catch_a2
    move-exception v0

    move-object v2, v1

    goto :goto_79

    :catch_a5
    move-exception v0

    move-object v2, v1

    goto :goto_62

    :catch_a8
    move-exception v0

    move-object v2, v1

    goto :goto_4b

    :catch_ab
    move-exception v0

    move-object v1, v2

    goto/16 :goto_21
.end method

.method private b()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "MigrationClient"

    const-string v3, "Verifying provider..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MigrationClient"

    const-string v3, "Verifying signature..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/spotify/mobile/android/service/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.spotify.mobile.android.ui"

    const/16 v4, 0x48

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/service/aa;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_25

    :goto_24
    return v0

    :cond_25
    const-string v3, "MigrationClient"

    const-string v4, "Verifying authority..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_4f

    array-length v4, v3

    move v2, v0

    :goto_32
    if-ge v2, v4, :cond_4f

    aget-object v5, v3, v2

    const-string v6, "com.spotify.mobile.android.migration"

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_3d} :catch_45

    move-result v5

    if-eqz v5, :cond_42

    move v0, v1

    goto :goto_24

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :catch_45
    move-exception v2

    const-string v3, "Couldn\'t find package"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    const-string v1, "MigrationClient"

    const-string v2, "Verification failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method


# virtual methods
.method public final a()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Starting migration routine..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/service/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/service/z;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v2, v3, v1}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v2

    sget-object v4, Lcom/spotify/mobile/android/service/z;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v2, v4, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cy;->a()V

    :cond_24
    if-nez v3, :cond_30

    :goto_26
    if-nez v0, :cond_32

    const-string v0, "Migration already launched once. Skipping..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2f
    return-void

    :cond_30
    move v0, v1

    goto :goto_26

    :cond_32
    const-string v0, "Migration running for first time..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/z;->b()Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "MigrationClient"

    const-string v1, "Source provider cannot be found and verified. No migration."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_47
    new-instance v0, Lcom/spotify/mobile/android/service/ao;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/z;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/z;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/service/z;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    :try_start_5e
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/spotify/mobile/android/service/z;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "prefs"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    const-string v6, "prefs"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v0, v5}, Lcom/spotify/mobile/android/service/z;->a(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/io/File;)V
    :try_end_81
    .catchall {:try_start_5e .. :try_end_81} :catchall_9f

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "MigrationClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Migration took: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catchall_9f
    move-exception v0

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method
