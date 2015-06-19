.class public final Lcom/google/zxing/client/android/pref/BSPlusPreference;
.super Landroid/preference/Preference;
.source "BSPlusPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/zxing/client/android/pref/BSPlusPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/zxing/client/android/pref/BSPlusPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/google/zxing/client/android/pref/BSPlusPreference;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    new-instance v0, Lcom/google/zxing/client/android/pref/a;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/pref/a;-><init>(Lcom/google/zxing/client/android/pref/BSPlusPreference;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/pref/BSPlusPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
