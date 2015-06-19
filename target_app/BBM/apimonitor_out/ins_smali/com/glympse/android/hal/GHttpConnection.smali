.class public interface abstract Lcom/glympse/android/hal/GHttpConnection;
.super Ljava/lang/Object;
.source "GHttpConnection.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract close()V
.end method
.method public abstract establish()V
.end method
.method public abstract getCookie(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract getResponseCode()I
.end method
.method public abstract getResponseData()[B
.end method
.method public abstract getResponseDataLength()I
.end method
.method public abstract getResponseDataString()Ljava/lang/String;
.end method
.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract isPost()Z
.end method
.method public abstract setConnectTimeout(I)V
.end method
.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract setFollowRedirects(Z)V
.end method
.method public abstract setReadTimeout(I)V
.end method
.method public abstract setRequestData(Ljava/lang/String;)V
.end method
.method public abstract setRequestData([BI)V
.end method
.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract setRequestMethod(Z)V
.end method
.method public abstract setUrl(Ljava/lang/String;)V
.end method