.class public Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
.super Landroid/preference/PreferenceActivity;
.source "EditLocationProviderPreferences.java"


# static fields
.field private static final timeZoneAreasToLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private handlingPrefChange:Z

.field private latitude:Landroid/preference/EditTextPreference;

.field private longitude:Landroid/preference/EditTextPreference;

.field private overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;

.field private place:Landroid/preference/EditTextPreference;

.field protected prefs:Landroid/content/SharedPreferences;

.field private timeZoneAreas:Landroid/preference/ListPreference;

.field private timeZoneLocales:Landroid/preference/ListPreference;

.field private useDynamicPos:Landroid/preference/CheckBoxPreference;

.field private useLatLong:Landroid/preference/CheckBoxPreference;

.field private useStaticLocation:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreasToLocales:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z

    return v0
.end method

.method static synthetic access$002(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overridingSystemTimeZone(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateLocaleSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreasToLocales:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
    .registers 1

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->dynamicProviderSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
    .registers 1

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->staticProviderSelected()V

    return-void
.end method

.method static synthetic access$500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
    .registers 1

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latLongProviderSelected()V

    return-void
.end method

.method static synthetic access$700(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private configureDependencies()V
    .registers 3

    new-instance v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;-><init>(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private configureTimeZones()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/CharSequence;

    const-string v3, "N/A"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/CharSequence;

    const-string v3, "-- Loading --"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    new-instance v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;-><init>(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V

    new-array v1, v5, [Ljava/lang/Void;

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Void;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private dynamicProviderSelected()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    const-string v1, ""

    const v2, 0x7f050028

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    const-string v1, ""

    const v2, 0x7f05002d

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    const-string v1, ""

    const v2, 0x7f05002f

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private latLongProviderSelected()V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    const-string v3, ""

    const v4, 0x7f050028

    invoke-virtual {p0, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LATITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LONGITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    const v3, 0x7f05002f

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method private overridingSystemTimeZone(Z)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v4}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v4}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_32

    array-length v3, v2

    if-le v3, v5, :cond_32

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateLocaleSelector(Ljava/lang/String;)V

    :cond_32
    :goto_32
    if-nez v0, :cond_42

    const v3, 0x7f050034

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f050036

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_42
    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-direct {p0, v3, v4, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-direct {p0, v3, v4, v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_51
    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_32
.end method

.method private staticProviderSelected()V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    const-string v2, ""

    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    const-string v2, ""

    const v3, 0x7f05002f

    invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    const-string v2, ""

    invoke-direct {p0, v1, v0, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateLocaleSelector(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_42

    sget-object v2, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreasToLocales:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    const-string v3, ""

    const v4, 0x7f050036

    invoke-virtual {p0, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_42
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "--No Area Selected--"

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_37
.end method

.method private updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LATITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LONGITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->OVERRIDE_SYSTEM_TIME_ZONE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->configureDependencies()V

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->configureTimeZones()V

    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->dynamicProviderSelected()V

    :goto_b1
    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overridingSystemTimeZone(Z)V

    return-void

    :cond_bb
    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->staticProviderSelected()V

    goto :goto_b1

    :cond_c7
    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-direct {p0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latLongProviderSelected()V

    goto :goto_b1

    :cond_d3
    iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b1
.end method
