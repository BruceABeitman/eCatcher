.class public Lco/vine/android/PrivacyControlsFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "PrivacyControlsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;
    }
.end annotation


# static fields
.field private static final STATE_ACCEPT_OON:Ljava/lang/String; = "state_accept_oon"

.field private static final STATE_ALLOW_ADDRESS_BOOK:Ljava/lang/String; = "state_address_book"

.field private static final STATE_EMAIL_DISCOVERABLE:Ljava/lang/String; = "state_email_discoverable"

.field private static final STATE_PHONE_DISCOVERABLE:Ljava/lang/String; = "state_phone_discoverable"

.field public static final TYPE_EMAIL:I = 0x0

.field public static final TYPE_PHONE:I = 0x1


# instance fields
.field private mAcceptOon:Z

.field private mAllowAddressBook:Z

.field private mEmailDiscoverable:Z

.field private mPhoneDiscoverable:Z

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    iput-boolean p2, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    iget-object v0, p0, Lco/vine/android/PrivacyControlsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->updateAcceptOon(Z)Ljava/lang/String;

    goto :goto_c

    :pswitch_17
    iput-boolean p2, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    iget-object v0, p0, Lco/vine/android/PrivacyControlsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->updateEnableAddressBook(Z)Ljava/lang/String;

    goto :goto_c

    nop

    :pswitch_data_22
    .packed-switch 0x7f0a0183
        :pswitch_d
        :pswitch_c
        :pswitch_17
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;

    invoke-direct {v2, p0}, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;-><init>(Lco/vine/android/PrivacyControlsFragment;)V

    iput-object v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz p1, :cond_4a

    const-string v2, "state_accept_oon"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    const-string v2, "state_address_book"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    const-string v2, "state_email_discoverable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mEmailDiscoverable:Z

    const-string v2, "state_phone_discoverable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mPhoneDiscoverable:Z

    :goto_2e
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0037

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0e018a

    invoke-virtual {p0, v2}, Lco/vine/android/PrivacyControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iput-object v1, p0, Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;

    return-void

    :cond_4a
    invoke-virtual {p0}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "accept_out_of_network_messages"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    const-string v2, "enable_address_book"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    const-string v2, "email_discoverable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mEmailDiscoverable:Z

    const-string v2, "phone_discoverable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mPhoneDiscoverable:Z

    goto :goto_2e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_accept_oon"

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_address_book"

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_email_discoverable"

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mEmailDiscoverable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_phone_discoverable"

    iget-boolean v1, p0, Lco/vine/android/PrivacyControlsFragment;->mPhoneDiscoverable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v2, 0x7f0a0183

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/views/SwitchInterface;

    const v2, 0x7f0a0185

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/views/SwitchInterface;

    iget-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAcceptOon:Z

    if-eqz v2, :cond_1d

    invoke-interface {v1, v3}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    :cond_1d
    iget-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mAllowAddressBook:Z

    if-eqz v2, :cond_24

    invoke-interface {v0, v3}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    :cond_24
    iget-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mEmailDiscoverable:Z

    if-eqz v2, :cond_28

    :cond_28
    iget-boolean v2, p0, Lco/vine/android/PrivacyControlsFragment;->mPhoneDiscoverable:Z

    if-eqz v2, :cond_2c

    :cond_2c
    invoke-interface {v1, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
