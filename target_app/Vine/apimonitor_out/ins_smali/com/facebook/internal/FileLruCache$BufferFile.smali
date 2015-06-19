.class  Lcom/facebook/internal/FileLruCache$BufferFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"
.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;
.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$1;
invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$1;-><init>()V
sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;
new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$2;
invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$2;-><init>()V
sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static deleteAll(Ljava/io/File;)V
.registers 6
invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeNonBufferFiles()Ljava/io/FilenameFilter;
move-result-object v4
invoke-virtual {p0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
array-length v3, v0
const/4 v2, 0x0
:goto_a
if-ge v2, v3, :cond_14
aget-object v1, v0, v2
invoke-virtual {v1}, Ljava/io/File;->delete()Z
add-int/lit8 v2, v2, 0x1
goto :goto_a
:cond_14
return-void
.end method
.method static excludeBufferFiles()Ljava/io/FilenameFilter;
.registers 1
sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;
return-object v0
.end method
.method static excludeNonBufferFiles()Ljava/io/FilenameFilter;
.registers 1
sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;
return-object v0
.end method
.method static newFile(Ljava/io/File;)Ljava/io/File;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "buffer"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/facebook/internal/FileLruCache;->access$200()Ljava/util/concurrent/atomic/AtomicLong;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
.end method