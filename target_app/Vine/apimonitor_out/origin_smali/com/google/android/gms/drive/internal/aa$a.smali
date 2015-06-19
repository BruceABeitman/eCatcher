.class public abstract Lcom/google/android/gms/drive/internal/aa$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/internal/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/aa$a$a;
    }
.end annotation


# direct methods
.method public static P(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/aa;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/drive/internal/aa;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/drive/internal/aa;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/internal/aa$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/aa$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3f8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_a

    :sswitch_12
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_a

    :sswitch_35
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/QueryRequest;

    :cond_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_a

    :sswitch_58
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6b

    sget-object v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    :cond_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_a

    :sswitch_7b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    :cond_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_9f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b2

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    :cond_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_c3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d6

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFolderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFolderRequest;

    :cond_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_e7
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fa

    sget-object v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    :cond_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_10b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11e

    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    :cond_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_12f
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_145
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_158

    sget-object v0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    :cond_158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_167
    move v0, v1

    goto/16 :goto_a

    :cond_16a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_167

    :sswitch_16e
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_181

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    :cond_181
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_193

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_190
    move v0, v1

    goto/16 :goto_a

    :cond_193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_190

    :sswitch_197
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1aa

    sget-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    :cond_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_1bb
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1ce

    sget-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    :cond_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_1df
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f2

    sget-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    :cond_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ac$a;->R(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ac;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_20f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_222

    sget-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    :cond_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ac$a;->R(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ac;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_23f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_252

    sget-object v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;

    :cond_252
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_25b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26e

    sget-object v0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;

    :cond_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/TrashResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_27f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_292

    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    :cond_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_2a3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b6

    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/QueryRequest;

    :cond_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->b(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_2c7
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->b(Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_2dd
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->c(Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_2f3
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->d(Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_309
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->e(Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_31f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_332

    sget-object v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;

    :cond_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DeleteResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_343
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_356

    sget-object v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;

    :cond_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_367
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37a

    sget-object v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;

    :cond_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_38b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39e

    sget-object v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;

    :cond_39e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_3af
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c2

    sget-object v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;

    :cond_3c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    :sswitch_3d3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e6

    sget-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;

    :cond_3e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Lcom/google/android/gms/drive/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_a

    nop

    :sswitch_data_3f8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_35
        0x3 -> :sswitch_58
        0x4 -> :sswitch_7b
        0x5 -> :sswitch_9f
        0x6 -> :sswitch_c3
        0x7 -> :sswitch_e7
        0x8 -> :sswitch_10b
        0x9 -> :sswitch_12f
        0xa -> :sswitch_145
        0xb -> :sswitch_16e
        0xc -> :sswitch_197
        0xd -> :sswitch_1bb
        0xe -> :sswitch_1df
        0xf -> :sswitch_20f
        0x10 -> :sswitch_23f
        0x11 -> :sswitch_25b
        0x12 -> :sswitch_27f
        0x13 -> :sswitch_2a3
        0x14 -> :sswitch_2c7
        0x15 -> :sswitch_2dd
        0x16 -> :sswitch_2f3
        0x17 -> :sswitch_309
        0x18 -> :sswitch_31f
        0x1a -> :sswitch_343
        0x1b -> :sswitch_367
        0x1c -> :sswitch_38b
        0x1d -> :sswitch_3af
        0x1e -> :sswitch_3d3
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
