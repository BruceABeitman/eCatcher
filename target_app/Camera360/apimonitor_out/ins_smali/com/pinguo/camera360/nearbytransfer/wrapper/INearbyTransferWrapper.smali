.class public interface abstract Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
.super Ljava/lang/Object;
.source "INearbyTransferWrapper.java"
.field public static final FLAG_AUTO_CONNECT_BY_SOUND:I = 0x64
.field public static final SDK_TYPE_ANY_SHARE:I = 0x1
.method public abstract acceptUser(Ljava/lang/String;Z)V
.end method
.method public abstract add(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;)V
.end method
.method public abstract addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
.end method
.method public abstract addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.end method
.method public abstract addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.end method
.method public abstract asClient(I)V
.end method
.method public abstract asHost(I)Z
.end method
.method public abstract connect(Ljava/lang/String;)V
.end method
.method public abstract destroy()V
.end method
.method public abstract getReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)Ljava/util/List;
.end method
.method public abstract init(Landroid/content/Context;Ljava/lang/String;ZI)V
.end method
.method public abstract onPause()V
.end method
.method public abstract onResume()V
.end method
.method public abstract pause()V
.end method
.method public abstract removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
.end method
.method public abstract removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.end method
.method public abstract removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.end method
.method public abstract resume()V
.end method
.method public abstract startTask()V
.end method
.method public abstract stopClient()V
.end method
.method public abstract stopHost()V
.end method
.method public abstract stopTask()V
.end method