.class Lcom/fsck/k9/activity/setup/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
