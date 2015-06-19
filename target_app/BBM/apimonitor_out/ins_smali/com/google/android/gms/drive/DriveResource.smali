.class public interface abstract Lcom/google/android/gms/drive/DriveResource;
.super Ljava/lang/Object;
.method public abstract addChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract getDriveId()Lcom/google/android/gms/drive/DriveId;
.end method
.method public abstract getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract removeChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end method