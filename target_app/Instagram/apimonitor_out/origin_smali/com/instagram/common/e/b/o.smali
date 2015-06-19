.class public Lcom/instagram/common/e/b/o;
.super Ljava/lang/Object;
.source "IgImageCacheUpgradeHelper.java"

# interfaces
.implements Lcom/instagram/common/l/b/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/common/e/b/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/common/e/b/o;

    sput-object v0, Lcom/instagram/common/e/b/o;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/e/b/o;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/e/b/o;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/instagram/common/e/b/o;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/common/e/b/o;->b:Landroid/content/Context;

    const-string v1, "image_cache_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "format_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/e/b/q;

    invoke-direct {v2, p0, v0}, Lcom/instagram/common/e/b/q;-><init>(Lcom/instagram/common/e/b/o;Landroid/content/SharedPreferences;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/common/e/b/o;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/common/e/b/o;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lcom/instagram/common/e/b/p;

    invoke-direct {v2, p0}, Lcom/instagram/common/e/b/p;-><init>(Lcom/instagram/common/e/b/o;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_19
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_23
    return-void
.end method
