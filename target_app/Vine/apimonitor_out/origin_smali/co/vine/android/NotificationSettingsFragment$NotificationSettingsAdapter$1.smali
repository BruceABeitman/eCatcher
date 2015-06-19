.class Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;
.super Ljava/lang/Object;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;

.field final synthetic val$h:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;

.field final synthetic val$setting:Lco/vine/android/api/VineNotificationSetting;


# direct methods
.method constructor <init>(Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;Lco/vine/android/api/VineNotificationSetting;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;

    iput-object p2, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->val$h:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;

    iput-object p3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->val$setting:Lco/vine/android/api/VineNotificationSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;

    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;

    iget-object v0, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/NotificationSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_11
    iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->val$h:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;

    iget-object v3, v3, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->selectionIndicator:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v3}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->setSelected(Landroid/content/res/Resources;ZLandroid/view/View;)V

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;->val$setting:Lco/vine/android/api/VineNotificationSetting;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "on"

    :goto_22
    iput-object v0, v1, Lco/vine/android/api/VineNotificationSetting;->value:Ljava/lang/String;

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_11

    :cond_27
    const-string v0, "off"

    goto :goto_22
.end method
