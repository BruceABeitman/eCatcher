.class public abstract Lco/vine/android/service/UploadProgressListener;
.super Ljava/lang/Object;
.source "UploadProgressListener.java"

# interfaces
.implements Lco/vine/android/util/VineProgressListener;


# instance fields
.field public currentSize:J

.field public lastProgress:I

.field public path:Ljava/lang/String;

.field public size:J

.field public thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lco/vine/android/service/UploadProgressListener;->path:Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/service/UploadProgressListener;->thumbnail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onPostFinished(Z)V
.end method

.method public abstract onTranscodeStarted()V
.end method

.method public abstract progressChanged(Lco/vine/android/util/VineProgressEvent;)V
.end method

.method public showPostNotification(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract updateTranscodeProgress(I)V
.end method
