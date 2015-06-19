.class  Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;
.super Ljava/lang/Object;
.source "NotificationSettingsFragment.java"
.field  header:Landroid/view/View;
.field  headerText:Landroid/widget/TextView;
.field  selectionIndicator:Landroid/view/View;
.field  spinner:Landroid/widget/Spinner;
.field final synthetic this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;
.field  title:Landroid/widget/TextView;
.method public constructor <init>(Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->this$1:Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a005b
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->header:Landroid/view/View;
const v0, 0x7f0a005c
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->headerText:Landroid/widget/TextView;
const v0, 0x7f0a004a
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->title:Landroid/widget/TextView;
const v0, 0x7f0a0149
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->spinner:Landroid/widget/Spinner;
const v0, 0x7f0a0148
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->selectionIndicator:Landroid/view/View;
return-void
.end method