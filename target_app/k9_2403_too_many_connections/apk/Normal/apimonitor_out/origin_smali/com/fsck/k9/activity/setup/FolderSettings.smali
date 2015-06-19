.class public Lcom/fsck/k9/activity/setup/FolderSettings;
.super Lcom/fsck/k9/K9PreferenceActivity;
.source "FolderSettings.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.account"

.field private static final EXTRA_FOLDER_NAME:Ljava/lang/String; = "com.fsck.k9.folderName"

.field private static final PREFERENCE_DISPLAY_CLASS:Ljava/lang/String; = "folder_settings_folder_display_mode"

.field private static final PREFERENCE_PUSH_CLASS:Ljava/lang/String; = "folder_settings_folder_push_mode"

.field private static final PREFERENCE_SYNC_CLASS:Ljava/lang/String; = "folder_settings_folder_sync_mode"

.field private static final PREFERENCE_TOP_CATERGORY:Ljava/lang/String; = "folder_settings"


# instance fields
.field private mDisplayClass:Landroid/preference/ListPreference;

.field private mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field private mPushClass:Landroid/preference/ListPreference;

.field private mSyncClass:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.folderName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private saveSettings()V
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setDisplayClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setSyncClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    :try_start_2d
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->save(Lcom/fsck/k9/Preferences;)V

    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V
    :try_end_39
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2d .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v1

    move-object v0, v1

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not refresh folder preferences for folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const-string v10, "k9"

    invoke-super {p0, p1}, Lcom/fsck/k9/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.fsck.k9.folderName"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.fsck.k9.account"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/Account;

    :try_start_1d
    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->refresh(Lcom/fsck/k9/Preferences;)V
    :try_end_3a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1d .. :try_end_3a} :catch_eb

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_3c
    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_10c

    move-result v3

    :goto_4c
    const v8, 0x7f040001

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/FolderSettings;->addPreferencesFromResource(I)V

    const-string v8, "folder_settings"

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v8, "folder_settings_folder_display_mode"

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    new-instance v9, Lcom/fsck/k9/activity/setup/FolderSettings$1;

    invoke-direct {v9, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$1;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "folder_settings_folder_sync_mode"

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getRawSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    new-instance v9, Lcom/fsck/k9/activity/setup/FolderSettings$2;

    invoke-direct {v9, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$2;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "folder_settings_folder_push_mode"

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v8, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getRawPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    new-instance v9, Lcom/fsck/k9/activity/setup/FolderSettings$3;

    invoke-direct {v9, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$3;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_ea
    return-void

    :catch_eb
    move-exception v8

    move-object v6, v8

    const-string v8, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to edit folder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " preferences"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ea

    :catch_10c
    move-exception v8

    move-object v1, v8

    const-string v8, "k9"

    const-string v8, "Could not get remote store"

    invoke-static {v10, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->saveSettings()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/fsck/k9/K9PreferenceActivity;->onResume()V

    :try_start_3
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->refresh(Lcom/fsck/k9/Preferences;)V
    :try_end_c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v1

    move-object v0, v1

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not refresh folder preferences for folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
