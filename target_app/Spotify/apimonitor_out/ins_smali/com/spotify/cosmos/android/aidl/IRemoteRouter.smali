.class public interface abstract Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/IInterface;
.method public abstract registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
.end method
.method public abstract resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.end method
.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.end method
.method public abstract unsubscribe(I)V
.end method