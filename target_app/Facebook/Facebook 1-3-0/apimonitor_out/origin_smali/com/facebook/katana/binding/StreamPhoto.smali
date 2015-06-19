.class public Lcom/facebook/katana/binding/StreamPhoto;
.super Ljava/lang/Object;
.source "StreamPhoto.java"


# instance fields
.field private mBmpSoftReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentUri:Landroid/net/Uri;

.field private final mFilename:Ljava/lang/String;

.field private final mLength:J

.field private final mUrl:Ljava/lang/String;

.field private mUsageCount:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhoto;->mContentUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/binding/StreamPhoto;->mFilename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/katana/binding/StreamPhoto;->mLength:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUsageCount:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mBmpSoftReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mBmpSoftReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageCount()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUsageCount:I

    return v0
.end method

.method public incrUsageCount()V
    .registers 2

    iget v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUsageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mUsageCount:I

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->mBmpSoftReference:Ljava/lang/ref/SoftReference;

    return-void
.end method
