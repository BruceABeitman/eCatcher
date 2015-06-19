.class public Lco/vine/android/SettingsFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/ImagePicker$Listener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lco/vine/android/widget/TypingEditText$TypingListener;
.implements Lco/vine/android/widget/ColorPicker$ColorClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;,
        Lco/vine/android/SettingsFragment$SettingsListener;,
        Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/BaseControllerFragment;",
        "Lco/vine/android/SetThumbnailTask$SetThumbnailListener;",
        "Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;",
        "Landroid/view/View$OnClickListener;",
        "Lco/vine/android/ImagePicker$Listener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lco/vine/android/widget/TypingEditText$TypingListener;",
        "Lco/vine/android/widget/ColorPicker$ColorClickListener;"
    }
.end annotation


# static fields
.field private static final DEBUG_TAP_THRESHOLD:I = 0x6

.field private static final DIALOG_CLEAR_CACHE:I = 0x6

.field private static final DIALOG_DEACTIVATE_ACCOUNT:I = 0x7

.field private static final DIALOG_DISCONNECT_TWITTER:I = 0x5

.field private static final DIALOG_FACEBOOK_DISCONNECT:I = 0xb

.field private static final DIALOG_LOGOUT:I = 0x4

.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x2

.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x1

.field private static final DIALOG_UNSAVED_CHANGES:I = 0x3

.field private static final DIALOG_VERIFY_EMAIL:I = 0x8

.field private static final DIALOG_VERIFY_EMAIL_SENT:I = 0xa

.field private static final DIALOG_VERIFY_PHONE:I = 0x9

.field private static final LOADER_ID_DEFAULT:I = 0x0

.field private static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x5

.field private static final REQUEST_CODE_CONFIRM_PHONE:I = 0x7

.field private static final REQUEST_CODE_CROP:I = 0x4

.field private static final REQUEST_CODE_TAKE_PHOTO:I = 0x3

.field private static final REQUEST_GMS_RESOLUTION:I = 0x6

.field public static final RESULT_CACHE_CLEARED:I = 0x1

.field private static final STATE_AVATAR_URI:Ljava/lang/String; = "state_avatar_url"

.field private static final STATE_BACKGROUND_COLOR:Ljava/lang/String; = "state_background_color"

.field private static final STATE_COLOR_INDEX:Ljava/lang/String; = "state_color_index"

.field private static final STATE_DESCRIPTION:Ljava/lang/String; = "state_desc"

.field private static final STATE_EDITION:Ljava/lang/String; = "state_edition"

.field private static final STATE_EDITIONS_FETCHED:Ljava/lang/String; = "state_editions_fetched"

.field private static final STATE_EMAIL:Ljava/lang/String; = "state_email"

.field private static final STATE_LOCATION:Ljava/lang/String; = "state_loc"

.field private static final STATE_NAME:Ljava/lang/String; = "state_name"

.field private static final STATE_PHONE:Ljava/lang/String; = "state_phone"

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private mAlertIcon:Landroid/widget/ImageView;

.field private mAppController:Lco/vine/android/client/AppController;

.field private mAvatarActionView:Landroid/widget/ImageView;

.field private mAvatarImageView:Landroid/widget/ImageView;

.field private mAvatarKey:Lco/vine/android/util/image/ImageKey;

.field private mAvatarUri:Landroid/net/Uri;

.field private mBackgroundColor:I

.field private mClearCacheValue:Landroid/widget/TextView;

.field private mColorIndex:I

.field private mDescription:Ljava/lang/String;

.field private mEditTextEmail:Landroid/widget/TextView;

.field private mEditTextPhone:Landroid/widget/TextView;

.field private mEdition:Ljava/lang/String;

.field private mEditionsFetched:Z

.field private mEditionsSpinner:Landroid/widget/Spinner;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEmail:Ljava/lang/String;

.field private mEmailVerified:Landroid/widget/ImageView;

.field private mErrorCode:I

.field private mFacebookValue:Landroid/widget/TextView;

.field private mFbSession:Lcom/facebook/Session;

.field private mImagePicker:Lco/vine/android/ImagePicker;

.field private mInviteSmsIntent:Landroid/content/Intent;

.field private mIsEmailVerified:Z

.field private mIsPhoneVerified:Z

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotifications:Landroid/view/ViewGroup;

.field private mOriginalAvatarUrl:Ljava/lang/String;

.field private mOriginalBackgroundColor:I

.field private mOriginalColorIndex:I

.field private mOriginalDescription:Ljava/lang/String;

.field private mOriginalEdition:Ljava/lang/String;

.field private mOriginalEmail:Ljava/lang/String;

.field private mOriginalEmailVerified:Z

.field private mOriginalLocation:Ljava/lang/String;

.field private mOriginalName:Ljava/lang/String;

.field private mOriginalPhone:Ljava/lang/String;

.field private mOriginalPhoneVerified:Z

.field private mPhone:Ljava/lang/String;

.field private mPhoneVerified:Landroid/widget/ImageView;

.field private mPhotoChanged:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProfileBackground:Landroid/view/View;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTwitterConnected:Z

.field private mTwitterLogin:Z

.field private mVersionTapCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SettingsFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mClearCacheValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lco/vine/android/SettingsFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    return p1
.end method

.method static synthetic access$102(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lco/vine/android/SettingsFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mOriginalPhoneVerified:Z

    return v0
.end method

.method static synthetic access$1200(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lco/vine/android/SettingsFragment;)Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lco/vine/android/SettingsFragment;)Lco/vine/android/util/image/ImageKey;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    return-object v0
.end method

.method static synthetic access$1500(Lco/vine/android/SettingsFragment;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lco/vine/android/SettingsFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mFacebookValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lco/vine/android/SettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    return-void
.end method

.method static synthetic access$1900(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lco/vine/android/SettingsFragment;)I
    .registers 2

    iget v0, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    return v0
.end method

.method static synthetic access$2002(Lco/vine/android/SettingsFragment;I)I
    .registers 2

    iput p1, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    return p1
.end method

.method static synthetic access$202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method static synthetic access$2302(Lco/vine/android/SettingsFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    return p1
.end method

.method static synthetic access$2400(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2500(Lco/vine/android/SettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->updateVerificationIcons()V

    return-void
.end method

.method static synthetic access$2602(Lco/vine/android/SettingsFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    return p1
.end method

.method static synthetic access$2700(Lco/vine/android/SettingsFragment;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lco/vine/android/SettingsFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z

    return p1
.end method

.method static synthetic access$800(Lco/vine/android/SettingsFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEmailVerified:Z

    return v0
.end method

.method static synthetic access$900(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    return-object p1
.end method

.method private invalidateFacebookSessionUI()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mFacebookValue:Landroid/widget/TextView;

    const v1, 0x7f0e01da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mFacebookValue:Landroid/widget/TextView;

    const v1, 0x7f0e01f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_19
.end method

.method private isDirty()Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget v0, p0, Lco/vine/android/SettingsFragment;->mOriginalColorIndex:I

    iget v1, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    if-ne v0, v1, :cond_46

    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    if-eqz v0, :cond_48

    :cond_46
    const/4 v0, 0x1

    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private resetPrefs()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_name"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_description"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_location"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_email"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_phone"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_profile_avatar_url"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "settings_edition"

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_index"

    iget v2, p0, Lco/vine/android/SettingsFragment;->mOriginalColorIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "profile_background"

    iget v2, p0, Lco/vine/android/SettingsFragment;->mOriginalBackgroundColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setImage(Landroid/graphics/Bitmap;Z)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    if-nez p1, :cond_15

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarActionView:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAvatarActionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_30

    const v0, 0x7f020062

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    :cond_30
    const v0, 0x7f020064

    goto :goto_1c
.end method

.method private setOriginalPreferenceValues()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "settings_profile_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    const-string v2, "settings_profile_description"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    const-string v2, "settings_profile_location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    const-string v2, "settings_profile_email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    const-string v2, "settings_profile_phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    const-string v2, "settings_edition"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    const-string v2, "settings_twitter_connected"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/SettingsFragment;->mTwitterConnected:Z

    const-string v2, "settings_profile_avatar_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatarUrl:Ljava/lang/String;

    const-string v2, "profile_background"

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    iget v2, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    iput v2, p0, Lco/vine/android/SettingsFragment;->mOriginalBackgroundColor:I

    const/4 v0, 0x0

    :goto_84
    sget-object v2, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_93

    sget-object v2, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    aget v2, v2, v0

    iget v3, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    if-ne v2, v3, :cond_b0

    iput v0, p0, Lco/vine/android/SettingsFragment;->mOriginalColorIndex:I

    :cond_93
    iget v2, p0, Lco/vine/android/SettingsFragment;->mOriginalColorIndex:I

    iput v2, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    const-string v2, "profile_email_verified"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmailVerified:Z

    iget-boolean v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmailVerified:Z

    iput-boolean v2, p0, Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z

    const-string v2, "profile_phone_verified"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhoneVerified:Z

    iget-boolean v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhoneVerified:Z

    iput-boolean v2, p0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    return-void

    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_84
.end method

.method private updateProfile(Landroid/net/Uri;)V
    .registers 11

    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->validate()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackChangedName()V

    :cond_13
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackChangedDescription()V

    :cond_20
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackChangedLocation()V

    :cond_2d
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackChangedEmail()V

    :cond_3a
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackChangedEdition()V

    :cond_47
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    iget-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    if-eqz v7, :cond_71

    move-object v7, p1

    :goto_5e
    iget v8, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->updateProfile(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->updateEdition(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;

    :cond_70
    return-void

    :cond_71
    const/4 v7, 0x0

    goto :goto_5e
.end method

.method private updateVerificationIcons()V
    .registers 9

    const v7, 0x7f0201d8

    const v6, 0x7f0201d7

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_41

    move-result-object v1

    :goto_e
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEditTextEmail:Landroid/widget/TextView;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEditTextEmail:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_27
    :goto_27
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEditTextPhone:Landroid/widget/TextView;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEditTextPhone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_46
    if-eqz v1, :cond_27

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, p0, Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_5b
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_65
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_40

    iget-boolean v2, p0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40

    :cond_7a
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40
.end method

.method private validate()Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v0, :cond_15

    const v3, 0x7f0e0149

    invoke-static {v0, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    :cond_15
    :goto_15
    return v2

    :cond_16
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_29

    if-eqz v0, :cond_15

    const v3, 0x7f0e0014

    invoke-static {v0, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_15

    :cond_29
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8c

    if-le v3, v4, :cond_3c

    if-eqz v0, :cond_15

    const v3, 0x7f0e0009

    invoke-static {v0, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_15

    :cond_3c
    if-eqz v0, :cond_55

    new-instance v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0f0037

    invoke-direct {v1, v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0e0201

    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    :cond_55
    const/4 v2, 0x1

    goto :goto_15
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/16 v7, 0x8

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v4, "action"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lco/vine/android/HomeTabActivity;->ACTION_VERIFICATION_COMPLETE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const v4, 0x7f0a01f5

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lco/vine/android/SettingsFragment$7;

    invoke-direct {v4, p0, v2, v3}, Lco/vine/android/SettingsFragment$7;-><init>(Lco/vine/android/SettingsFragment;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lco/vine/android/SettingsFragment;->mInviteSmsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mInviteSmsIntent:Landroid/content/Intent;

    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mInviteSmsIntent:Landroid/content/Intent;

    const-string v5, "sms_body"

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lco/vine/android/util/Util;->getSmsMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mInviteSmsIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_71

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const v5, 0x7f0a01ff

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const v5, 0x7f0a0200

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_71
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 23

    invoke-super/range {p0 .. p3}, Lco/vine/android/BaseControllerFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_25e

    const-string v3, "Facebook auth came back: {}"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_258

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v15

    if-eqz v15, :cond_250

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v3, v0, v1, v2}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_24b

    invoke-virtual {v15}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    const-string v4, "publish_actions"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_232

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v15}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v12, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v12, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0e0120

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    :cond_69
    :goto_69
    return-void

    :pswitch_6a
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_69

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    :goto_7a
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v17, Lco/vine/android/EditProfileCropActivity;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "uri"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v14

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_69

    :cond_96
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    goto :goto_7a

    :pswitch_9b
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_69

    if-eqz p3, :cond_69

    const-string v3, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    if-eqz v11, :cond_ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    invoke-static {v3}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    new-instance v3, Lco/vine/android/SetThumbnailTask;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    const/16 v17, 0x0

    aput-object v11, v4, v17

    invoke-virtual {v3, v4}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_ca
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    goto :goto_69

    :pswitch_d0
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_12d

    const-string v3, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "tk"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "ts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "user_id"

    const-wide/16 v17, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v12, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f0037

    invoke-direct {v12, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0e021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_69

    :cond_12d
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0e00ce

    invoke-static {v3, v4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_69

    :pswitch_139
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_196

    const-string v3, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "user_id"

    const-wide/16 v17, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v12, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f0037

    invoke-direct {v12, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0e021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_69

    :cond_196
    if-eqz p2, :cond_69

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0e00d0

    invoke-static {v3, v4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_69

    :pswitch_1a4
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v13

    if-nez v13, :cond_1e3

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1cc

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1cc
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v10, v0, v1}, Lco/vine/android/service/GCMRegistrationService;->getRegisterIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_69

    :cond_1e3
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0e024b

    invoke-static {v3, v4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_69

    :pswitch_1ef
    packed-switch p2, :pswitch_data_270

    goto/16 :goto_69

    :pswitch_1f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "profile_phone_verified"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->updateVerificationIcons()V

    goto/16 :goto_69

    :pswitch_213
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "profile_phone_verified"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->updateVerificationIcons()V

    goto/16 :goto_69

    :cond_232
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lco/vine/android/SettingsFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lco/vine/android/SettingsFragment$8;-><init>(Lco/vine/android/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lco/vine/android/client/AppController;->connectToFacebookPublish(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_69

    :cond_24b
    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    goto/16 :goto_69

    :cond_250
    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    invoke-super/range {p0 .. p3}, Lco/vine/android/BaseControllerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_69

    :cond_258
    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    goto/16 :goto_69

    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_139
        :pswitch_6a
        :pswitch_9b
        :pswitch_6a
        :pswitch_1a4
        :pswitch_1ef
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x5f7
        :pswitch_1f4
        :pswitch_213
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2f

    const/4 v2, 0x3

    invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f0e01ff

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v2, 0x7f0e01dc

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v2, 0x7f0e01e3

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_38
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2e
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_39a

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    if-eqz v10, :cond_3b

    const/16 v10, 0xb

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v10, 0x7f0e01e4

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e0288

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e0057

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    :try_start_2a
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_7

    :catch_36
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_3b
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;

    move-result-object v8

    if-nez v8, :cond_4e

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10, p0}, Lco/vine/android/client/AppController;->connectToFacebookInitialize(Landroid/support/v4/app/Fragment;)V

    goto :goto_7

    :cond_4e
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    goto :goto_7

    :sswitch_5c
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    if-eqz v10, :cond_a3

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a3

    const/4 v10, 0x2

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v10, 0x7f0e021e

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e01a4

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e0242

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e005b

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    :try_start_90
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9b} :catch_9d

    goto/16 :goto_7

    :catch_9d
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_a3
    const/4 v10, 0x1

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v10, 0x7f0e021e

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e0242

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e005b

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    :try_start_c0
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cb} :catch_cd

    goto/16 :goto_7

    :catch_cd
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :sswitch_d3
    iget-boolean v10, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    if-eqz v10, :cond_105

    const/4 v10, 0x5

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const v10, 0x7f0e01e5

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e01e4

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e0057

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    :try_start_f2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_fd} :catch_ff

    goto/16 :goto_7

    :catch_ff
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_105
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v9

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v9, v0}, Lco/vine/android/client/AppController;->startTwitterAuthWithFinish(Lcom/twitter/android/sdk/Twitter;Landroid/app/Activity;)V

    goto/16 :goto_7

    :sswitch_114
    const/4 v10, 0x4

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const v10, 0x7f0e0131

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e0130

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e0057

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    :try_start_12f
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13a} :catch_13c

    goto/16 :goto_7

    :catch_13c
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :sswitch_142
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-class v11, Lco/vine/android/ResetPasswordActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15c

    const-string v10, "email"

    iget-object v11, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15c
    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_161
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackContentControls()V

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-class v12, Lco/vine/android/ContentControlsActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_174
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-class v12, Lco/vine/android/PrivacyControlsActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_184
    const-string v10, "Settings"

    invoke-static {v10}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-class v12, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_199
    const-string v10, "email"

    const-string v11, "Settings"

    invoke-static {v10, v11}, Lco/vine/android/util/FlurryUtils;->trackInvite(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "mailto"

    const-string v12, ""

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v10, "android.intent.extra.SUBJECT"

    const v11, 0x7f0e00e6

    invoke-virtual {p0, v11}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lco/vine/android/util/Util;->getEmailMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v10, 0x7f0e00e4

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_1d9
    const-string v10, "sms"

    const-string v11, "Settings"

    invoke-static {v10, v11}, Lco/vine/android/util/FlurryUtils;->trackInvite(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mInviteSmsIntent:Landroid/content/Intent;

    const v11, 0x7f0e01be

    invoke-virtual {p0, v11}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_1f2
    const/4 v10, 0x6

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const v10, 0x7f0e01d6

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e0057

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e01d5

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_7

    :sswitch_21a
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackPrivacyPolicy()V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-class v11, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "type"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_233
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackTos()V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-class v11, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "type"

    const/4 v11, 0x2

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_24c
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackAttribution()V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-class v11, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "type"

    const/4 v11, 0x5

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_265
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackDeactivateAccount()V

    const/4 v10, 0x7

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const v10, 0x7f0e01df

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e01e0

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e0057

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v10, 0x7f0e01de

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    :try_start_289
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_294} :catch_296

    goto/16 :goto_7

    :catch_296
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :sswitch_29c
    iget v10, p0, Lco/vine/android/SettingsFragment;->mVersionTapCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lco/vine/android/SettingsFragment;->mVersionTapCount:I

    iget v10, p0, Lco/vine/android/SettingsFragment;->mVersionTapCount:I

    const/4 v11, 0x6

    if-lt v10, v11, :cond_2ba

    const/4 v10, 0x0

    iput v10, p0, Lco/vine/android/SettingsFragment;->mVersionTapCount:I

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-class v12, Lco/vine/android/DebugHomeActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_2ba
    iget v10, p0, Lco/vine/android/SettingsFragment;->mVersionTapCount:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2ca

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-string v11, "One more!"

    invoke-static {v10, v11}, Lco/vine/android/util/Util;->showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2ca
    :try_start_2ca
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "co.vine.android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Version Code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lco/vine/android/util/Util;->showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_2f5} :catch_2f7

    goto/16 :goto_7

    :catch_2f7
    move-exception v1

    const-string v10, "Failed to show version code."

    invoke-static {v10, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :sswitch_2ff
    invoke-static {}, Lco/vine/android/LocaleDialog;->newInstance()Lco/vine/android/LocaleDialog;

    move-result-object v5

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    const-string v11, "locale"

    invoke-virtual {v5, v10, v11}, Lco/vine/android/LocaleDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_312
    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->performClick()Z

    goto/16 :goto_7

    :sswitch_319
    iget v10, p0, Lco/vine/android/SettingsFragment;->mErrorCode:I

    if-eqz v10, :cond_32d

    iget v10, p0, Lco/vine/android/SettingsFragment;->mErrorCode:I

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v10, v11, v12}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_7

    :cond_32d
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackNotificationSettings()V

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-class v12, Lco/vine/android/NotificationSettingsActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :sswitch_340
    iget-boolean v10, p0, Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z

    if-nez v10, :cond_7

    const/16 v10, 0x8

    invoke-static {v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v10, 0x7f0e0083

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v11, 0x7f0e0081

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lco/vine/android/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(Ljava/lang/String;)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const/high16 v11, 0x104

    invoke-virtual {v10, v11}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    :try_start_36d
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v6, v10}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
    :try_end_378
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_378} :catch_37a

    goto/16 :goto_7

    :catch_37a
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :sswitch_380
    iget-boolean v10, p0, Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v11, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lco/vine/android/ConfirmationFlowActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v11, 0x7

    invoke-virtual {v10, v3, v11}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    nop

    :sswitch_data_39a
    .sparse-switch
        0x7f0a0063 -> :sswitch_5c
        0x7f0a0117 -> :sswitch_142
        0x7f0a0145 -> :sswitch_184
        0x7f0a0147 -> :sswitch_319
        0x7f0a01f3 -> :sswitch_340
        0x7f0a01f6 -> :sswitch_380
        0x7f0a01f8 -> :sswitch_312
        0x7f0a01f9 -> :sswitch_312
        0x7f0a01fc -> :sswitch_161
        0x7f0a01fd -> :sswitch_174
        0x7f0a01fe -> :sswitch_319
        0x7f0a01ff -> :sswitch_1d9
        0x7f0a0201 -> :sswitch_199
        0x7f0a0202 -> :sswitch_d3
        0x7f0a0205 -> :sswitch_8
        0x7f0a0208 -> :sswitch_1f2
        0x7f0a020b -> :sswitch_233
        0x7f0a020c -> :sswitch_21a
        0x7f0a020d -> :sswitch_24c
        0x7f0a020e -> :sswitch_2ff
        0x7f0a020f -> :sswitch_265
        0x7f0a0210 -> :sswitch_114
        0x7f0a0211 -> :sswitch_29c
    .end sparse-switch
.end method

.method public onColorClick(I)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x100

    iget v5, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    if-ltz v5, :cond_66

    sget-object v5, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    iget v6, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    aget v2, v5, v6

    :goto_f
    iput p1, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    sget-object v5, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    iget v6, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    aget v5, v5, v6

    iput v5, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    or-int v5, v2, v7

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    or-int/2addr v5, v7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    new-array v5, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v8

    aput-object v4, v5, v9

    invoke-direct {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mProfileBackground:Landroid/view/View;

    if-eqz v5, :cond_41

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mProfileBackground:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_41
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    new-array v5, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v8

    aput-object v4, v5, v9

    invoke-direct {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v5, v6, :cond_69

    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V

    :goto_55
    new-instance v1, Landroid/content/Intent;

    const-string v5, "co.vine.android.profileColor"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "co.vine.android.BROADCAST"

    invoke-virtual {v5, v1, v6}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_66
    sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    goto :goto_f

    :cond_69
    iget v5, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    invoke-virtual {p0, v5}, Lco/vine/android/SettingsFragment;->setActionBarColor(I)V

    goto :goto_55
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/SettingsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Lco/vine/android/SettingsFragment$SettingsListener;

    invoke-direct {v0, p0}, Lco/vine/android/SettingsFragment$SettingsListener;-><init>(Lco/vine/android/SettingsFragment;)V

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    new-instance v0, Lco/vine/android/ImagePicker;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    invoke-direct {v0, v1, p0, v2, v3}, Lco/vine/android/ImagePicker;-><init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$Editions;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$EditionsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const v3, 0x7f0a0245

    const/4 v2, 0x1

    const v1, 0x7f100012

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 48
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v40, 0x7f03008f

    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, p2

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->setOriginalPreferenceValues()V

    if-eqz p3, :cond_bc

    const-string v40, "state_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    const-string v40, "state_desc"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    const-string v40, "state_loc"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    const-string v40, "state_phone"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    const-string v40, "state_email"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    const-string v40, "state_editions_fetched"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    const-string v40, "state_edition"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    const-string v40, "state_avatar_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v40

    check-cast v40, Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    const-string v40, "state_background_color"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    const-string v40, "state_color_index"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/SettingsFragment;->mColorIndex:I

    :cond_bc
    const v40, 0x7f0a00e0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ScrollView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const v40, 0x7f0a01f3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mEmailVerified:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a01f6

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mPhoneVerified:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0213

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lco/vine/android/widget/ColorPicker;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lco/vine/android/widget/ColorPicker;->setOnColorClickListener(Lco/vine/android/widget/ColorPicker$ColorClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Lco/vine/android/widget/ColorPicker;->setColorIndex(I)V

    const v40, 0x7f0a0103

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    move/from16 v40, v0

    const/high16 v41, -0x100

    or-int v40, v40, v41

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mProfileBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/SettingsFragment;->setActionBarColor(I)V

    const v40, 0x7f0a01fd

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0063

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    const v40, 0x7f0a022b

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mAvatarActionView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarActionView:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    move-object/from16 v40, v0

    if-nez v40, :cond_622

    const-string v7, ""

    :goto_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v40, v0

    if-eqz v40, :cond_62e

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lco/vine/android/SettingsFragment;->setImage(Landroid/graphics/Bitmap;Z)V

    :goto_1d2
    const v40, 0x7f0a01f1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v40, Lco/vine/android/SettingsFragment$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$1;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v40, 0x7f0a019d

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v40, 0x7f0e01e2

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    new-instance v40, Lco/vine/android/SettingsFragment$2;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$2;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v40, 0x7f0a019e

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v40, 0x7f0e01f0

    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    new-instance v40, Lco/vine/android/SettingsFragment$3;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$3;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v40, 0x7f0a01f4

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lco/vine/android/widget/TypingEditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v40, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setInputType(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setTypingListener(Lco/vine/android/widget/TypingEditText$TypingListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEditTextEmail:Landroid/widget/TextView;

    new-instance v40, Lco/vine/android/SettingsFragment$4;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$4;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v40, 0x7f0a01f7

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lco/vine/android/widget/TypingEditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v40, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setInputType(I)V

    new-instance v40, Lco/vine/android/SettingsFragment$5;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$5;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TypingEditText;->setTypingListener(Lco/vine/android/widget/TypingEditText$TypingListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEditTextPhone:Landroid/widget/TextView;

    const v40, 0x7f0a01fa

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Spinner;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Spinner;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    move-object/from16 v40, v0

    new-instance v41, Lco/vine/android/SettingsFragment$6;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$6;-><init>(Lco/vine/android/SettingsFragment;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v40, 0x7f0a01f8

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a01f9

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v40, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;-><init>(Lco/vine/android/SettingsFragment;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v40, 0x7f0a01fb

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a01fc

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0147

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isGoogle()Z

    move-result v40

    if-eqz v40, :cond_69c

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    const v41, 0x7f0a01fe

    invoke-virtual/range {v40 .. v41}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/SettingsFragment;->mErrorCode:I

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/SettingsFragment;->mErrorCode:I

    move/from16 v40, v0

    if-eqz v40, :cond_68f

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3f0
    const v40, 0x7f0a0145

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a01ff

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0201

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0202

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/RelativeLayout;

    const v40, 0x7f020076

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v40, 0x7f0a0204

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_6a9

    invoke-static {v5, v4}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v40

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_6a9

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v41, 0x40

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v5, v4}, Lco/vine/android/client/VineAccountHelper;->getTwitterUsername(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    :goto_4a2
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0205

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0206

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v40, 0x7f0e00d5

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v40, 0x7f0a0207

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mFacebookValue:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0208

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0209

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v40, 0x7f0e01d4

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v40, 0x7f0a020a

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mClearCacheValue:Landroid/widget/TextView;

    new-instance v40, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;-><init>(Lco/vine/android/SettingsFragment;)V

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v40, 0x7f0a020b

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a020c

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a020d

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a020f

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0210

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v40, 0x7f0a0211

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    const v40, 0x7f0a0212

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    :try_start_5c1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "co.vine.android"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v29

    const v40, 0x7f0e01c6

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v43, v0

    aput-object v43, v41, v42

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lco/vine/android/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c1 .. :try_end_5f7} :catch_6d8

    :goto_5f7
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isI18nOn()Z

    move-result v40

    if-eqz v40, :cond_621

    const v40, 0x7f0a020e

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v40, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_621
    return-object v38

    :cond_622
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1ac

    :cond_62e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_680

    invoke-static {v7}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_649

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lco/vine/android/SettingsFragment;->setImage(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1d2

    :cond_649
    const v40, 0x7f0b0088

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    new-instance v40, Lco/vine/android/util/image/ImageKey;

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-direct {v0, v7, v14, v14, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v8, v1}, Lco/vine/android/SettingsFragment;->setImage(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1d2

    :cond_680
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lco/vine/android/SettingsFragment;->setImage(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1d2

    :cond_68f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mAlertIcon:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3e3

    :cond_69c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SettingsFragment;->mNotifications:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3f0

    :cond_6a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/SettingsFragment;->mTwitterConnected:Z

    move/from16 v40, v0

    if-eqz v40, :cond_6c4

    const-string v40, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto/16 :goto_4a2

    :cond_6c4
    const v40, 0x7f0e01d9

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto/16 :goto_4a2

    :catch_6d8
    move-exception v15

    const-string v40, "SettingsFragment"

    const-string v41, "Error retrieving package info:"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f7
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 14

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    const v6, 0x7f0f0037

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_166

    :cond_a
    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    packed-switch p3, :pswitch_data_180

    :pswitch_e
    goto :goto_a

    :pswitch_f
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v4, v9}, Lco/vine/android/ImagePicker;->chooseImage(I)V

    goto :goto_a

    :pswitch_15
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v4, v8}, Lco/vine/android/ImagePicker;->captureImage(I)V

    goto :goto_a

    :pswitch_1b
    packed-switch p3, :pswitch_data_18a

    goto :goto_a

    :pswitch_1f
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    const/4 v4, 0x0

    iput-object v4, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    :cond_2b
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    goto :goto_a

    :pswitch_2f
    packed-switch p3, :pswitch_data_190

    goto :goto_a

    :pswitch_33
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v4, v8}, Lco/vine/android/ImagePicker;->captureImage(I)V

    goto :goto_a

    :pswitch_39
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    const-string v4, ""

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    goto :goto_a

    :pswitch_48
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v4, v9}, Lco/vine/android/ImagePicker;->chooseImage(I)V

    goto :goto_a

    :pswitch_4e
    packed-switch p3, :pswitch_data_19a

    goto :goto_a

    :pswitch_52
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_a

    :pswitch_5f
    packed-switch p3, :pswitch_data_1a0

    goto :goto_a

    :pswitch_63
    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackLogout()V

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mFbSession:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    :cond_6f
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0e011e

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v4, v5}, Lco/vine/android/client/AppController;->logout(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_9a
    packed-switch p3, :pswitch_data_1a6

    goto/16 :goto_a

    :pswitch_9f
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0e01e6

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v4, v5}, Lco/vine/android/client/AppController;->disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_c7
    packed-switch p3, :pswitch_data_1ac

    goto/16 :goto_a

    :pswitch_cc
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0e01d7

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v7}, Lco/vine/android/client/AppController;->clearDbCache(Z)Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_ee
    packed-switch p3, :pswitch_data_1b2

    goto/16 :goto_a

    :pswitch_f3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0e01e1

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->deactivateAccount()Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_115
    packed-switch p3, :pswitch_data_1b8

    goto/16 :goto_a

    :pswitch_11a
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mEditTextPhone:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lco/vine/android/client/AppController;->requestPhoneVerification(Lco/vine/android/client/Session;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_13d
    packed-switch p3, :pswitch_data_1be

    goto/16 :goto_a

    :pswitch_142
    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mEditTextEmail:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lco/vine/android/client/AppController;->requestEmailVerification(Lco/vine/android/client/Session;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_a

    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_b
        :pswitch_2f
        :pswitch_4e
        :pswitch_5f
        :pswitch_9a
        :pswitch_c7
        :pswitch_ee
        :pswitch_13d
        :pswitch_115
        :pswitch_a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_180
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_15
    .end packed-switch

    :pswitch_data_18a
    .packed-switch -0x1
        :pswitch_1f
    .end packed-switch

    :pswitch_data_190
    .packed-switch -0x3
        :pswitch_33
        :pswitch_48
        :pswitch_39
    .end packed-switch

    :pswitch_data_19a
    .packed-switch -0x1
        :pswitch_52
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch -0x1
        :pswitch_63
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch -0x1
        :pswitch_9f
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch -0x1
        :pswitch_cc
    .end packed-switch

    :pswitch_data_1b2
    .packed-switch -0x1
        :pswitch_f3
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch -0x1
        :pswitch_11a
    .end packed-switch

    :pswitch_data_1be
    .packed-switch -0x1
        :pswitch_142
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getEditions()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    :cond_c
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    invoke-virtual {v0, p2}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->setSelectionToUserEdition()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/SettingsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lco/vine/android/SettingsFragment;->updateProfile(Landroid/net/Uri;)V

    :cond_17
    :goto_17
    const/4 v0, 0x1

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_22
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_17

    :pswitch_data_30
    .packed-switch 0x7f0a0245
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->getCursor()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getEditions()V

    goto :goto_1f
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_name"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_desc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_loc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_phone"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_email"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_edition"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_editions_fetched"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mEditionsFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state_avatar_url"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "state_background_color"

    iget v1, p0, Lco/vine/android/SettingsFragment;->mBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "state_color_index"

    iget v1, p0, Lco/vine/android/SettingsFragment;->mColorIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTypingTimeout(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->updateVerificationIcons()V

    goto :goto_7

    :sswitch_data_c
    .sparse-switch
        0x7f0a01e8 -> :sswitch_8
        0x7f0a0219 -> :sswitch_8
    .end sparse-switch
.end method

.method public setAvatarUrl(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mAvatarUri:Landroid/net/Uri;

    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lco/vine/android/SettingsFragment;->setImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
