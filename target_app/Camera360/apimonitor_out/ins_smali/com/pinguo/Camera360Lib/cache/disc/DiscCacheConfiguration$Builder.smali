.class public Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
.super Ljava/lang/Object;
.source "DiscCacheConfiguration.java"
.field private cacheDir:Ljava/io/File;
.field private context:Landroid/content/Context;
.field private discCacheFileCount:I
.field private discCacheSize:I
.field private fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
iput v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheSize:I
iput v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheFileCount:I
iput-object v1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->context:Landroid/content/Context;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)I
.registers 2
iget v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheSize:I
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)I
.registers 2
iget v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheFileCount:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
return-object v0
.end method
.method private initEmptyFieldsWithDefaultValues()V
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_14
:cond_c
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->context:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
:cond_14
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
if-nez v0, :cond_1f
new-instance v0, Lcom/pinguo/Camera360Lib/cache/disc/naming/HashCodeFileNameGenerator;
invoke-direct {v0}, Lcom/pinguo/Camera360Lib/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
:cond_1f
return-void
.end method
.method public build()Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
.registers 3
invoke-direct {p0}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V
new-instance v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;-><init>(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;)V
return-object v0
.end method
.method public cacheDir(Ljava/io/File;)Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
return-object p0
.end method
.method public discCacheFileCount(I)Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
.registers 2
iput p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheFileCount:I
return-object p0
.end method
.method public discCacheSize(I)Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
.registers 2
iput p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheSize:I
return-object p0
.end method
.method public fileNameGenerator(Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
return-object p0
.end method