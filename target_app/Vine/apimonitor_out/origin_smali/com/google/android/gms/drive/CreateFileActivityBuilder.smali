.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private final HC:Lcom/google/android/gms/drive/internal/h;

.field private HD:Lcom/google/android/gms/drive/Contents;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/drive/internal/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HD:Lcom/google/android/gms/drive/Contents;

    const-string v1, "Must provide initial contents to CreateFileActivityBuilder."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_1c

    :goto_10
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    goto :goto_10
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->a(Lcom/google/android/gms/drive/DriveId;)V

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->aM(Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitialContents(Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HD:Lcom/google/android/gms/drive/Contents;

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/internal/h;->aS(I)V

    return-object p0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HC:Lcom/google/android/gms/drive/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->a(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    return-object p0
.end method
