.class public Lco/vine/android/recorder/RecordSessionManager$NotEnoughSpaceException;
.super Ljava/io/IOException;
.source "RecordSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RecordSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotEnoughSpaceException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method
