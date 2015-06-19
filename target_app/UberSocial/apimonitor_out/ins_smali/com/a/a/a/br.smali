.class public Lcom/a/a/a/br;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field private static final a:Ljava/util/logging/Logger;
.field private final b:Ljava/io/RandomAccessFile;
.field private c:I
.field private d:I
.field private e:Lcom/a/a/a/bt;
.field private f:Lcom/a/a/a/bt;
.field private final g:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/a/a/a/br;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/a/a/a/br;->a:Ljava/util/logging/Logger;
return-void
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 9
const-wide/16 v5, 0x0
const/16 v0, 0x10
const/4 v4, 0x4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v0, [B
iput-object v0, p0, Lcom/a/a/a/br;->g:[B
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_62
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".tmp"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/a/a/a/br;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;
move-result-object v1
const-wide/16 v2, 0x1000
:try_start_34
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
const-wide/16 v2, 0x0
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
const/16 v2, 0x10
new-array v2, v2, [B
const/4 v3, 0x4
new-array v3, v3, [I
fill-array-data v3, :array_d6
invoke-static {v2, v3}, Lcom/a/a/a/br;->a([B[I)V
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
:try_end_4c
.catchall {:try_start_34 .. :try_end_4c} :catchall_5d
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_62
new-instance v0, Ljava/io/IOException;
const-string v1, "Rename failed!"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_5d
move-exception v0
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
throw v0
:cond_62
invoke-static {p1}, Lcom/a/a/a/br;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
iget-object v1, p0, Lcom/a/a/a/br;->g:[B
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V
iget-object v0, p0, Lcom/a/a/a/br;->g:[B
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/a/a/a/br;->a([BI)I
move-result v0
iput v0, p0, Lcom/a/a/a/br;->c:I
iget v0, p0, Lcom/a/a/a/br;->c:I
int-to-long v0, v0
iget-object v2, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v2
cmp-long v0, v0, v2
if-lez v0, :cond_b1
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "File is truncated. Expected length: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/a/a/a/br;->c:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", Actual length: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b1
iget-object v0, p0, Lcom/a/a/a/br;->g:[B
invoke-static {v0, v4}, Lcom/a/a/a/br;->a([BI)I
move-result v0
iput v0, p0, Lcom/a/a/a/br;->d:I
iget-object v0, p0, Lcom/a/a/a/br;->g:[B
const/16 v1, 0x8
invoke-static {v0, v1}, Lcom/a/a/a/br;->a([BI)I
move-result v0
iget-object v1, p0, Lcom/a/a/a/br;->g:[B
const/16 v2, 0xc
invoke-static {v1, v2}, Lcom/a/a/a/br;->a([BI)I
move-result v1
invoke-direct {p0, v0}, Lcom/a/a/a/br;->a(I)Lcom/a/a/a/bt;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
invoke-direct {p0, v1}, Lcom/a/a/a/br;->a(I)Lcom/a/a/a/bt;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
return-void
:array_d6
.array-data 0x4
0x0t 0x10t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method static synthetic a(Lcom/a/a/a/br;I)I
.registers 3
invoke-direct {p0, p1}, Lcom/a/a/a/br;->b(I)I
move-result v0
return v0
.end method
.method private static a([BI)I
.registers 4
aget-byte v0, p0, p1
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x18
add-int/lit8 v1, p1, 0x1
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x10
add-int/2addr v0, v1
add-int/lit8 v1, p1, 0x2
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
add-int/2addr v0, v1
add-int/lit8 v1, p1, 0x3
aget-byte v1, p0, v1
and-int/lit16 v1, v1, 0xff
add-int/2addr v0, v1
return v0
.end method
.method private a(I)Lcom/a/a/a/bt;
.registers 5
if-nez p1, :cond_5
sget-object v0, Lcom/a/a/a/bt;->a:Lcom/a/a/a/bt;
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
new-instance v0, Lcom/a/a/a/bt;
iget-object v1, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
move-result v1
invoke-direct {v0, p1, v1}, Lcom/a/a/a/bt;-><init>(II)V
goto :goto_4
.end method
.method static synthetic a(Lcom/a/a/a/br;)Ljava/io/RandomAccessFile;
.registers 2
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
return-object v0
.end method
.method private static a(Ljava/io/File;)Ljava/io/RandomAccessFile;
.registers 3
new-instance v0, Ljava/io/RandomAccessFile;
const-string v1, "rwd"
invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 3
invoke-static {p0, p1}, Lcom/a/a/a/br;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private a(IIII)V
.registers 8
iget-object v0, p0, Lcom/a/a/a/br;->g:[B
const/4 v1, 0x4
new-array v1, v1, [I
const/4 v2, 0x0
aput p1, v1, v2
const/4 v2, 0x1
aput p2, v1, v2
const/4 v2, 0x2
aput p3, v1, v2
const/4 v2, 0x3
aput p4, v1, v2
invoke-static {v0, v1}, Lcom/a/a/a/br;->a([B[I)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
iget-object v1, p0, Lcom/a/a/a/br;->g:[B
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
return-void
.end method
.method private a(I[BII)V
.registers 10
invoke-direct {p0, p1}, Lcom/a/a/a/br;->b(I)I
move-result v0
add-int v1, v0, p4
iget v2, p0, Lcom/a/a/a/br;->c:I
if-gt v1, v2, :cond_16
iget-object v1, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v2, v0
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V
:goto_15
return-void
:cond_16
iget v1, p0, Lcom/a/a/a/br;->c:I
sub-int/2addr v1, v0
iget-object v2, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v3, v0
invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
const-wide/16 v2, 0x10
invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
add-int v2, p3, v1
sub-int v1, p4, v1
invoke-virtual {v0, p2, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V
goto :goto_15
.end method
.method static synthetic a(Lcom/a/a/a/br;I[BII)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/br;->b(I[BII)V
return-void
.end method
.method private static a([BII)V
.registers 5
shr-int/lit8 v0, p2, 0x18
aput-byte v0, p0, p1
add-int/lit8 v0, p1, 0x1
shr-int/lit8 v1, p2, 0x10
int-to-byte v1, v1
aput-byte v1, p0, v0
add-int/lit8 v0, p1, 0x2
shr-int/lit8 v1, p2, 0x8
int-to-byte v1, v1
aput-byte v1, p0, v0
add-int/lit8 v0, p1, 0x3
int-to-byte v1, p2
aput-byte v1, p0, v0
return-void
.end method
.method private static varargs a([B[I)V
.registers 6
const/4 v0, 0x0
array-length v2, p1
move v1, v0
:goto_3
if-ge v0, v2, :cond_f
aget v3, p1, v0
invoke-static {p0, v1, v3}, Lcom/a/a/a/br;->a([BII)V
add-int/lit8 v1, v1, 0x4
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_f
return-void
.end method
.method private b(I)I
.registers 4
iget v0, p0, Lcom/a/a/a/br;->c:I
if-ge p1, v0, :cond_5
:goto_4
return p1
:cond_5
add-int/lit8 v0, p1, 0x10
iget v1, p0, Lcom/a/a/a/br;->c:I
sub-int p1, v0, v1
goto :goto_4
.end method
.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8
return-object p0
.end method
.method private b(I[BII)V
.registers 10
invoke-direct {p0, p1}, Lcom/a/a/a/br;->b(I)I
move-result v0
add-int v1, v0, p4
iget v2, p0, Lcom/a/a/a/br;->c:I
if-gt v1, v2, :cond_16
iget-object v1, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v2, v0
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V
:goto_15
return-void
:cond_16
iget v1, p0, Lcom/a/a/a/br;->c:I
sub-int/2addr v1, v0
iget-object v2, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v3, v0
invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
const-wide/16 v2, 0x10
invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
add-int v2, p3, v1
sub-int v1, p4, v1
invoke-virtual {v0, p2, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V
goto :goto_15
.end method
.method private declared-synchronized b([BII)V
.registers 10
monitor-enter p0
:try_start_1
const-string v0, "buffer"
invoke-static {p1, v0}, Lcom/a/a/a/br;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
or-int/lit8 v0, p3, 0x0
if-ltz v0, :cond_d
array-length v0, p1
if-le p3, v0, :cond_16
:cond_d
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_13
:catchall_13
move-exception v0
monitor-exit p0
throw v0
:cond_16
:try_start_16
invoke-direct {p0, p3}, Lcom/a/a/a/br;->c(I)V
invoke-virtual {p0}, Lcom/a/a/a/br;->b()Z
move-result v1
if-eqz v1, :cond_5c
const/16 v0, 0x10
:goto_21
new-instance v2, Lcom/a/a/a/bt;
invoke-direct {v2, v0, p3}, Lcom/a/a/a/bt;-><init>(II)V
iget-object v0, p0, Lcom/a/a/a/br;->g:[B
const/4 v3, 0x0
invoke-static {v0, v3, p3}, Lcom/a/a/a/br;->a([BII)V
iget v0, v2, Lcom/a/a/a/bt;->b:I
iget-object v3, p0, Lcom/a/a/a/br;->g:[B
const/4 v4, 0x0
const/4 v5, 0x4
invoke-direct {p0, v0, v3, v4, v5}, Lcom/a/a/a/br;->a(I[BII)V
iget v0, v2, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
const/4 v3, 0x0
invoke-direct {p0, v0, p1, v3, p3}, Lcom/a/a/a/br;->a(I[BII)V
if-eqz v1, :cond_6c
iget v0, v2, Lcom/a/a/a/bt;->b:I
:goto_41
iget v3, p0, Lcom/a/a/a/br;->c:I
iget v4, p0, Lcom/a/a/a/br;->d:I
add-int/lit8 v4, v4, 0x1
iget v5, v2, Lcom/a/a/a/bt;->b:I
invoke-direct {p0, v3, v4, v0, v5}, Lcom/a/a/a/br;->a(IIII)V
iput-object v2, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, p0, Lcom/a/a/a/br;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/a/a/a/br;->d:I
if-eqz v1, :cond_5a
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iput-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
:cond_5a
:try_end_5a
.catchall {:try_start_16 .. :try_end_5a} :catchall_13
monitor-exit p0
return-void
:cond_5c
:try_start_5c
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
iget-object v2, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v2, v2, Lcom/a/a/a/bt;->c:I
add-int/2addr v0, v2
invoke-direct {p0, v0}, Lcom/a/a/a/br;->b(I)I
move-result v0
goto :goto_21
:cond_6c
iget-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
:try_end_70
.catchall {:try_start_5c .. :try_end_70} :catchall_13
goto :goto_41
.end method
.method private c(I)V
.registers 10
add-int/lit8 v2, p1, 0x4
iget v0, p0, Lcom/a/a/a/br;->c:I
invoke-virtual {p0}, Lcom/a/a/a/br;->a()I
move-result v1
sub-int v1, v0, v1
if-lt v1, v2, :cond_d
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/a/a/a/br;->c:I
:goto_f
add-int/2addr v1, v0
shl-int/lit8 v6, v0, 0x1
if-lt v1, v2, :cond_87
invoke-direct {p0, v6}, Lcom/a/a/a/br;->d(I)V
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
iget-object v1, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->c:I
add-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/a/a/a/br;->b(I)I
move-result v1
iget-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
if-ge v1, v0, :cond_4f
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
iget v2, p0, Lcom/a/a/a/br;->c:I
int-to-long v2, v2
invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
add-int/lit8 v7, v1, -0x4
const-wide/16 v1, 0x10
int-to-long v3, v7
move-object v5, v0
invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
move-result-wide v0
int-to-long v2, v7
cmp-long v0, v0, v2
if-eqz v0, :cond_4f
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "Copied insufficient number of bytes!"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_4f
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
if-ge v0, v1, :cond_79
iget v0, p0, Lcom/a/a/a/br;->c:I
iget-object v1, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x10
iget v1, p0, Lcom/a/a/a/br;->d:I
iget-object v2, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v2, v2, Lcom/a/a/a/bt;->b:I
invoke-direct {p0, v6, v1, v2, v0}, Lcom/a/a/a/br;->a(IIII)V
new-instance v1, Lcom/a/a/a/bt;
iget-object v2, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v2, v2, Lcom/a/a/a/bt;->c:I
invoke-direct {v1, v0, v2}, Lcom/a/a/a/bt;-><init>(II)V
iput-object v1, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
:goto_76
iput v6, p0, Lcom/a/a/a/br;->c:I
goto :goto_c
:cond_79
iget v0, p0, Lcom/a/a/a/br;->d:I
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
iget-object v2, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v2, v2, Lcom/a/a/a/bt;->b:I
invoke-direct {p0, v6, v0, v1, v2}, Lcom/a/a/a/br;->a(IIII)V
goto :goto_76
:cond_87
move v0, v6
goto :goto_f
.end method
.method private declared-synchronized d()V
.registers 6
const/16 v4, 0x1000
monitor-enter p0
const/16 v0, 0x1000
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
:try_start_8
invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/br;->a(IIII)V
const/4 v0, 0x0
iput v0, p0, Lcom/a/a/a/br;->d:I
sget-object v0, Lcom/a/a/a/bt;->a:Lcom/a/a/a/bt;
iput-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
sget-object v0, Lcom/a/a/a/bt;->a:Lcom/a/a/a/bt;
iput-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, p0, Lcom/a/a/a/br;->c:I
if-le v0, v4, :cond_1f
const/16 v0, 0x1000
invoke-direct {p0, v0}, Lcom/a/a/a/br;->d(I)V
:cond_1f
const/16 v0, 0x1000
iput v0, p0, Lcom/a/a/a/br;->c:I
:try_end_23
.catchall {:try_start_8 .. :try_end_23} :catchall_25
monitor-exit p0
return-void
:catchall_25
move-exception v0
monitor-exit p0
throw v0
.end method
.method private d(I)V
.registers 5
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
return-void
.end method
.method public final a()I
.registers 3
iget v0, p0, Lcom/a/a/a/br;->d:I
if-nez v0, :cond_7
const/16 v0, 0x10
:goto_6
return v0
:cond_7
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
if-lt v0, v1, :cond_24
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x4
iget-object v1, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->c:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x10
goto :goto_6
:cond_24
iget-object v0, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
iget-object v1, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->c:I
add-int/2addr v0, v1
iget v1, p0, Lcom/a/a/a/br;->c:I
add-int/2addr v0, v1
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
sub-int/2addr v0, v1
goto :goto_6
.end method
.method public final declared-synchronized a(Lcom/a/a/a/bv;)V
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->b:I
:goto_6
iget v2, p0, Lcom/a/a/a/br;->d:I
if-ge v0, v2, :cond_27
invoke-direct {p0, v1}, Lcom/a/a/a/br;->a(I)Lcom/a/a/a/bt;
move-result-object v1
new-instance v2, Lcom/a/a/a/bu;
const/4 v3, 0x0
invoke-direct {v2, p0, v1, v3}, Lcom/a/a/a/bu;-><init>(Lcom/a/a/a/br;Lcom/a/a/a/bt;B)V
iget v3, v1, Lcom/a/a/a/bt;->c:I
invoke-interface {p1, v2, v3}, Lcom/a/a/a/bv;->a(Ljava/io/InputStream;I)V
iget v2, v1, Lcom/a/a/a/bt;->b:I
add-int/lit8 v2, v2, 0x4
iget v1, v1, Lcom/a/a/a/bt;->c:I
add-int/2addr v1, v2
invoke-direct {p0, v1}, Lcom/a/a/a/br;->b(I)I
:try_end_23
.catchall {:try_start_2 .. :try_end_23} :catchall_29
move-result v1
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_27
monitor-exit p0
return-void
:catchall_29
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, p1, v0, v1}, Lcom/a/a/a/br;->b([BII)V
return-void
.end method
.method public final a(II)Z
.registers 4
invoke-virtual {p0}, Lcom/a/a/a/br;->a()I
move-result v0
add-int/lit8 v0, v0, 0x4
add-int/2addr v0, p1
if-gt v0, p2, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final declared-synchronized b()Z
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/a/a/a/br;->d:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_a
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_6
monitor-exit p0
return v0
:cond_8
const/4 v0, 0x0
goto :goto_6
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c()V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/a/a/a/br;->b()Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
:try_start_10
iget v0, p0, Lcom/a/a/a/br;->d:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1a
invoke-direct {p0}, Lcom/a/a/a/br;->d()V
:goto_18
:try_end_18
.catchall {:try_start_10 .. :try_end_18} :catchall_d
monitor-exit p0
return-void
:try_start_1a
:cond_1a
iget-object v0, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v0, v0, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
iget-object v1, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
iget v1, v1, Lcom/a/a/a/bt;->c:I
add-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/a/a/a/br;->b(I)I
move-result v0
iget-object v1, p0, Lcom/a/a/a/br;->g:[B
const/4 v2, 0x0
const/4 v3, 0x4
invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/br;->b(I[BII)V
iget-object v1, p0, Lcom/a/a/a/br;->g:[B
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/a/a/a/br;->a([BI)I
move-result v1
iget v2, p0, Lcom/a/a/a/br;->c:I
iget v3, p0, Lcom/a/a/a/br;->d:I
add-int/lit8 v3, v3, -0x1
iget-object v4, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
iget v4, v4, Lcom/a/a/a/bt;->b:I
invoke-direct {p0, v2, v3, v0, v4}, Lcom/a/a/a/br;->a(IIII)V
iget v2, p0, Lcom/a/a/a/br;->d:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lcom/a/a/a/br;->d:I
new-instance v2, Lcom/a/a/a/bt;
invoke-direct {v2, v0, v1}, Lcom/a/a/a/bt;-><init>(II)V
iput-object v2, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
:try_end_51
.catchall {:try_start_1a .. :try_end_51} :catchall_d
goto :goto_18
.end method
.method public declared-synchronized close()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/a/a/a/br;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v2, 0x5b
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "fileLength="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/a/a/a/br;->c:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", size="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/a/a/a/br;->d:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", first="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/a/a/a/br;->e:Lcom/a/a/a/bt;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, ", last="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/a/a/a/br;->f:Lcom/a/a/a/bt;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, ", element lengths=["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_start_47
new-instance v0, Lcom/a/a/a/bs;
invoke-direct {v0, p0, v1}, Lcom/a/a/a/bs;-><init>(Lcom/a/a/a/br;Ljava/lang/StringBuilder;)V
invoke-virtual {p0, v0}, Lcom/a/a/a/br;->a(Lcom/a/a/a/bv;)V
:try_end_4f
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_59
:goto_4f
const-string v0, "]]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_59
move-exception v0
sget-object v2, Lcom/a/a/a/br;->a:Ljava/util/logging/Logger;
sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
const-string v4, "read error"
invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4f
.end method