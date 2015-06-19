.class public abstract Lcom/google/android/gms/internal/ll$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ll$a$a;
    }
.end annotation


# direct methods
.method public static bo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/ll;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/ll;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ll$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ll$a$a;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_19a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    :sswitch_b
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-object v1, v0

    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_3b
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/ll$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_42
    move-object v1, v2

    goto :goto_2d

    :cond_44
    move-object v0, v2

    goto :goto_3b

    :sswitch_46
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_60
    move-object v0, v2

    goto :goto_59

    :sswitch_62
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_85
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/ll$a;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_92

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :cond_97
    move-object v0, v2

    goto :goto_85

    :sswitch_99
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a;->onStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_a6
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a;->onResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_b3
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a;->onPause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_c0
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a;->onStop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_cd
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_e0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f2

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_f0
    move-object v0, v2

    goto :goto_e0

    :cond_f2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_f7
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11a

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_112
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/ll$a;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_11a
    move-object v0, v2

    goto :goto_112

    :sswitch_11c
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_137

    sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    :goto_12f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_137
    move-object v0, v2

    goto :goto_12f

    :sswitch_139
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_154

    sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    :goto_14c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_154
    move-object v0, v2

    goto :goto_14c

    :sswitch_156
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16a

    move v0, v3

    :goto_162
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_16a
    move v0, v1

    goto :goto_162

    :sswitch_16c
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a;->getState()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_17d
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_198

    sget-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    :goto_190
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ll$a;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_198
    move-object v0, v2

    goto :goto_190

    :sswitch_data_19a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_46
        0x3 -> :sswitch_62
        0x4 -> :sswitch_99
        0x5 -> :sswitch_a6
        0x6 -> :sswitch_b3
        0x7 -> :sswitch_c0
        0x8 -> :sswitch_cd
        0x9 -> :sswitch_f7
        0xa -> :sswitch_11c
        0xb -> :sswitch_139
        0xc -> :sswitch_156
        0xd -> :sswitch_16c
        0xe -> :sswitch_17d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
