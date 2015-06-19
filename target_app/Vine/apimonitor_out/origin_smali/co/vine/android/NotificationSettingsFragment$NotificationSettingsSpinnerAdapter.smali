.class public Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationSettingsSpinnerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSetting:Lco/vine/android/api/VineNotificationSetting;

.field final synthetic this$0:Lco/vine/android/NotificationSettingsFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/NotificationSettingsFragment;Landroid/content/Context;Lco/vine/android/api/VineNotificationSetting;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iput-object p2, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iget-object v0, v0, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iget-object v0, v0, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iget-object v3, v3, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_25

    move-object v1, p2

    :goto_d
    const v3, 0x7f0a004a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-object v1

    :cond_25
    iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030092

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_d
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;->mSetting:Lco/vine/android/api/VineNotificationSetting;

    iget-object v0, v0, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lco/vine/android/api/VineNotificationSetting;->value:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
