.class public interface abstract Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.super Ljava/lang/Object;
.source "HttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/HttpOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpOperationListener"
.end annotation


# virtual methods
.method public abstract onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.end method

.method public abstract onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
.end method
