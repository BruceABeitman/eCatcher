.class Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lorg/apache/commons/io/FileDeleteStrategy;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileDeleteStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForceFileDeleteStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Force"

    invoke-direct {p0, v0}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0
.end method
