.class Lco/vine/android/util/MediaUtility$FileInfo;
.super Ljava/lang/Object;
.source "MediaUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/MediaUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public filename:Ljava/lang/String;

.field public uploadKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/util/MediaUtility$FileInfo;->filename:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/util/MediaUtility$FileInfo;->file:Ljava/io/File;

    iput-object p3, p0, Lco/vine/android/util/MediaUtility$FileInfo;->uploadKey:Ljava/lang/String;

    return-void
.end method