.class Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/pinguo/album/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/pinguo/album/exif/ExifTag;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->tag:Lcom/pinguo/album/exif/ExifTag;

    iput-boolean p2, p0, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
