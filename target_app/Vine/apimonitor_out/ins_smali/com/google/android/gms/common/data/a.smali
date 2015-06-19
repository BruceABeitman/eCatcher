.class public Lcom/google/android/gms/common/data/a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final AQ:I
.field  Et:Landroid/os/ParcelFileDescriptor;
.field private Eu:Landroid/graphics/Bitmap;
.field private Ev:Z
.field private Ew:Ljava/io/File;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/common/data/b;
invoke-direct {v0}, Lcom/google/android/gms/common/data/b;-><init>()V
sput-object v0, Lcom/google/android/gms/common/data/a;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/common/data/a;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/common/data/a;->Et:Landroid/os/ParcelFileDescriptor;
iput p3, p0, Lcom/google/android/gms/common/data/a;->AQ:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/data/a;->Eu:Landroid/graphics/Bitmap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ev:Z
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 4
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/google/android/gms/common/data/a;->xJ:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/data/a;->Et:Landroid/os/ParcelFileDescriptor;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/common/data/a;->AQ:I
iput-object p1, p0, Lcom/google/android/gms/common/data/a;->Eu:Landroid/graphics/Bitmap;
iput-boolean v1, p0, Lcom/google/android/gms/common/data/a;->Ev:Z
return-void
.end method
.method private a(Ljava/io/Closeable;)V
.registers 5
:try_start_0
invoke-interface {p1}, Ljava/io/Closeable;->close()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "BitmapTeleporter"
const-string v2, "Could not close stream"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
.end method
.method private eO()Ljava/io/FileOutputStream;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Ew:Ljava/io/File;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "setTempDir() must be called before writing this object to a parcel"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
:try_start_c
const-string v0, "teleporter"
const-string v1, ".tmp"
iget-object v2, p0, Lcom/google/android/gms/common/data/a;->Ew:Ljava/io/File;
invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
:try_end_15
.catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_27
move-result-object v0
:try_start_16
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/high16 v2, 0x1000
invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/common/data/a;->Et:Landroid/os/ParcelFileDescriptor;
:try_end_23
.catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_23} :catch_30
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-object v1
:catch_27
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not create temporary file"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_30
move-exception v0
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Temporary file is somehow already deleted"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Ljava/io/File;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Cannot set null temp directory"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lcom/google/android/gms/common/data/a;->Ew:Ljava/io/File;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public eN()Landroid/graphics/Bitmap;
.registers 6
iget-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ev:Z
if-nez v0, :cond_3c
new-instance v1, Ljava/io/DataInputStream;
new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
iget-object v2, p0, Lcom/google/android/gms/common/data/a;->Et:Landroid/os/ParcelFileDescriptor;
invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_10
invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
move-result v0
new-array v0, v0, [B
invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
move-result v2
invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
move-result v3
invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
move-result-object v4
invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I
:try_end_29
.catchall {:try_start_10 .. :try_end_29} :catchall_48
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_3f
invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V
invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
iput-object v1, p0, Lcom/google/android/gms/common/data/a;->Eu:Landroid/graphics/Bitmap;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ev:Z
:cond_3c
iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Eu:Landroid/graphics/Bitmap;
return-object v0
:catch_3f
move-exception v0
:try_start_40
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Could not read from parcel file descriptor"
invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_48
:try_end_48
.catchall {:try_start_40 .. :try_end_48} :catchall_48
move-exception v0
invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V
throw v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Et:Landroid/os/ParcelFileDescriptor;
if-nez v0, :cond_46
iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Eu:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I
move-result v1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
mul-int/2addr v1, v2
invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
invoke-direct {p0}, Lcom/google/android/gms/common/data/a;->eO()Ljava/io/FileOutputStream;
move-result-object v2
new-instance v3, Ljava/io/DataOutputStream;
invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_23
array-length v2, v1
invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
:try_end_43
.catchall {:try_start_23 .. :try_end_43} :catchall_53
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_4a
invoke-direct {p0, v3}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V
:cond_46
invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/b;->a(Lcom/google/android/gms/common/data/a;Landroid/os/Parcel;I)V
return-void
:catch_4a
move-exception v0
:try_start_4b
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not write into unlinked file"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catchall_53
:try_end_53
.catchall {:try_start_4b .. :try_end_53} :catchall_53
move-exception v0
invoke-direct {p0, v3}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V
throw v0
.end method