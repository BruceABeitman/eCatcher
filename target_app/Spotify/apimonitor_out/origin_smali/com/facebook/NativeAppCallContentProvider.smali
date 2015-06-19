.class public Lcom/facebook/NativeAppCallContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/NativeAppCallContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/NativeAppCallContentProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/facebook/k;

    invoke-direct {v0}, Lcom/facebook/k;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/NativeAppCallContentProvider;-><init>(Lcom/facebook/l;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/l;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object p1, p0, Lcom/facebook/NativeAppCallContentProvider;->b:Lcom/facebook/l;

    return-void
.end method

.method private static a(Landroid/net/Uri;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    invoke-static {p1}, Lcom/facebook/NativeAppCallContentProvider;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/facebook/NativeAppCallContentProvider;->b:Lcom/facebook/l;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/facebook/l;->a(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1f} :catch_21

    move-result-object v0

    return-object v0

    :catch_21
    move-exception v0

    sget-object v1, Lcom/facebook/NativeAppCallContentProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got unexpected exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
