.class public interface abstract Lco/vine/android/recorder/RecordCompleteConsumer;
.super Ljava/lang/Object;
.source "RecordCompleteConsumer.java"
.implements Ljava/lang/Runnable;
.method public abstract isComplete()Z
.end method
.method public abstract onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.end method
.method public abstract onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.end method
.method public abstract reset()V
.end method
.method public abstract resumeAll()V
.end method
.method public abstract run()V
.end method