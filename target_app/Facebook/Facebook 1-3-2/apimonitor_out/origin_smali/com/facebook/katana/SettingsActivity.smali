.class public Lcom/facebook/katana/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field public static final PREF_NOTIFICATIONS:Ljava/lang/String; = "notif"

.field public static final PREF_NOTIF_EVENT_INVITES:Ljava/lang/String; = "notif_event_invites"

.field public static final PREF_NOTIF_FRIEND_REQUESTS:Ljava/lang/String; = "notif_friend_requests"

.field public static final PREF_NOTIF_MESSAGES:Ljava/lang/String; = "notif_messages"

.field public static final PREF_POLLING_INTERVAL:Ljava/lang/String; = "polling_interval"

.field public static final PREF_RELOAD_PAGE:Ljava/lang/String; = "reload_page"

.field public static final PREF_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final PREF_SYNC_CONTACTS:Ljava/lang/String; = "sync_contacts"

.field public static final PREF_USE_LED:Ljava/lang/String; = "use_led"

.field public static final PREF_VIBRATE:Ljava/lang/String; = "vibrate"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/SettingsActivity;->valueToString([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v20

    new-instance v14, Landroid/preference/PreferenceCategory;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080118

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v6, Landroid/preference/ListPreference;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x5

    move v0, v4

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const v5, 0x7f080111

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    const/4 v4, 0x1

    const v5, 0x7f080112

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    const/4 v4, 0x2

    const v5, 0x7f080113

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    const/4 v4, 0x3

    const v5, 0x7f080114

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    const/4 v4, 0x4

    const v5, 0x7f080115

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    move v0, v4

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    const-string v5, "30"

    aput-object v5, v23, v4

    const/4 v4, 0x1

    const-string v5, "60"

    aput-object v5, v23, v4

    const/4 v4, 0x2

    const-string v5, "120"

    aput-object v5, v23, v4

    const/4 v4, 0x3

    const-string v5, "240"

    aput-object v5, v23, v4

    const/4 v4, 0x4

    const-string v5, "0"

    aput-object v5, v23, v4

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aget-object v4, v23, v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    const v4, 0x7f080120

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const-string v4, "polling_interval"

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080120

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "polling_interval"

    const/4 v7, 0x1

    aget-object v7, v23, v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/SettingsActivity;->valueToString([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Lcom/facebook/katana/SettingsActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/SettingsActivity$1;-><init>(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "notif"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f08011d

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notif"

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2df

    const v4, 0x7f08011b

    :goto_10b
    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v17, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08011a

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v10, Landroid/preference/CheckBoxPreference;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "notif_messages"

    invoke-virtual {v10, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080119

    invoke-virtual {v10, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v11, Landroid/preference/CheckBoxPreference;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "notif_friend_requests"

    invoke-virtual {v11, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080117

    invoke-virtual {v11, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v12, Landroid/preference/CheckBoxPreference;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "notif_event_invites"

    invoke-virtual {v12, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080116

    invoke-virtual {v12, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v7, Landroid/preference/CheckBoxPreference;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "vibrate"

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f08012a

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v4, 0x7f080129

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v8, Landroid/preference/CheckBoxPreference;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "use_led"

    invoke-virtual {v8, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080128

    invoke-virtual {v8, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v4, 0x7f080127

    invoke-virtual {v8, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v9, Landroid/preference/RingtonePreference;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    const-string v4, "ringtone"

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setShowSilent(Z)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setShowDefault(Z)V

    const v4, 0x7f080124

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setTitle(I)V

    const v4, 0x7f080123

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setSummary(I)V

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Lcom/facebook/katana/SettingsActivity$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/katana/SettingsActivity$2;-><init>(Lcom/facebook/katana/SettingsActivity;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/RingtonePreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_236

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_236
    new-instance v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08011e

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static/range {p0 .. p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_299

    invoke-static/range {p0 .. p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v13

    if-eqz v13, :cond_299

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v4, "sync_contacts"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f080125

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/SettingsActivity;->updateSyncContactsSummary(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V

    new-instance v16, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/SyncContactsChangeActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_299
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    const v4, 0x7f080063

    invoke-virtual {v15, v4}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v16, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/HtmlActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f080063

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    const v5, 0x7f060002

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v20

    :cond_2df
    const v4, 0x7f08011c

    goto/16 :goto_10b
.end method

.method private updateSyncContactsSummary(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->doesShowUngroupedContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_25

    if-eqz v0, :cond_1e

    const v3, 0x7f080163

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_1e
    const v3, 0x7f080165

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_25
    const v3, 0x7f08015f

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private valueToString([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_6

    const/4 v1, 0x0

    :goto_5
    return-object v1

    :cond_6
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    aget-object v1, p2, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/facebook/katana/SettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "sync_contacts"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/SettingsActivity;->updateSyncContactsSummary(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V

    :cond_12
    return-void
.end method
