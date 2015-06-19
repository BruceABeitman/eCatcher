.class public Lco/vine/android/util/image/ImageUtils$ImageMemoryException;
.super Ljava/lang/Exception;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/image/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMemoryException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/OutOfMemoryError;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
