.class public final Lcom/google/android/gms/games/snapshot/SnapshotEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/snapshot/Snapshot;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

.field private static final Ub:Ljava/lang/Object;


# instance fields
.field private HD:Lcom/google/android/gms/drive/Contents;

.field private final Uc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ub:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->xJ:I

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Uc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method private a(I[BIIZ)Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    const-string v1, "Must provide a previously opened Snapshot"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ub:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_41

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p5, :cond_30

    array-length v3, p2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :cond_30
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_41
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_36

    const/4 v0, 0x1

    :try_start_34
    monitor-exit v1

    :goto_35
    return v0

    :catch_36
    move-exception v0

    const-string v2, "Snapshot"

    const-string v3, "Failed to write snapshot data"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/games/internal/GamesLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_35

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_41

    throw v0
.end method

.method static a(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_28
    move v0, v1

    goto :goto_7
.end method

.method static b(Lcom/google/android/gms/games/snapshot/Snapshot;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static c(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string v1, "Metadata"

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v1

    const-string v2, "HasContents"

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->freeze()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public getContents()Lcom/google/android/gms/drive/Contents;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Uc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->b(Lcom/google/android/gms/games/snapshot/Snapshot;)I

    move-result v0

    return v0
.end method

.method public iH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method public isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public modifyBytes(I[BII)Z
    .registers 11

    array-length v4, p2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(I[BIIZ)Z

    move-result v0

    return v0
.end method

.method public readFully()[B
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    const-string v1, "Must provide a previously opened Snapshot"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ub:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HD:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_37

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_37
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2e

    :goto_27
    const/4 v0, 0x0

    :try_start_28
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/il;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catch_2e
    move-exception v0

    const-string v2, "Snapshot"

    const-string v4, "Failed to read snapshot data"

    invoke-static {v2, v4, v0}, Lcom/google/android/gms/games/internal/GamesLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->c(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([B)Z
    .registers 8

    const/4 v1, 0x0

    array-length v4, p1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(I[BIIZ)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotEntity;Landroid/os/Parcel;I)V

    return-void
.end method
