.class public interface abstract Lcom/fsck/k9/mail/PushReceiver;
.super Ljava/lang/Object;
.source "PushReceiver.java"
.method public abstract acquireWakeLock()V
.end method
.method public abstract getPushState(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
.end method
.method public abstract messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
.end method
.method public abstract pushError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method
.method public abstract releaseWakeLock()V
.end method
.method public abstract setPushActive(Ljava/lang/String;Z)V
.end method
.method public abstract sleep(J)V
.end method