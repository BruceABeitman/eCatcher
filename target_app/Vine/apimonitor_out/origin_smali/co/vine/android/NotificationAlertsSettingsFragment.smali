.class public Lco/vine/android/NotificationAlertsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationAlertsSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lco/vine/android/NotificationAlertsSettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method
