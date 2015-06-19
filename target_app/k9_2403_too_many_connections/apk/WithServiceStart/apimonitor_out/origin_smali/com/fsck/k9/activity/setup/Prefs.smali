.class public Lcom/fsck/k9/activity/setup/Prefs;
.super Lcom/fsck/k9/K9PreferenceActivity;
.source "Prefs.java"


# static fields
.field private static final PREFERENCE_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final PREFERENCE_BACKGROUND_OPS:Ljava/lang/String; = "background_ops"

.field private static final PREFERENCE_DATE_FORMAT:Ljava/lang/String; = "dateFormat"

.field private static final PREFERENCE_DEBUG_LOGGING:Ljava/lang/String; = "debug_logging"

.field private static final PREFERENCE_MESSAGELIST_CHECKBOXES:Ljava/lang/String; = "messagelist_checkboxes"

.field private static final PREFERENCE_MESSAGELIST_STARS:Ljava/lang/String; = "messagelist_stars"

.field private static final PREFERENCE_MESSAGELIST_TOUCHABLE:Ljava/lang/String; = "messagelist_touchable"

.field private static final PREFERENCE_SENSITIVE_LOGGING:Ljava/lang/String; = "sensitive_logging"

.field private static final PREFERENCE_THEME:Ljava/lang/String; = "theme"


# instance fields
.field private initBackgroundOps:Ljava/lang/String;

.field private mAnimations:Landroid/preference/CheckBoxPreference;

.field private mBackgroundOps:Landroid/preference/ListPreference;

.field private mCheckboxes:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDebugLogging:Landroid/preference/CheckBoxPreference;

.field private mSensitiveLogging:Landroid/preference/CheckBoxPreference;

.field private mStars:Landroid/preference/CheckBoxPreference;

.field private mTheme:Landroid/preference/ListPreference;

.field private mTouchable:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionPrefs(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private saveSettings()V
    .registers 6

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dark"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    const v3, 0x1030005

    :goto_19
    invoke-static {v3}, Lcom/fsck/k9/K9;->setK9Theme(I)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/K9;->setBackgroundOps(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Lcom/fsck/k9/K9;->setAnimations(Z)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Lcom/fsck/k9/K9;->setMessageListStars(Z)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Lcom/fsck/k9/K9;->setMessageListCheckboxes(Z)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTouchable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Lcom/fsck/k9/K9;->setMessageListTouchable(Z)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/K9;->save(Landroid/content/SharedPreferences$Editor;)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fsck/k9/activity/DateFormatter;->setDateFormat(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs;->initBackgroundOps:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/fsck/k9/service/MailService;->backgroundDataChanged(Landroid/content/Context;Ljava/lang/Integer;)V

    :cond_78
    return-void

    :cond_79
    const v3, 0x103000c

    goto :goto_19
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/fsck/k9/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040002

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->addPreferencesFromResource(I)V

    const-string v5, "theme"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()I

    move-result v6

    const v7, 0x1030005

    if-ne v6, v7, :cond_61

    const-string v6, "dark"

    :goto_20
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    new-instance v6, Lcom/fsck/k9/activity/setup/Prefs$1;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/setup/Prefs$1;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "dateFormat"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-static {p0}, Lcom/fsck/k9/activity/DateFormatter;->getFormats(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    new-array v0, v5, [Ljava/lang/CharSequence;

    array-length v5, v2

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    :goto_51
    array-length v5, v2

    if-ge v3, v5, :cond_64

    aget-object v1, v2, v3

    invoke-static {p0, v1}, Lcom/fsck/k9/activity/DateFormatter;->getSampleDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_61
    const-string v6, "light"

    goto :goto_20

    :cond_64
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-static {p0}, Lcom/fsck/k9/activity/DateFormatter;->getFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDateFormat:Landroid/preference/ListPreference;

    new-instance v6, Lcom/fsck/k9/activity/setup/Prefs$2;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/setup/Prefs$2;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "background_ops"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->initBackgroundOps:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->initBackgroundOps:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    new-instance v6, Lcom/fsck/k9/activity/setup/Prefs$3;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/setup/Prefs$3;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "debug_logging"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    const-string v5, "sensitive_logging"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v5, "animations"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v5, "messagelist_stars"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v5, "messagelist_checkboxes"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->messageListCheckboxes()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v5, "messagelist_touchable"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTouchable:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTouchable:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/fsck/k9/K9;->messageListTouchable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/Prefs;->saveSettings()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/fsck/k9/K9PreferenceActivity;->onResume()V

    return-void
.end method
