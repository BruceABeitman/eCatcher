.class public interface abstract Lco/vine/android/network/HttpOperationReader;
.super Ljava/lang/Object;
.source "HttpOperationReader.java"


# virtual methods
.method public abstract onHandleError(Lco/vine/android/network/HttpResult;)V
.end method

.method public abstract readInput(IILjava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
