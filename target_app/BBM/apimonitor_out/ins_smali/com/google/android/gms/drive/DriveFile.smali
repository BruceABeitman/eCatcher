.class public interface abstract Lcom/google/android/gms/drive/DriveFile;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveResource;
.field public static final MODE_READ_ONLY:I = 0x10000000
.field public static final MODE_READ_WRITE:I = 0x30000000
.field public static final MODE_WRITE_ONLY:I = 0x20000000
.method public abstract commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end method
.method public abstract openContents(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end method