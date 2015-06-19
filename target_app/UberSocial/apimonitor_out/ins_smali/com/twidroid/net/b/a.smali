.class public Lcom/twidroid/net/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x0
.field private static final b:Ljava/lang/String; = "ImageCache"
.field private static final c:I = 0x500000
.field private static final d:I = 0xa00000
.field private static final e:Landroid/graphics/Bitmap$CompressFormat; = null
.field private static final f:I = 0x64
.field private static final g:I = 0x0
.field private static final h:Z = true
.field private static final i:Z = true
.field private static final j:Z
.field private static final k:Z
.field private l:Lcom/twidroid/net/b/a/a;
.field private m:Landroid/support/v4/util/LruCache;
.field private n:Lcom/twidroid/net/b/b;
.field private final o:Ljava/lang/Object;
.field private p:Z
.method static constructor <clinit>()V
.registers 1
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
sput-object v0, Lcom/twidroid/net/b/a;->e:Landroid/graphics/Bitmap$CompressFormat;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/b/a;->p:Z
new-instance v0, Lcom/twidroid/net/b/b;
invoke-direct {v0, p1, p2}, Lcom/twidroid/net/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/twidroid/net/b/a;->a(Lcom/twidroid/net/b/b;)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/net/b/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/b/a;->p:Z
invoke-direct {p0, p1}, Lcom/twidroid/net/b/a;->a(Lcom/twidroid/net/b/b;)V
return-void
.end method
.method public static a(Landroid/graphics/Bitmap;)I
.registers 3
invoke-static {}, Lcom/twidroid/net/b/a/l;->d()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I
move-result v0
:goto_a
return v0
:cond_b
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
mul-int/2addr v0, v1
goto :goto_a
.end method
.method public static a(Ljava/io/File;)J
.registers 6
invoke-static {}, Lcom/twidroid/net/b/a/l;->b()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
new-instance v0, Landroid/os/StatFs;
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v0
int-to-long v3, v0
mul-long v0, v1, v3
goto :goto_a
.end method
.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/twidroid/net/b/b;)Lcom/twidroid/net/b/a;
.registers 4
invoke-static {p0}, Lcom/twidroid/net/b/a;->a(Landroid/support/v4/app/FragmentManager;)Lcom/twidroid/net/b/e;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/b/e;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a;
if-nez v0, :cond_14
new-instance v0, Lcom/twidroid/net/b/a;
invoke-direct {v0, p1}, Lcom/twidroid/net/b/a;-><init>(Lcom/twidroid/net/b/b;)V
invoke-virtual {v1, v0}, Lcom/twidroid/net/b/e;->a(Ljava/lang/Object;)V
:cond_14
return-object v0
.end method
.method public static a(Landroid/support/v4/app/FragmentManager;)Lcom/twidroid/net/b/e;
.registers 4
const-string v0, "ImageCache"
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/e;
if-nez v0, :cond_1c
new-instance v0, Lcom/twidroid/net/b/e;
invoke-direct {v0}, Lcom/twidroid/net/b/e;-><init>()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const-string v2, "ImageCache"
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
:cond_1c
return-object v0
.end method
.method public static a(Landroid/content/Context;)Ljava/io/File;
.registers 5
invoke-static {}, Lcom/twidroid/net/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/Android/data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/cache/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_a
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.registers 5
:try_start_0
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
invoke-static {}, Lcom/twidroid/net/b/a;->f()Z
move-result v0
if-nez v0, :cond_38
:cond_12
invoke-static {p0}, Lcom/twidroid/net/b/a;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_1b
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_37
return-object v0
:cond_38
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_42
move-result-object v0
move-object v1, v0
goto :goto_1b
:catch_42
move-exception v0
const-string v1, "ImageCache"
const-string v2, "NPE in getDiskCache()"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_37
.end method
.method private static a([B)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_6
array-length v2, p0
if-ge v0, v2, :cond_23
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_1d
const/16 v3, 0x30
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_23
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/twidroid/net/b/b;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget-object v0, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget-boolean v0, v0, Lcom/twidroid/net/b/b;->f:Z
if-eqz v0, :cond_13
new-instance v0, Lcom/twidroid/net/b/a$1;
iget-object v1, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget v1, v1, Lcom/twidroid/net/b/b;->a:I
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/a$1;-><init>(Lcom/twidroid/net/b/a;I)V
iput-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
:cond_13
iget-boolean v0, p1, Lcom/twidroid/net/b/b;->i:Z
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/twidroid/net/b/a;->a()V
:cond_1a
return-void
.end method
.method public static c(Lcom/twidroid/net/b/c;)Ljava/lang/String;
.registers 4
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/b/c;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-static {v0}, Lcom/twidroid/net/b/a;->a([B)Ljava/lang/String;
:try_end_18
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_20
move-result-object v0
:goto_19
invoke-virtual {p0}, Lcom/twidroid/net/b/c;->a()Z
move-result v1
if-eqz v1, :cond_2a
:goto_1f
return-object v0
:catch_20
move-exception v0
invoke-virtual {p0}, Lcom/twidroid/net/b/c;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_19
:cond_2a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "_"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/b/c;->c()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/b/c;->d()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1f
.end method
.method public static f()Z
.registers 1
invoke-static {}, Lcom/twidroid/net/b/a/l;->b()Z
move-result v0
if-eqz v0, :cond_b
invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x1
goto :goto_a
.end method
.method static synthetic h()Landroid/graphics/Bitmap$CompressFormat;
.registers 1
sget-object v0, Lcom/twidroid/net/b/a;->e:Landroid/graphics/Bitmap$CompressFormat;
return-object v0
.end method
.method public a(Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
.registers 3
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_f
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public a()V
.registers 7
iget-object v1, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->d()Z
move-result v0
if-eqz v0, :cond_3e
:cond_f
iget-object v0, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget-object v0, v0, Lcom/twidroid/net/b/b;->c:Ljava/io/File;
iget-object v2, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget-boolean v2, v2, Lcom/twidroid/net/b/b;->g:Z
if-eqz v2, :cond_3e
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_24
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_24
invoke-static {v0}, Lcom/twidroid/net/b/a;->a(Ljava/io/File;)J
move-result-wide v2
iget-object v4, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget v4, v4, Lcom/twidroid/net/b/b;->b:I
:try_end_2c
.catchall {:try_start_3 .. :try_end_2c} :catchall_67
int-to-long v4, v4
cmp-long v2, v2, v4
if-lez v2, :cond_3e
const/4 v2, 0x1
const/4 v3, 0x1
:try_start_33
iget-object v4, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget v4, v4, Lcom/twidroid/net/b/b;->b:I
int-to-long v4, v4
invoke-static {v0, v2, v3, v4, v5}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/File;IIJ)Lcom/twidroid/net/b/a/a;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
:try_end_3e
.catchall {:try_start_33 .. :try_end_3e} :catchall_67
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_48
:goto_3e
:cond_3e
const/4 v0, 0x0
:try_start_3f
iput-boolean v0, p0, Lcom/twidroid/net/b/a;->p:Z
iget-object v0, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catch_48
move-exception v0
iget-object v2, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
const/4 v3, 0x0
iput-object v3, v2, Lcom/twidroid/net/b/b;->c:Ljava/io/File;
const-string v2, "ImageCache"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "initDiskCache - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3e
:catchall_67
move-exception v0
monitor-exit v1
:try_end_69
.catchall {:try_start_3f .. :try_end_69} :catchall_67
throw v0
.end method
.method public a(Lcom/twidroid/net/b/c;Landroid/graphics/Bitmap;)V
.registers 10
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_16
iget-object v2, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v2
:try_start_19
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
if-eqz v0, :cond_4d
invoke-static {p1}, Lcom/twidroid/net/b/a;->c(Lcom/twidroid/net/b/c;)Ljava/lang/String;
:try_end_20
.catchall {:try_start_19 .. :try_end_20} :catchall_4f
move-result-object v1
const/4 v0, 0x0
:try_start_22
iget-object v3, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v3, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;)Lcom/twidroid/net/b/a/e;
move-result-object v3
if-nez v3, :cond_52
iget-object v3, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v3, v1}, Lcom/twidroid/net/b/a/a;->b(Ljava/lang/String;)Lcom/twidroid/net/b/a/b;
move-result-object v1
if-eqz v1, :cond_48
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/twidroid/net/b/a/b;->c(I)Ljava/io/OutputStream;
:try_end_36
.catchall {:try_start_22 .. :try_end_36} :catchall_a3
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_36} :catch_5b
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_7f
move-result-object v0
:try_start_37
iget-object v3, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget-object v3, v3, Lcom/twidroid/net/b/b;->d:Landroid/graphics/Bitmap$CompressFormat;
iget-object v4, p0, Lcom/twidroid/net/b/a;->n:Lcom/twidroid/net/b/b;
iget v4, v4, Lcom/twidroid/net/b/b;->e:I
invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Lcom/twidroid/net/b/a/b;->a()V
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:cond_48
:goto_48
:try_end_48
.catchall {:try_start_37 .. :try_end_48} :catchall_b1
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_48} :catch_bd
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_b8
if-eqz v0, :cond_4d
:try_start_4a
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_4d
:cond_4d
:try_start_4d
:try_end_4d
.catchall {:try_start_4a .. :try_end_4d} :catchall_4f
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_ad
monitor-exit v2
goto :goto_4
:catchall_4f
move-exception v0
monitor-exit v2
:try_end_51
.catchall {:try_start_4d .. :try_end_51} :catchall_4f
throw v0
:cond_52
const/4 v1, 0x0
:try_start_53
invoke-virtual {v3, v1}, Lcom/twidroid/net/b/a/e;->a(I)Ljava/io/InputStream;
move-result-object v1
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_5a
.catchall {:try_start_53 .. :try_end_5a} :catchall_a3
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_5b
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_7f
goto :goto_48
:catch_5b
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
:goto_5f
:try_start_5f
const-string v3, "ImageCache"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "addBitmapToCache - "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_77
.catchall {:try_start_5f .. :try_end_77} :catchall_b6
if-eqz v1, :cond_4d
:try_start_79
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_7c
.catchall {:try_start_79 .. :try_end_7c} :catchall_4f
.catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
goto :goto_4d
:catch_7d
move-exception v0
goto :goto_4d
:catch_7f
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
:goto_83
:try_start_83
const-string v3, "ImageCache"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "addBitmapToCache - "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_9b
.catchall {:try_start_83 .. :try_end_9b} :catchall_b6
if-eqz v1, :cond_4d
:try_start_9d
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_a0
.catchall {:try_start_9d .. :try_end_a0} :catchall_4f
.catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1
goto :goto_4d
:catch_a1
move-exception v0
goto :goto_4d
:catchall_a3
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
:goto_a7
if-eqz v1, :cond_ac
:try_start_a9
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:cond_ac
:try_start_ac
:try_end_ac
.catchall {:try_start_a9 .. :try_end_ac} :catchall_4f
.catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_af
:goto_ac
throw v0
:catch_ad
:try_end_ad
.catchall {:try_start_ac .. :try_end_ad} :catchall_4f
move-exception v0
goto :goto_4d
:catch_af
move-exception v1
goto :goto_ac
:catchall_b1
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_a7
:catchall_b6
move-exception v0
goto :goto_a7
:catch_b8
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_83
:catch_bd
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_5f
.end method
.method public b(Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
.registers 9
const/4 v0, 0x0
invoke-static {p1}, Lcom/twidroid/net/b/a;->c(Lcom/twidroid/net/b/c;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v3
:try_start_8
:goto_8
iget-boolean v2, p0, Lcom/twidroid/net/b/a;->p:Z
:try_end_a
.catchall {:try_start_8 .. :try_end_a} :catchall_3d
if-eqz v2, :cond_14
:try_start_c
iget-object v2, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->wait()V
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_3d
.catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12
goto :goto_8
:catch_12
move-exception v2
goto :goto_8
:cond_14
:try_start_14
iget-object v2, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
:try_end_16
.catchall {:try_start_14 .. :try_end_16} :catchall_3d
if-eqz v2, :cond_46
:try_start_18
iget-object v2, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v2, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;)Lcom/twidroid/net/b/a/e;
move-result-object v1
if-eqz v1, :cond_40
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/twidroid/net/b/a/e;->a(I)Ljava/io/InputStream;
:try_end_24
.catchall {:try_start_18 .. :try_end_24} :catchall_6a
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_48
move-result-object v2
if-eqz v2, :cond_41
:try_start_27
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_7b
.catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_2a} :catch_32
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_7d
move-result-object v0
if-eqz v2, :cond_30
:try_start_2d
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_30
:cond_30
:try_start_30
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_3d
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_73
monitor-exit v3
:goto_31
:try_end_31
.catchall {:try_start_30 .. :try_end_31} :catchall_3d
return-object v0
:catch_32
move-exception v1
:try_start_33
invoke-static {}, Ljava/lang/System;->gc()V
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_7b
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_7d
if-eqz v2, :cond_3b
:try_start_38
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_3d
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_75
:try_start_3b
:goto_3b
:cond_3b
monitor-exit v3
goto :goto_31
:catchall_3d
move-exception v0
monitor-exit v3
:try_end_3f
.catchall {:try_start_3b .. :try_end_3f} :catchall_3d
throw v0
:cond_40
move-object v2, v0
:cond_41
if-eqz v2, :cond_46
:try_start_43
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_3d
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_77
:goto_46
:cond_46
:try_start_46
monitor-exit v3
:try_end_47
.catchall {:try_start_46 .. :try_end_47} :catchall_3d
goto :goto_31
:catch_48
move-exception v1
move-object v2, v0
:goto_4a
:try_start_4a
const-string v4, "ImageCache"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "getBitmapFromDiskCache - "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_62
.catchall {:try_start_4a .. :try_end_62} :catchall_7b
if-eqz v2, :cond_46
:try_start_64
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_67
.catchall {:try_start_64 .. :try_end_67} :catchall_3d
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
goto :goto_46
:catch_68
move-exception v1
goto :goto_46
:catchall_6a
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_6d
if-eqz v2, :cond_72
:try_start_6f
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_72
:goto_72
:try_start_72
:try_end_72
.catchall {:try_start_6f .. :try_end_72} :catchall_3d
.catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_79
throw v0
:try_end_73
.catchall {:try_start_72 .. :try_end_73} :catchall_3d
:catch_73
move-exception v1
goto :goto_30
:catch_75
move-exception v1
goto :goto_3b
:catch_77
move-exception v1
goto :goto_46
:catch_79
move-exception v1
goto :goto_72
:catchall_7b
move-exception v0
goto :goto_6d
:catch_7d
move-exception v1
goto :goto_4a
.end method
.method public b()V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
:cond_9
iget-object v1, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_d
iput-boolean v0, p0, Lcom/twidroid/net/b/a;->p:Z
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->d()Z
:try_end_18
.catchall {:try_start_d .. :try_end_18} :catchall_42
move-result v0
if-nez v0, :cond_26
:try_start_1b
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->f()V
:goto_20
:try_end_20
.catchall {:try_start_1b .. :try_end_20} :catchall_42
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_28
const/4 v0, 0x0
:try_start_21
iput-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {p0}, Lcom/twidroid/net/b/a;->a()V
:cond_26
monitor-exit v1
return-void
:catch_28
move-exception v0
const-string v2, "ImageCache"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "clearCache - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_20
:catchall_42
move-exception v0
monitor-exit v1
:try_end_44
.catchall {:try_start_21 .. :try_end_44} :catchall_42
throw v0
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/net/b/a;->m:Landroid/support/v4/util/LruCache;
invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
:cond_9
return-void
.end method
.method public d()V
.registers 6
iget-object v1, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_28
if-eqz v0, :cond_c
:try_start_7
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->e()V
:cond_c
:goto_c
:try_start_c
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_28
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e
monitor-exit v1
return-void
:catch_e
move-exception v0
const-string v2, "ImageCache"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "flush - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c
:catchall_28
move-exception v0
monitor-exit v1
:try_end_2a
.catchall {:try_start_c .. :try_end_2a} :catchall_28
throw v0
.end method
.method public e()V
.registers 6
iget-object v1, p0, Lcom/twidroid/net/b/a;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_33
if-eqz v0, :cond_17
:try_start_7
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->d()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/b/a;->l:Lcom/twidroid/net/b/a/a;
:cond_17
:try_start_17
:try_end_17
.catchall {:try_start_7 .. :try_end_17} :catchall_33
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_19
:goto_17
monitor-exit v1
return-void
:catch_19
move-exception v0
const-string v2, "ImageCache"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "close - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_17
:catchall_33
move-exception v0
monitor-exit v1
:try_end_35
.catchall {:try_start_17 .. :try_end_35} :catchall_33
throw v0
.end method
.method public g()V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/twidroid/net/b/d;
invoke-direct {v0, p0}, Lcom/twidroid/net/b/d;-><init>(Lcom/twidroid/net/b/a;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/d;->d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;
return-void
.end method