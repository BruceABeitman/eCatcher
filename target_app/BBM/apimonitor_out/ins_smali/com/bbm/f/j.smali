.class public final Lcom/bbm/f/j;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"
.implements Lcom/bbm/f/ad;
.field private static e:J
.field private static i:Z
.field private static j:Z
.field private final A:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
.field private B:J
.field private C:Lcom/bbm/util/cr;
.field private D:Lcom/bbm/util/cr;
.field private final E:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
.field private F:Lcom/blackberry/ids/INotificationCallback;
.field protected a:Z
.field  b:Lcom/bbm/j/a;
.field  c:Lcom/bbm/j/a;
.field  d:Lcom/bbm/j/a;
.field private f:Lcom/google/b/a/l;
.field private g:Lcom/google/b/a/l;
.field private h:Lcom/google/b/a/l;
.field private k:Z
.field private l:Z
.field private m:Z
.field private final n:Ljava/lang/Runnable;
.field private o:Z
.field private final p:Ljava/util/EnumMap;
.field private final q:Ljava/util/EnumMap;
.field private final r:Lcom/bbm/util/cr;
.field private final s:Ljava/io/File;
.field private final t:Landroid/content/res/AssetManager;
.field private final u:Lcom/bbm/util/dc;
.field private final v:Ljava/util/concurrent/LinkedBlockingQueue;
.field private final w:Lcom/rim/bbm/BbmCoreService$Callbacks;
.field private x:Lcom/google/b/a/l;
.field private final y:Landroid/content/Context;
.field private final z:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
const-wide/16 v0, 0x64
sput-wide v0, Lcom/bbm/f/j;->e:J
sput-boolean v2, Lcom/bbm/f/j;->i:Z
sput-boolean v2, Lcom/bbm/f/j;->j:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/content/res/AssetManager;Ljava/lang/Class;)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v2
iput-object v2, p0, Lcom/bbm/f/j;->f:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v2
iput-object v2, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v2
iput-object v2, p0, Lcom/bbm/f/j;->h:Lcom/google/b/a/l;
iput-boolean v1, p0, Lcom/bbm/f/j;->k:Z
iput-boolean v1, p0, Lcom/bbm/f/j;->l:Z
iput-boolean v1, p0, Lcom/bbm/f/j;->m:Z
new-instance v2, Lcom/bbm/f/k;
invoke-direct {v2, p0}, Lcom/bbm/f/k;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->n:Ljava/lang/Runnable;
iput-boolean v1, p0, Lcom/bbm/f/j;->o:Z
new-instance v2, Ljava/util/EnumMap;
const-class v3, Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
iput-object v2, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
new-instance v2, Ljava/util/EnumMap;
const-class v3, Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
iput-object v2, p0, Lcom/bbm/f/j;->q:Ljava/util/EnumMap;
new-instance v2, Lcom/bbm/util/cr;
sget-object v3, Lcom/bbm/f/b;->c:Lcom/bbm/f/b;
invoke-direct {v2, v3}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v2, p0, Lcom/bbm/f/j;->r:Lcom/bbm/util/cr;
new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v2, p0, Lcom/bbm/f/j;->v:Ljava/util/concurrent/LinkedBlockingQueue;
new-instance v2, Lcom/bbm/f/l;
invoke-direct {v2, p0}, Lcom/bbm/f/l;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->w:Lcom/rim/bbm/BbmCoreService$Callbacks;
iput-boolean v0, p0, Lcom/bbm/f/j;->a:Z
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v2
iput-object v2, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
new-instance v2, Lcom/bbm/f/o;
invoke-direct {v2, p0}, Lcom/bbm/f/o;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->A:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
const-wide/16 v2, -0x1
iput-wide v2, p0, Lcom/bbm/f/j;->B:J
new-instance v2, Lcom/bbm/f/p;
invoke-direct {v2, p0}, Lcom/bbm/f/p;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->b:Lcom/bbm/j/a;
new-instance v2, Lcom/bbm/f/q;
invoke-direct {v2, p0}, Lcom/bbm/f/q;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->c:Lcom/bbm/j/a;
new-instance v2, Lcom/bbm/util/cr;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-direct {v2, v3}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v2, p0, Lcom/bbm/f/j;->C:Lcom/bbm/util/cr;
new-instance v2, Lcom/bbm/util/cr;
new-instance v3, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;
invoke-direct {v3}, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;-><init>()V
invoke-direct {v2, v3}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v2, p0, Lcom/bbm/f/j;->D:Lcom/bbm/util/cr;
new-instance v2, Lcom/bbm/f/r;
invoke-direct {v2, p0}, Lcom/bbm/f/r;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->E:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
new-instance v2, Lcom/bbm/f/s;
invoke-direct {v2, p0}, Lcom/bbm/f/s;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->d:Lcom/bbm/j/a;
new-instance v2, Lcom/bbm/f/t;
invoke-direct {v2, p0}, Lcom/bbm/f/t;-><init>(Lcom/bbm/f/j;)V
iput-object v2, p0, Lcom/bbm/f/j;->F:Lcom/blackberry/ids/INotificationCallback;
iget-object v2, p0, Lcom/bbm/f/j;->b:Lcom/bbm/j/a;
iput-boolean v1, v2, Lcom/bbm/j/a;->c:Z
iput-object p1, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
iput-object p4, p0, Lcom/bbm/f/j;->z:Ljava/lang/Class;
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v2
iput-object v2, p0, Lcom/bbm/f/j;->u:Lcom/bbm/util/dc;
iput-object p2, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
iput-object p3, p0, Lcom/bbm/f/j;->t:Landroid/content/res/AssetManager;
new-instance v2, Lcom/bbm/f/x;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Core:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-direct {v2, p0, v3}, Lcom/bbm/f/x;-><init>(Lcom/bbm/f/j;Lcom/rim/bbm/BbmCoreService$MessageType;)V
invoke-direct {p0, v2}, Lcom/bbm/f/j;->a(Lcom/bbm/f/x;)V
new-instance v2, Lcom/bbm/f/x;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Groups:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-direct {v2, p0, v3}, Lcom/bbm/f/x;-><init>(Lcom/bbm/f/j;Lcom/rim/bbm/BbmCoreService$MessageType;)V
invoke-direct {p0, v2}, Lcom/bbm/f/j;->a(Lcom/bbm/f/x;)V
new-instance v2, Lcom/bbm/f/x;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Ads:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-direct {v2, p0, v3}, Lcom/bbm/f/x;-><init>(Lcom/bbm/f/j;Lcom/rim/bbm/BbmCoreService$MessageType;)V
invoke-direct {p0, v2}, Lcom/bbm/f/j;->a(Lcom/bbm/f/x;)V
iget-object v2, p0, Lcom/bbm/f/j;->q:Ljava/util/EnumMap;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Core:Lcom/rim/bbm/BbmCoreService$MessageType;
new-instance v4, Lcom/bbm/f/as;
invoke-direct {v4}, Lcom/bbm/f/as;-><init>()V
invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/bbm/f/j;->q:Ljava/util/EnumMap;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Groups:Lcom/rim/bbm/BbmCoreService$MessageType;
new-instance v4, Lcom/bbm/f/as;
invoke-direct {v4}, Lcom/bbm/f/as;-><init>()V
invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/bbm/f/j;->q:Ljava/util/EnumMap;
sget-object v3, Lcom/rim/bbm/BbmCoreService$MessageType;->Ads:Lcom/rim/bbm/BbmCoreService$MessageType;
new-instance v4, Lcom/bbm/f/as;
invoke-direct {v4}, Lcom/bbm/f/as;-><init>()V
invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "new_install"
invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_108
const-string v3, "whats_new_version"
invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_143
:cond_108
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "bbmcore/master.db"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v4, "new_install"
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_147
:goto_138
invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "whats_new_version"
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_143
invoke-direct {p0}, Lcom/bbm/f/j;->q()V
return-void
:cond_147
move v0, v1
goto :goto_138
.end method
.method private static a(Landroid/content/Context;)J
.registers 5
const/4 v3, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
new-instance v2, Ljava/util/zip/ZipFile;
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
:try_start_15
:try_end_15
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_28
const-string v0, "classes.dex"
invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
move-result-object v0
invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J
:try_end_1e
.catchall {:try_start_15 .. :try_end_1e} :catchall_23
move-result-wide v0
:try_start_1f
invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
:goto_22
return-wide v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
throw v0
:catch_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_28
move-exception v0
const-string v1, "Error reading self-timestamp"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
goto :goto_22
.end method
.method static synthetic a(Lcom/bbm/f/j;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->r:Lcom/bbm/util/cr;
return-object v0
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(ILjava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v0
:try_start_a
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
const/16 v2, 0x400
new-array v2, v2, [B
:goto_13
invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
if-lez v3, :cond_20
const/4 v4, 0x0
invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
goto :goto_13
:catch_1e
move-exception v0
:goto_1f
return-void
:cond_20
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_26
.catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_26} :catch_1e
.catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_27
goto :goto_1f
:catch_27
move-exception v0
goto :goto_1f
.end method
.method private a(Lcom/bbm/f/x;)V
.registers 4
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
iget-object v1, p1, Lcom/bbm/f/x;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private static a(Ljava/io/InputStream;Ljava/io/File;)V
.registers 6
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v1, 0x2800
new-array v1, v1, [B
:goto_10
invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_1c
const/4 v3, 0x0
invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
goto :goto_10
:cond_1c
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
return-void
.end method
.method static synthetic a(Lcom/bbm/f/j;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/f/j;->m:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/f/j;)Lcom/rim/bbm/BbmCoreService;
.registers 2
invoke-direct {p0}, Lcom/bbm/f/j;->p()Lcom/rim/bbm/BbmCoreService;
move-result-object v0
return-object v0
.end method
.method private b(Ljava/lang/String;)V
.registers 5
const-string v0, "Create %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
return-void
.end method
.method private c(Ljava/lang/String;)V
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/bbm/f/j;->B:J
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-nez v1, :cond_34
iget-object v1, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
invoke-static {v1}, Lcom/bbm/f/j;->a(Landroid/content/Context;)J
move-result-wide v1
iput-wide v1, p0, Lcom/bbm/f/j;->B:J
:cond_34
iget-wide v1, p0, Lcom/bbm/f/j;->B:J
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v3
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_44
cmp-long v1, v3, v1
if-gez v1, :cond_7c
:cond_44
:try_start_44
iget-object v1, p0, Lcom/bbm/f/j;->t:Landroid/content/res/AssetManager;
invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
const-string v2, "copying %1$s from assetManager..."
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_59
:try_end_59
.catch Ljava/io/IOException; {:try_start_44 .. :try_end_59} :catch_71
invoke-static {v1, v0}, Lcom/bbm/f/j;->a(Ljava/io/InputStream;Ljava/io/File;)V
:try_end_5c
.catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_60
:goto_5c
:try_start_5c
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_5f
return-void
:catch_60
move-exception v2
const-string v3, "Error while copying %1$s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
aput-object v0, v4, v5
invoke-static {v2, v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_70
.catch Ljava/io/IOException; {:try_start_5c .. :try_end_70} :catch_71
goto :goto_5c
:catch_71
move-exception v0
const-string v0, "Tried to copy non existing file %s"
new-array v1, v7, [Ljava/lang/Object;
aput-object p1, v1, v6
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_5f
:cond_7c
const-string v1, "%1$s is already up-to-date, skipping..."
new-array v2, v7, [Ljava/lang/Object;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v6
invoke-static {v1, v2}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_5f
.end method
.method static synthetic c(Lcom/bbm/f/j;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/f/j;->k:Z
return v0
.end method
.method static synthetic d(Lcom/bbm/f/j;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/f/j;->l:Z
return v0
.end method
.method static synthetic e(Lcom/bbm/f/j;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->n:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/f/j;)Lcom/bbm/util/dc;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->u:Lcom/bbm/util/dc;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/f/j;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->h:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/f/j;)Ljava/util/concurrent/LinkedBlockingQueue;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->v:Ljava/util/concurrent/LinkedBlockingQueue;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/f/j;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/f/j;->o:Z
return v0
.end method
.method static synthetic j()J
.registers 2
invoke-static {}, Lcom/bbm/f/j;->o()J
move-result-wide v0
return-wide v0
.end method
.method static synthetic j(Lcom/bbm/f/j;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/x;
iget-object v0, v0, Lcom/bbm/f/x;->b:Lcom/bbm/f/aa;
invoke-virtual {v0}, Lcom/bbm/f/aa;->a()V
goto :goto_a
:cond_1c
return-void
.end method
.method static synthetic k()Z
.registers 1
sget-boolean v0, Lcom/bbm/f/j;->i:Z
return v0
.end method
.method static synthetic k(Lcom/bbm/f/j;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/f/j;->o:Z
return v0
.end method
.method static synthetic l(Lcom/bbm/f/j;)Ljava/util/EnumMap;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->q:Ljava/util/EnumMap;
return-object v0
.end method
.method static synthetic l()Z
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/f/j;->i:Z
return v0
.end method
.method static synthetic m(Lcom/bbm/f/j;)Ljava/util/EnumMap;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
return-object v0
.end method
.method static synthetic m()Z
.registers 1
sget-boolean v0, Lcom/bbm/f/j;->j:Z
return v0
.end method
.method static synthetic n(Lcom/bbm/f/j;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic n()Z
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/f/j;->j:Z
return v0
.end method
.method private static o()J
.registers 6
const-wide/32 v4, 0x493e0
sget-wide v0, Lcom/bbm/f/j;->e:J
const-wide/16 v2, 0xa
mul-long/2addr v0, v2
sput-wide v0, Lcom/bbm/f/j;->e:J
cmp-long v0, v0, v4
if-lez v0, :cond_10
sput-wide v4, Lcom/bbm/f/j;->e:J
:cond_10
const-string v0, "Service layer restart backoff now %d ms"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-wide v3, Lcom/bbm/f/j;->e:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-wide v0, Lcom/bbm/f/j;->e:J
return-wide v0
.end method
.method static synthetic o(Lcom/bbm/f/j;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->D:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/f/j;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->C:Lcom/bbm/util/cr;
return-object v0
.end method
.method private p()Lcom/rim/bbm/BbmCoreService;
.registers 10
const/4 v0, 0x0
const/4 v8, 0x1
const/4 v2, 0x0
const-string v1, "logs"
invoke-direct {p0, v1}, Lcom/bbm/f/j;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iget-object v1, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-nez v1, :cond_92
const-string v1, "Getting instance of BbmPlatformService"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getInstance()Lcom/rim/bbm/BbmPlatformService;
move-result-object v1
invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v1
iput-object v1, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
const-string v1, "Got instance of BbmPlatformService"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-boolean v1, Lcom/bbm/f/j;->i:Z
if-nez v1, :cond_8d
iget-boolean v1, p0, Lcom/bbm/f/j;->l:Z
if-nez v1, :cond_8d
const-string v1, "transport/transport.cfg"
invoke-direct {p0, v1}, Lcom/bbm/f/j;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v3, "certs/ca.pem"
invoke-direct {p0, v3}, Lcom/bbm/f/j;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "Starting platform. Config path: %s, Log dir: %s, Tls file: %s"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
aput-object v1, v5, v2
aput-object v6, v5, v8
const/4 v7, 0x2
aput-object v3, v5, v7
invoke-static {v4, v5}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v4, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
iget-object v5, p0, Lcom/bbm/f/j;->z:Ljava/lang/Class;
invoke-static {v4, v1, v6, v3, v5}, Lcom/rim/bbm/BbmPlatformService;->startPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, "StartPlatform returned."
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "Starting BBID now..."
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/f/j;->A:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
sget-object v3, Lcom/bbm/ae;->a:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/rim/bbm/BbmPlatformService;->startBBID(Lcom/rim/bbm/BbmPlatformService$IDSDelegate;Ljava/lang/String;)I
const-string v1, "StartBBID returned."
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "Adding platform connection monitor"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/f/j;->E:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
invoke-static {v1}, Lcom/rim/bbm/BbmPlatformService;->setPlatformDelegate(Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;)V
const-string v1, "Add platform connection monitor returned"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "ids_client_test"
iget-object v5, p0, Lcom/bbm/f/j;->F:Lcom/blackberry/ids/INotificationCallback;
move v3, v2
move-object v4, v0
invoke-static/range {v0 .. v5}, Lcom/blackberry/ids/IDS;->ids_register_notifier(Ljava/lang/Object;Ljava/lang/String;IILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
sput-boolean v8, Lcom/bbm/f/j;->i:Z
:cond_8d
iget-object v0, p0, Lcom/bbm/f/j;->c:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
:cond_92
iget-object v0, p0, Lcom/bbm/f/j;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-nez v0, :cond_f0
const-string v0, "Creating new BbmCoreService now. Home dir: %s"
new-array v1, v8, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Lcom/rim/bbm/BbmCoreService;
iget-object v3, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
iget-object v4, p0, Lcom/bbm/f/j;->w:Lcom/rim/bbm/BbmCoreService$Callbacks;
iget-object v0, p0, Lcom/bbm/f/j;->s:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmPlatformService;
invoke-direct {v1, v3, v4, v5, v0}, Lcom/rim/bbm/BbmCoreService;-><init>(Landroid/content/Context;Lcom/rim/bbm/BbmCoreService$Callbacks;Ljava/lang/String;Lcom/rim/bbm/BbmPlatformService;)V
invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/j;->f:Lcom/google/b/a/l;
const-string v0, "Creating BbmCoreService returned."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->r()Ljava/lang/String;
move-result-object v1
const-string v0, "Setting BbmCore app version as %s"
new-array v3, v8, [Ljava/lang/Object;
aput-object v1, v3, v2
invoke-static {v0, v3}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/j;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmCoreService;
invoke-virtual {v0, v1}, Lcom/rim/bbm/BbmCoreService;->setAppVersion(Ljava/lang/String;)V
const-string v0, "BbmCore setAppVersion returned."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_f0
iget-object v0, p0, Lcom/bbm/f/j;->h:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-nez v0, :cond_132
const-string v0, "Starting MediaCallService..."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->getInstance()Lcom/rim/bbm/BbmMediaCallService;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/j;->h:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/f/j;->h:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmMediaCallService;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v1
iget-object v3, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v0, v1, v6, v3}, Lcom/rim/bbm/BbmMediaCallService;->start(Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
sput-boolean v0, Lcom/bbm/f/j;->j:Z
if-eqz v0, :cond_13b
const-string v0, "MediaCallService started successfully."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_132
:cond_132
iget-object v0, p0, Lcom/bbm/f/j;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmCoreService;
return-object v0
:cond_13b
const-string v0, "Fatal error starting MediaCallService"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_132
.end method
.method private q()V
.registers 8
const/4 v1, 0x0
const-string v0, "Setting up files for bbmcore..."
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "bbgroups"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->b(Ljava/lang/String;)V
const-string v0, "bbmcore"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->b(Ljava/lang/String;)V
const-string v0, "logs"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->b(Ljava/lang/String;)V
const-string v0, "certs"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->b(Ljava/lang/String;)V
const-string v0, "bbmcore/master.db"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "bbmcore/bbmcore.cfg"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "bbgroups/bbgroups.cfg"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "bbmcore/bbmads.cfg"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "transport/transport.cfg"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "certs/ca.pem"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
const-string v0, "default_avatars"
invoke-direct {p0, v0}, Lcom/bbm/f/j;->b(Ljava/lang/String;)V
:try_start_3f
iget-object v0, p0, Lcom/bbm/f/j;->t:Landroid/content/res/AssetManager;
const-string v2, "default_avatars"
invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_49
if-ge v0, v3, :cond_70
aget-object v4, v2, v0
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "default_avatars"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Lcom/bbm/f/j;->c(Ljava/lang/String;)V
:try_end_65
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_65} :catch_68
add-int/lit8 v0, v0, 0x1
goto :goto_49
:catch_68
move-exception v0
const-string v0, "Error while reading default_avatars folder"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_70
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
const v0, 0x7f060008
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "bbm_tone.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
const v0, 0x7f060001
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "bbm_incoming_call.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
const v0, 0x7f060002
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "bbm_outgoing_call.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
const/high16 v0, 0x7f06
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "bbm_end_call.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
const v0, 0x7f060009
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "voice_recording_start.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
const v0, 0x7f06000a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "voice_recording_stop.wav"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/bbm/f/j;->a(ILjava/lang/String;)V
return-void
.end method
.method public final a()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
const-string v0, "NativeServiceLayer start"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/bbm/f/j;->k:Z
if-eqz v0, :cond_15
const-string v0, "NativeServiceLayer.start() already started."
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_14
return-void
:cond_15
iget-boolean v0, p0, Lcom/bbm/f/j;->l:Z
if-eqz v0, :cond_21
const-string v0, "NativeServiceLayer cannot start the service while waiting for it to stop."
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_14
:cond_21
iget-boolean v0, p0, Lcom/bbm/f/j;->m:Z
if-eqz v0, :cond_2d
const-string v0, "NativeServiceLayer alread has a restart scheduled waiting for the restart"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_14
:cond_2d
iget-object v0, p0, Lcom/bbm/f/j;->r:Lcom/bbm/util/cr;
sget-object v1, Lcom/bbm/f/b;->a:Lcom/bbm/f/b;
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
const-string v0, "Service layer status: connecting"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/bbm/f/j;->p()Lcom/rim/bbm/BbmCoreService;
move-result-object v0
invoke-virtual {v0}, Lcom/rim/bbm/BbmCoreService;->startService()Z
move-result v0
if-eqz v0, :cond_a2
iput-boolean v7, p0, Lcom/bbm/f/j;->k:Z
const-wide/16 v0, 0x64
sput-wide v0, Lcom/bbm/f/j;->e:J
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
if-eqz v0, :cond_62
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
if-eqz v0, :cond_62
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget-object v1, p0, Lcom/bbm/f/j;->y:Landroid/content/Context;
const-string v2, "mixpanel_number_of_service_starts"
invoke-virtual {v0, v1, v2}, Lcom/bbm/c/c;->b(Landroid/content/Context;Ljava/lang/String;)V
:cond_62
:goto_62
iget-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-nez v0, :cond_99
const-string v0, "JSON decoding thread started."
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/bbm/f/v;
invoke-direct {v1, p0}, Lcom/bbm/f/v;-><init>(Lcom/bbm/f/j;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Thread;
const-string v1, "JSON decoder"
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_99
const-string v0, "Done starting NativeServiceLayer"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_14
:cond_a2
iget-object v0, p0, Lcom/bbm/f/j;->r:Lcom/bbm/util/cr;
sget-object v1, Lcom/bbm/f/b;->d:Lcom/bbm/f/b;
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
const-string v0, "Service layer status: failed"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/f/j;->o()J
move-result-wide v0
const/4 v2, 0x0
const-string v3, "Unable to start BbmCoreService. Attempting restart in %d ms."
new-array v4, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v6
invoke-static {v2, v3, v4}, Lcom/bbm/x;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iput-boolean v7, p0, Lcom/bbm/f/j;->m:Z
iget-object v2, p0, Lcom/bbm/f/j;->u:Lcom/bbm/util/dc;
iget-object v3, p0, Lcom/bbm/f/j;->n:Ljava/lang/Runnable;
invoke-interface {v2, v3, v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;J)V
goto :goto_62
.end method
.method public final b()V
.registers 4
const/4 v2, 0x0
const-string v0, "NativeServiceLayer stop"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/bbm/f/j;->k:Z
if-nez v0, :cond_14
const-string v0, "NativeServiceLayer is not started."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_13
return-void
:cond_14
const-string v0, "Stopping NativeServiceLayer"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/f/j;->l:Z
iget-boolean v0, p0, Lcom/bbm/f/j;->m:Z
if-eqz v0, :cond_32
iput-boolean v2, p0, Lcom/bbm/f/j;->m:Z
const-string v0, "A scheduled NativeServiceLayer restart is now cancelled."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/j;->u:Lcom/bbm/util/dc;
iget-object v1, p0, Lcom/bbm/f/j;->n:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/bbm/util/dc;->b(Ljava/lang/Runnable;)V
:cond_32
const-string v0, "Interrupting JSON decoder thread"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/j;->x:Lcom/google/b/a/l;
const-string v0, "Stopping BbmCore service"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/bbm/f/j;->p()Lcom/rim/bbm/BbmCoreService;
move-result-object v0
invoke-virtual {v0}, Lcom/rim/bbm/BbmCoreService;->stopService()Z
const-string v0, "BbmCore StopService returned"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_13
.end method
.method public final c()Lcom/bbm/f/a;
.registers 3
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
sget-object v1, Lcom/rim/bbm/BbmCoreService$MessageType;->Ads:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
return-object v0
.end method
.method public final d()Lcom/bbm/f/a;
.registers 3
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
sget-object v1, Lcom/rim/bbm/BbmCoreService$MessageType;->Groups:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
return-object v0
.end method
.method public final e()Lcom/bbm/f/a;
.registers 3
iget-object v0, p0, Lcom/bbm/f/j;->p:Ljava/util/EnumMap;
sget-object v1, Lcom/rim/bbm/BbmCoreService$MessageType;->Core:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
return-object v0
.end method
.method public final f()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->c:Lcom/bbm/j/a;
return-object v0
.end method
.method public final g()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->d:Lcom/bbm/j/a;
return-object v0
.end method
.method public final h()Lcom/bbm/f/af;
.registers 3
iget-object v0, p0, Lcom/bbm/f/j;->b:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/blackberry/ids/UserAuthState$AuthState;
sget-object v1, Lcom/bbm/f/u;->a:[I
invoke-virtual {v0}, Lcom/blackberry/ids/UserAuthState$AuthState;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_1c
sget-object v0, Lcom/bbm/f/af;->b:Lcom/bbm/f/af;
:goto_15
return-object v0
:pswitch_16
sget-object v0, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;
goto :goto_15
:pswitch_19
sget-object v0, Lcom/bbm/f/af;->c:Lcom/bbm/f/af;
goto :goto_15
:pswitch_data_1c
.packed-switch 0x1
:pswitch_16
:pswitch_19
.end packed-switch
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/bbm/f/j;->g:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->refreshProperties()V
:cond_10
return-void
.end method