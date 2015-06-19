.class public interface abstract Lcom/glympse/android/hal/GDirectory;
.super Ljava/lang/Object;
.source "GDirectory.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract deleteFile(Ljava/lang/String;)Z
.end method
.method public abstract getContents()Lcom/glympse/android/hal/GVector;
.end method
.method public abstract hasFile(Ljava/lang/String;)Z
.end method
.method public abstract readBinary(Ljava/lang/String;)[B
.end method
.method public abstract readText(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract writeBinary(Ljava/lang/String;[BI)Z
.end method
.method public abstract writeText(Ljava/lang/String;Ljava/lang/String;)Z
.end method