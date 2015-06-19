.class public interface abstract Lcom/glympse/android/hal/GHalFactory;
.super Ljava/lang/Object;
.source "GHalFactory.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract createDirectory(Ljava/lang/Object;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
.end method

.method public abstract openDirectory(Ljava/lang/Object;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
.end method

.method public abstract openKeychain(Ljava/lang/Object;Ljava/lang/String;)Lcom/glympse/android/hal/GKeychain;
.end method

.method public abstract openSharedPreferences(Ljava/lang/Object;Ljava/lang/String;)Lcom/glympse/android/hal/GSharedPreferences;
.end method
