.class public Lcom/pinguo/share/net/ProgressMultiPartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "ProgressMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;,
        Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    iput-object p1, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    return-void
.end method


# virtual methods
.method public setProgressListener(Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
