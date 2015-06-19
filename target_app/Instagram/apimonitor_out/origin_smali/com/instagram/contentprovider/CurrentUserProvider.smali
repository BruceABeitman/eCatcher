.class public Lcom/instagram/contentprovider/CurrentUserProvider;
.super Landroid/content/ContentProvider;
.source "CurrentUserProvider.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COL_FULL_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "COL_PROFILE_PHOTO_URL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/contentprovider/CurrentUserProvider;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/contentprovider/CurrentUserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/instagram/contentprovider/CurrentUserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access to user information denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-void
.end method

.method private static b()Landroid/database/Cursor;
    .registers 4

    invoke-static {}, Lcom/instagram/n/a;->a()Lcom/instagram/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/n/a;->c()V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/instagram/contentprovider/CurrentUserProvider;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    invoke-direct {p0}, Lcom/instagram/contentprovider/CurrentUserProvider;->a()V

    invoke-static {}, Lcom/instagram/contentprovider/CurrentUserProvider;->b()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-direct {p0}, Lcom/instagram/contentprovider/CurrentUserProvider;->a()V

    invoke-static {}, Lcom/instagram/contentprovider/CurrentUserProvider;->b()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
