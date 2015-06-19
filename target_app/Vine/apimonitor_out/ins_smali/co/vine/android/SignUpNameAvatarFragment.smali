.class public Lco/vine/android/SignUpNameAvatarFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "SignUpNameAvatarFragment.java"
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.implements Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
.implements Lco/vine/android/ImagePicker$Listener;
.implements Lco/vine/android/util/ContactsHelper$ContactHelperListener;
.implements Lco/vine/android/widget/SpanClickListener;
.field public static final ARG_LOGIN:Ljava/lang/String; = "user"
.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x3
.field private static final DIALOG_SET_PHOTO_OR_SKIP:I = 0x1
.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x2
.field public static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x3
.field public static final REQUEST_CODE_CROP:I = 0x2
.field public static final REQUEST_CODE_TAKE_PHOTO:I = 0x1
.field private static final SPAN_PRIVACY_POLICY:I = 0x1
.field private static final SPAN_TOS:I = 0x2
.field private static final STATE_PROFILE_URI:Ljava/lang/String; = "state_pi"
.field private mHasPromptedForPhoto:Z
.field private mImagePicker:Lco/vine/android/ImagePicker;
.field private mLogin:Lco/vine/android/api/VineLogin;
.field private mName:Landroid/widget/EditText;
.field private mNextButton:Landroid/view/MenuItem;
.field private mPhoneNumber:Landroid/widget/EditText;
.field private mPhoneNumberContainer:Landroid/widget/RelativeLayout;
.field private mPhotoAttached:Z
.field private mProfileImage:Landroid/widget/ImageView;
.field private mProfileImageAction:Landroid/widget/ImageView;
.field private mProfileUri:Landroid/net/Uri;
.field private mProgress:Landroid/app/Dialog;
.field private mTwitterUser:Lco/vine/android/api/TwitterUser;
.field private mVineGreen:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/SignUpNameAvatarFragment;ILandroid/view/View;)Z
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/SignUpNameAvatarFragment;->onEditorActionClicked(ILandroid/view/View;)Z
move-result v0
return v0
.end method
.method static synthetic access$1002(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/api/TwitterUser;)Lco/vine/android/api/TwitterUser;
.registers 2
iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
return-object p1
.end method
.method static synthetic access$200(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumberContainer:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$402(Lco/vine/android/SignUpNameAvatarFragment;Landroid/net/Uri;)Landroid/net/Uri;
.registers 2
iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
return-object p1
.end method
.method static synthetic access$500(Lco/vine/android/SignUpNameAvatarFragment;Landroid/graphics/Bitmap;)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/SignUpNameAvatarFragment;->setAvatar(Landroid/graphics/Bitmap;)V
return-void
.end method
.method static synthetic access$600(Lco/vine/android/SignUpNameAvatarFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
return v0
.end method
.method static synthetic access$700(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
return-object v0
.end method
.method private addPhoto()V
.registers 8
const v6, 0x7f0e0242
const v5, 0x7f0e021e
const v4, 0x7f0e005b
const/4 v3, 0x0
iget-boolean v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
if-eqz v2, :cond_35
const/4 v2, 0x3
invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v1
invoke-virtual {v1, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {v1, v5}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
const v3, 0x7f0e01a4
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {v2, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
:goto_34
return-void
:cond_35
const/4 v2, 0x2
invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v1
invoke-virtual {v1, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
const v2, 0x7f0e021e
:try_start_40
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
const v3, 0x7f0e0242
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
const v3, 0x7f0e005b
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
:try_end_5d
.catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_5d} :catch_5e
goto :goto_34
:catch_5e
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_34
.end method
.method private nextClicked()V
.registers 4
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/SignUpPagerActivity;
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setPhone(Ljava/lang/String;)V
iget-boolean v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
if-eqz v1, :cond_29
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setProfile(Landroid/net/Uri;)V
:cond_29
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
if-eqz v1, :cond_40
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setTwitterUser(Lco/vine/android/api/TwitterUser;)V
:cond_40
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->toNextStep()V
return-void
.end method
.method private onEditorActionClicked(ILandroid/view/View;)Z
.registers 7
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_22
const/4 v2, 0x6
if-ne p1, v2, :cond_22
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z
move-result v2
if-eqz v2, :cond_22
const-string v2, "input_method"
invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
invoke-direct {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->onNextClicked(Landroid/app/Activity;)Z
:cond_22
const/4 v2, 0x1
return v2
.end method
.method private onNextClicked(Landroid/app/Activity;)Z
.registers 6
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->showProfilePhotoPrompt()Z
move-result v1
if-nez v1, :cond_46
move-object v0, p1
check-cast v0, Lco/vine/android/SignUpPagerActivity;
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setPhone(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-virtual {v1}, Lco/vine/android/ImagePicker;->getSavedImageUri()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setProfile(Landroid/net/Uri;)V
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
if-eqz v1, :cond_43
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setTwitterUser(Lco/vine/android/api/TwitterUser;)V
:cond_43
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->nextClicked()V
:cond_46
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
const/4 v1, 0x1
return v1
.end method
.method private setAvatar(Landroid/graphics/Bitmap;)V
.registers 5
if-eqz p1, :cond_24
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImageAction:Landroid/widget/ImageView;
const v1, 0x7f020064
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
:goto_23
return-void
:cond_24
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
const v1, 0x7f020065
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
iget v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mVineGreen:I
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImageAction:Landroid/widget/ImageView;
const v1, 0x7f020061
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
goto :goto_23
.end method
.method private showProfilePhotoPrompt()Z
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v4, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
if-nez v4, :cond_3b
iget-boolean v4, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z
if-nez v4, :cond_3b
iget-boolean v4, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
if-nez v4, :cond_3b
invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v4
const v5, 0x7f0e019b
invoke-virtual {v4, v5}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v4
const v5, 0x7f0e01c4
invoke-virtual {v4, v5}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v4
const v5, 0x7f0e0227
invoke-virtual {v4, v5}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v1
invoke-virtual {v1, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
:try_start_2a
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v4
invoke-virtual {v1, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
:try_end_35
.catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_35} :catch_38
iput-boolean v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z
:goto_37
return v2
:catch_38
move-exception v0
move v2, v3
goto :goto_37
:cond_3b
move v2, v3
goto :goto_37
.end method
.method private validate()Z
.registers 3
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->length()I
move-result v0
const/4 v1, 0x3
if-lt v0, v1, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 4
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z
move-result v1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_d
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090096
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
const/high16 v1, -0x100
or-int/2addr v0, v1
iput v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mVineGreen:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->setAvatar(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 10
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, -0x1
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerFragment;->onActivityResult(IILandroid/content/Intent;)V
packed-switch p1, :pswitch_data_58
:goto_9
:cond_9
return-void
:pswitch_a
if-ne p2, v3, :cond_2f
if-ne p1, v4, :cond_2a
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
:goto_10
new-instance v3, Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const-class v5, Lco/vine/android/EditProfileCropActivity;
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "uri"
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_9
:cond_2a
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v2
goto :goto_10
:cond_2f
iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
goto :goto_9
:pswitch_32
if-ne p2, v3, :cond_55
if-eqz p3, :cond_55
const-string v3, "uri"
invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
if-eqz v0, :cond_9
iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
invoke-static {v3}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
new-instance v3, Lco/vine/android/SetThumbnailTask;
invoke-direct {v3, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/support/v4/app/Fragment;)V
new-array v4, v4, [Landroid/net/Uri;
const/4 v5, 0x0
aput-object v0, v4, v5
invoke-virtual {v3, v4}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_9
:cond_55
iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
goto :goto_9
:pswitch_data_58
.packed-switch 0x1
:pswitch_a
:pswitch_32
:pswitch_a
.end packed-switch
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SignUpNameAvatarFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_c
:goto_7
const-string v1, " - Lco/vine/android/SignUpNameAvatarFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->addPhoto()V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0a0103
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lco/vine/android/SignUpNameAvatarFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v1
iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;
if-eqz p1, :cond_35
const-string v1, "state_pi"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
const-string v1, "state_pi"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/Uri;
iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
if-eqz v1, :cond_35
new-instance v1, Lco/vine/android/SetThumbnailTask;
invoke-direct {v1, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/support/v4/app/Fragment;)V
new-array v2, v5, [Landroid/net/Uri;
iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
aput-object v3, v2, v4
invoke-virtual {v1, v2}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_35
invoke-virtual {p0, v5}, Lco/vine/android/SignUpNameAvatarFragment;->setHasOptionsMenu(Z)V
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
check-cast v1, Lco/vine/android/SignUpPagerActivity;
const v2, 0x7f0e0124
invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->setBarTitle(I)V
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_5c
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5c
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineLogin;
iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;
:cond_5c
new-instance v1, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;
invoke-direct {v1, p0}, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;-><init>(Lco/vine/android/SignUpNameAvatarFragment;)V
iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
iput-boolean v4, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z
new-instance v1, Lco/vine/android/ImagePicker;
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v3
invoke-direct {v1, v2, p0, v3, v4}, Lco/vine/android/ImagePicker;-><init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V
iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
const-string v1, " - Lco/vine/android/SignUpNameAvatarFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SignUpNameAvatarFragment; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v0, 0x7f10000b
invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const v0, 0x7f0a0246
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z
move-result v1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_1c
const-string v1, " - Lco/vine/android/SignUpNameAvatarFragment; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 17
const v10, 0x7f030095
const/4 v11, 0x0
invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v9
const v10, 0x7f0a021e
invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
const/4 v10, 0x2
new-array v0, v10, [Landroid/text/style/StyleSpan;
const/4 v10, 0x0
new-instance v11, Landroid/text/style/StyleSpan;
const/4 v12, 0x1
invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V
aput-object v11, v0, v10
const/4 v10, 0x1
new-instance v11, Landroid/text/style/StyleSpan;
const/4 v12, 0x1
invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V
aput-object v11, v0, v10
const v10, 0x7f0e0220
invoke-virtual {p0, v10}, Lco/vine/android/SignUpNameAvatarFragment;->getString(I)Ljava/lang/String;
move-result-object v10
const/16 v11, 0x22
invoke-static {v0, v10, v11}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v10
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
check-cast v1, Landroid/text/Spannable;
const/4 v10, 0x0
invoke-interface {v6}, Landroid/text/Spanned;->length()I
move-result v11
const-class v12, Landroid/text/style/StyleSpan;
invoke-interface {v6, v10, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v7
check-cast v7, [Landroid/text/style/StyleSpan;
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getResources()Landroid/content/res/Resources;
move-result-object v5
const/4 v10, 0x0
aget-object v10, v7, v10
invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I
move-result v8
const/4 v10, 0x0
aget-object v10, v7, v10
invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I
move-result v3
new-instance v2, Lco/vine/android/widget/StyledClickableSpan;
const/4 v10, 0x1
const/4 v11, 0x0
invoke-direct {v2, v10, v11, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
const v10, 0x7f09008d
invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I
move-result v10
invoke-virtual {v2, v10}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/16 v10, 0x21
invoke-static {v1, v2, v8, v3, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
const/4 v10, 0x1
aget-object v10, v7, v10
invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I
move-result v8
const/4 v10, 0x1
aget-object v10, v7, v10
invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I
move-result v3
new-instance v2, Lco/vine/android/widget/StyledClickableSpan;
const/4 v10, 0x2
const/4 v11, 0x0
invoke-direct {v2, v10, v11, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
const v10, 0x7f09008d
invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I
move-result v10
invoke-virtual {v2, v10}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/16 v10, 0x21
invoke-static {v1, v2, v8, v3, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
return-object v9
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 7
const/4 v2, 0x3
const/4 v1, 0x1
packed-switch p2, :pswitch_data_38
:goto_5
return-void
:pswitch_6
packed-switch p3, :pswitch_data_42
goto :goto_5
:pswitch_a
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->nextClicked()V
goto :goto_5
:pswitch_e
invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->addPhoto()V
goto :goto_5
:pswitch_12
packed-switch p3, :pswitch_data_4a
:pswitch_15
goto :goto_5
:pswitch_16
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-virtual {v0, v2}, Lco/vine/android/ImagePicker;->chooseImage(I)V
goto :goto_5
:pswitch_1c
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-virtual {v0, v1}, Lco/vine/android/ImagePicker;->captureImage(I)V
goto :goto_5
:pswitch_22
packed-switch p3, :pswitch_data_54
goto :goto_5
:pswitch_26
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-virtual {v0, v1}, Lco/vine/android/ImagePicker;->captureImage(I)V
goto :goto_5
:pswitch_2c
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V
goto :goto_5
:pswitch_31
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-virtual {v0, v2}, Lco/vine/android/ImagePicker;->chooseImage(I)V
goto :goto_5
nop
:pswitch_data_4a
.packed-switch -0x3
:pswitch_16
:pswitch_15
:pswitch_1c
.end packed-switch
:pswitch_data_38
.packed-switch 0x1
:pswitch_6
:pswitch_12
:pswitch_22
.end packed-switch
:pswitch_data_54
.packed-switch -0x3
:pswitch_26
:pswitch_31
:pswitch_2c
.end packed-switch
:pswitch_data_42
.packed-switch -0x2
:pswitch_a
:pswitch_e
.end packed-switch
.end method
.method public onEmailLoaded(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onNameLoaded(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1c
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1c
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
:cond_1c
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SignUpNameAvatarFragment; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_16
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lco/vine/android/SignUpNameAvatarFragment; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->onNextClicked(Landroid/app/Activity;)Z
move-result v0
goto :goto_b
nop
:pswitch_data_16
.packed-switch 0x7f0a0246
:pswitch_c
.end packed-switch
.end method
.method public onPhoneNumberLoaded(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1f
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_1f
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/SignUpNameAvatarFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "state_pi"
iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lco/vine/android/SignUpNameAvatarFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-nez v1, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lco/vine/android/WebViewActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
packed-switch p2, :pswitch_data_28
goto :goto_6
:pswitch_16
const-string v1, "type"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:goto_1c
invoke-virtual {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:pswitch_20
const-string v1, "type"
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
goto :goto_1c
nop
:pswitch_data_28
.packed-switch 0x1
:pswitch_16
:pswitch_20
.end packed-switch
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 8
const/4 v4, 0x0
invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v2, 0x7f0a021f
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
iput-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
new-instance v3, Lco/vine/android/SignUpNameAvatarFragment$1;
invoke-direct {v3, p0}, Lco/vine/android/SignUpNameAvatarFragment$1;-><init>(Lco/vine/android/SignUpNameAvatarFragment;)V
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
const v2, 0x7f0a0219
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumberContainer:Landroid/widget/RelativeLayout;
const v2, 0x7f0a021a
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
iput-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
new-instance v3, Lco/vine/android/SignUpNameAvatarFragment$2;
invoke-direct {v3, p0}, Lco/vine/android/SignUpNameAvatarFragment$2;-><init>(Lco/vine/android/SignUpNameAvatarFragment;)V
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
const v2, 0x7f0a0103
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const v2, 0x7f0a022b
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImageAction:Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImageAction:Landroid/widget/ImageView;
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0063
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;
if-eqz v2, :cond_91
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f0f0037
invoke-direct {v0, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
const v2, 0x7f0e011c
invoke-virtual {p0, v2}, Lco/vine/android/SignUpNameAvatarFragment;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgress(I)V
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;
invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;
:cond_91
invoke-static {p0, p0}, Lco/vine/android/util/ContactsHelper;->loadContacts(Landroid/support/v4/app/Fragment;Lco/vine/android/util/ContactsHelper$ContactHelperListener;)V
return-void
.end method
.method public setAvatarUrl(Landroid/net/Uri;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
return-void
.end method
.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/SignUpNameAvatarFragment;->setAvatar(Landroid/graphics/Bitmap;)V
iget-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z
:cond_a
return-void
.end method