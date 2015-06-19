.class public interface abstract Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acquirePath(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract numberOfRows(Ljava/lang/String;)I
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract releasePath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract setObserver(Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;)V
.end method

.method public abstract update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract writeImageToPipe(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method
