.class public Lcom/fsck/k9/activity/setup/AccountSettings;
.super Lcom/fsck/k9/K9PreferenceActivity;
.source "AccountSettings.java"


# static fields
.field private static final ACTIVITY_MANAGE_IDENTITIES:I = 0x2

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final PREFERENCE_AUTO_EXPAND_FOLDER:Ljava/lang/String; = "account_setup_auto_expand_folder"

.field private static final PREFERENCE_COMPOSITION:Ljava/lang/String; = "composition"

.field private static final PREFERENCE_DEFAULT:Ljava/lang/String; = "account_default"

.field private static final PREFERENCE_DELETE_POLICY:Ljava/lang/String; = "delete_policy"

.field private static final PREFERENCE_DESCRIPTION:Ljava/lang/String; = "account_description"

.field private static final PREFERENCE_DISPLAY_COUNT:Ljava/lang/String; = "account_display_count"

.field private static final PREFERENCE_DISPLAY_MODE:Ljava/lang/String; = "folder_display_mode"

.field private static final PREFERENCE_EXPUNGE_POLICY:Ljava/lang/String; = "expunge_policy"

.field private static final PREFERENCE_FREQUENCY:Ljava/lang/String; = "account_check_frequency"

.field private static final PREFERENCE_HIDE_BUTTONS:Ljava/lang/String; = "hide_buttons_enum"

.field private static final PREFERENCE_INCOMING:Ljava/lang/String; = "incoming"

.field private static final PREFERENCE_MANAGE_IDENTITIES:Ljava/lang/String; = "manage_identities"

.field private static final PREFERENCE_NOTIFY:Ljava/lang/String; = "account_notify"

.field private static final PREFERENCE_NOTIFY_SELF:Ljava/lang/String; = "account_notify_self"

.field private static final PREFERENCE_NOTIFY_SYNC:Ljava/lang/String; = "account_notify_sync"

.field private static final PREFERENCE_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PREFERENCE_PUSH_LIMIT:Ljava/lang/String; = "folder_push_limit"

.field private static final PREFERENCE_PUSH_MODE:Ljava/lang/String; = "folder_push_mode"

.field private static final PREFERENCE_RINGTONE:Ljava/lang/String; = "account_ringtone"

.field private static final PREFERENCE_SYNC_MODE:Ljava/lang/String; = "folder_sync_mode"

.field private static final PREFERENCE_TARGET_MODE:Ljava/lang/String; = "folder_target_mode"

.field private static final PREFERENCE_TOP_CATERGORY:Ljava/lang/String; = "account_settings"

.field private static final PREFERENCE_VIBRATE:Ljava/lang/String; = "account_vibrate"

.field private static final SELECT_AUTO_EXPAND_FOLDER:I = 0x1


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountHideButtons:Landroid/preference/ListPreference;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountNotifySelf:Landroid/preference/CheckBoxPreference;

.field private mAccountNotifySync:Landroid/preference/CheckBoxPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountVibrate:Landroid/preference/CheckBoxPreference;

.field private mAutoExpandFolder:Landroid/preference/Preference;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mDeletePolicy:Landroid/preference/ListPreference;

.field private mDisplayCount:Landroid/preference/ListPreference;

.field private mDisplayMode:Landroid/preference/ListPreference;

.field private mExpungePolicy:Landroid/preference/ListPreference;

.field private mPushLimit:Landroid/preference/ListPreference;

.field private mPushMode:Landroid/preference/ListPreference;

.field private mSyncMode:Landroid/preference/ListPreference;

.field private mTargetMode:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onCompositionSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onManageIdentities()V

    return-void
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onIncomingSettings()V

    return-void
.end method

.method static synthetic access$1400(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onOutgoingSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onCompositionSettings()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->actionEditCompositionSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private onIncomingSettings()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionEditIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private onManageIdentities()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/ManageIdentities;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.ChooseIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onOutgoingSettings()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->actionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private reverseTranslateFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "INBOX"

    :goto_f
    return-object v0

    :cond_10
    move-object v0, p1

    goto :goto_f
.end method

.method private saveSettings()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    :cond_12
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySelf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setNotifySelfNewMail(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setShowOngoing(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setDisplayCount(I)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setVibrate(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setMaxPushFolders(I)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setFolderTargetMode(Lcom/fsck/k9/Account$FolderMode;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setDeletePolicy(I)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setExpungePolicy(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_ringtone"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_118

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setRing(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/Account;->setRingtone(Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Account$HideButtons;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setHideMessageViewButtons(Lcom/fsck/k9/Account$HideButtons;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->reverseTranslateFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setAutoExpandFolderName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    return-void

    :cond_118
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isRing()Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/Account;->setRingtone(Ljava/lang/String;)V

    goto :goto_e9
.end method

.method private translateFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "INBOX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    move-object v0, p1

    goto :goto_f
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    packed-switch p1, :pswitch_data_1a

    :cond_6
    :goto_6
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/K9PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    const-string v1, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->translateFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public onChooseAutoExpandFolder()V
    .registers 5

    const-string v3, "yes"

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.ChooseFolder_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.ChooseFolder_showcurrent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.ChooseFolder_showOptionNone"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.ChooseFolder_showDisplayableOnly"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const-string v11, "account_ringtone"

    const-string v10, ""

    invoke-super {p0, p1}, Lcom/fsck/k9/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "account"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/Account;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_18
    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z

    move-result v4

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Store;->isExpungeCapable()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_358

    move-result v3

    :goto_2e
    const/high16 v7, 0x7f04

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->addPreferencesFromResource(I)V

    const-string v7, "account_settings"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v7, 0x7f080131

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v7, "account_description"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$1;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "account_check_frequency"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$2;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "folder_display_mode"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayMode:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$3;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$3;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "folder_sync_mode"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mSyncMode:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$4;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$4;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "folder_push_mode"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushMode:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$5;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$5;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "folder_push_limit"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getMaxPushFolders()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mPushLimit:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$6;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$6;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "folder_target_mode"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$7;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$7;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "delete_policy"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDeletePolicy:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$8;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$8;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "expunge_policy"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mExpungePolicy:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$9;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$9;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "account_display_count"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mDisplayCount:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$10;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$10;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "account_default"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "hide_buttons_enum"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getHideMessageViewButtons()Lcom/fsck/k9/Account$HideButtons;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountHideButtons:Landroid/preference/ListPreference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$11;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$11;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "account_notify"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "account_notify_self"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySelf:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySelf:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isNotifySelfNewMail()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "account_notify_sync"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySync:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountNotifySync:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "account_ringtone"

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/RingtonePreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v7}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->isRing()Z

    move-result v7

    if-nez v7, :cond_363

    const/4 v7, 0x0

    move-object v1, v7

    :goto_2dc
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "account_ringtone"

    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "account_vibrate"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isVibrate()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "account_setup_auto_expand_folder"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSettings;->translateFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAutoExpandFolder:Landroid/preference/Preference;

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$12;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$12;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v7, "composition"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$13;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$13;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v7, "manage_identities"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$14;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$14;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v7, "incoming"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$15;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$15;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v7, "outgoing"

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Lcom/fsck/k9/activity/setup/AccountSettings$16;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$16;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :catch_358
    move-exception v7

    move-object v2, v7

    const-string v7, "k9"

    const-string v8, "Could not get remote store"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    :cond_363
    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getRingtone()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    goto/16 :goto_2dc
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->saveSettings()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/K9PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->refresh(Lcom/fsck/k9/Preferences;)V

    return-void
.end method
