.class Lcom/facebook/katana/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/SettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/SettingsActivity;

.field private final synthetic val$checkIntervalPref:Landroid/preference/ListPreference;

.field private final synthetic val$eventInvites:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$friendRequests:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$messages:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$ringtonePref:Landroid/preference/RingtonePreference;

.field private final synthetic val$useLedPref:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$vibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/facebook/katana/SettingsActivity;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/RingtonePreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .registers 9

    iput-object p1, p0, Lcom/facebook/katana/SettingsActivity$2;->this$0:Lcom/facebook/katana/SettingsActivity;

    iput-object p2, p0, Lcom/facebook/katana/SettingsActivity$2;->val$checkIntervalPref:Landroid/preference/ListPreference;

    iput-object p3, p0, Lcom/facebook/katana/SettingsActivity$2;->val$vibratePref:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/facebook/katana/SettingsActivity$2;->val$useLedPref:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/facebook/katana/SettingsActivity$2;->val$ringtonePref:Landroid/preference/RingtonePreference;

    iput-object p6, p0, Lcom/facebook/katana/SettingsActivity$2;->val$messages:Landroid/preference/CheckBoxPreference;

    iput-object p7, p0, Lcom/facebook/katana/SettingsActivity$2;->val$friendRequests:Landroid/preference/CheckBoxPreference;

    iput-object p8, p0, Lcom/facebook/katana/SettingsActivity$2;->val$eventInvites:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    const v1, 0x7f08011b

    :goto_b
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$checkIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$vibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$useLedPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$ringtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v1, v0}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$friendRequests:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$2;->val$eventInvites:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v1, 0x1

    return v1

    :cond_33
    const v1, 0x7f08011c

    goto :goto_b
.end method
