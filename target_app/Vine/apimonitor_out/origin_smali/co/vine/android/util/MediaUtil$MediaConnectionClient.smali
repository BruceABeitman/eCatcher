.class public Lco/vine/android/util/MediaUtil$MediaConnectionClient;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaConnectionClient"
.end annotation


# instance fields
.field public connection:Landroid/media/MediaScannerConnection;

.field private final mMimeType:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->connection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    const-string v0, "Scan completed: {}, {}."

    invoke-static {v0, p1, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
