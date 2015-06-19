.class public Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationSettingsFragment.java"
.field private static final CHECK_VALUE_OFF:Ljava/lang/String; = "off"
.field private static final CHECK_VALUE_ON:Ljava/lang/String; = "on"
.field private static final TYPE_CHECK:I = 0x0
.field private static final TYPE_SPINNER:I = 0x1
.field private mContext:Landroid/content/Context;
.field private mSettings:Ljava/util/ArrayList;
.field final synthetic this$0:Lco/vine/android/NotificationSettingsFragment;
.method public constructor <init>(Lco/vine/android/NotificationSettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
.registers 5
iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->this$0:Lco/vine/android/NotificationSettingsFragment;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
iput-object p2, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
return-void
.end method
.method private bindView(Landroid/view/View;I)V
.registers 11
iget-object v5, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/api/VineNotificationSetting;
new-instance v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;
invoke-direct {v0, p0, p1}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;-><init>(Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;Landroid/view/View;)V
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->title:Landroid/widget/TextView;
iget-object v6, v3, Lco/vine/android/api/VineNotificationSetting;->title:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v5, v3, Lco/vine/android/api/VineNotificationSetting;->isBooleanSetting:Z
if-eqz v5, :cond_4c
iget-object v5, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->this$0:Lco/vine/android/NotificationSettingsFragment;
invoke-virtual {v5}, Lco/vine/android/NotificationSettingsFragment;->getResources()Landroid/content/res/Resources;
move-result-object v5
const-string v6, "on"
iget-object v7, v3, Lco/vine/android/api/VineNotificationSetting;->value:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
iget-object v7, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->selectionIndicator:Landroid/view/View;
invoke-virtual {p0, v5, v6, v7}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->setSelected(Landroid/content/res/Resources;ZLandroid/view/View;)V
new-instance v2, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;
invoke-direct {v2, p0, v0, v3}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$1;-><init>(Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;Lco/vine/android/api/VineNotificationSetting;)V
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->selectionIndicator:Landroid/view/View;
invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_38
:goto_38
invoke-direct {p0, p2}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->shouldShowHeader(I)Z
move-result v5
if-eqz v5, :cond_85
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->header:Landroid/view/View;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->headerText:Landroid/widget/TextView;
iget-object v6, v3, Lco/vine/android/api/VineNotificationSetting;->section:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_4b
return-void
:cond_4c
new-instance v4, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;
iget-object v5, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->this$0:Lco/vine/android/NotificationSettingsFragment;
iget-object v6, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mContext:Landroid/content/Context;
invoke-direct {v4, v5, v6, v3}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsSpinnerAdapter;-><init>(Lco/vine/android/NotificationSettingsFragment;Landroid/content/Context;Lco/vine/android/api/VineNotificationSetting;)V
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->spinner:Landroid/widget/Spinner;
invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->spinner:Landroid/widget/Spinner;
invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
const/4 v1, 0x0
:goto_60
iget-object v5, v3, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v1, v5, :cond_38
iget-object v5, v3, Lco/vine/android/api/VineNotificationSetting;->choices:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/util/Pair;
iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v5, Ljava/lang/String;
iget-object v6, v3, Lco/vine/android/api/VineNotificationSetting;->value:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_82
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->spinner:Landroid/widget/Spinner;
invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V
goto :goto_38
:cond_82
add-int/lit8 v1, v1, 0x1
goto :goto_60
:cond_85
iget-object v5, v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter$NotificationSettingsViewHolder;->header:Landroid/view/View;
const/16 v6, 0x8
invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
goto :goto_4b
.end method
.method private shouldShowHeader(I)Z
.registers 7
const/4 v2, 0x1
if-nez p1, :cond_4
:cond_3
:goto_3
return v2
:cond_4
iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineNotificationSetting;
iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
add-int/lit8 v4, p1, -0x1
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineNotificationSetting;
iget-object v3, v0, Lco/vine/android/api/VineNotificationSetting;->section:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_28
iget-object v3, v0, Lco/vine/android/api/VineNotificationSetting;->section:Ljava/lang/String;
iget-object v4, v1, Lco/vine/android/api/VineNotificationSetting;->section:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3
:cond_28
const/4 v2, 0x0
goto :goto_3
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineNotificationSetting;
iget-boolean v0, v0, Lco/vine/android/api/VineNotificationSetting;->isBooleanSetting:Z
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method public getMap()Ljava/util/HashMap;
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mSettings:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_b
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VineNotificationSetting;
invoke-virtual {v2, v1}, Lco/vine/android/api/VineNotificationSetting;->addToMap(Ljava/util/HashMap;)V
goto :goto_b
:cond_1b
return-object v1
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const v0, 0x7f030064
invoke-virtual {p0, p1}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->getItemViewType(I)I
move-result v1
if-nez p2, :cond_1a
const/4 v2, 0x1
if-ne v1, v2, :cond_f
const v0, 0x7f030066
:cond_f
iget-object v2, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->mContext:Landroid/content/Context;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_1a
invoke-direct {p0, p2, p1}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->bindView(Landroid/view/View;I)V
return-object p2
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public setSelected(Landroid/content/res/Resources;ZLandroid/view/View;)V
.registers 9
if-eqz p2, :cond_28
const v2, 0x7f02015a
invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
const v2, 0x7f090096
invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
new-instance v2, Landroid/graphics/PorterDuffColorFilter;
const/high16 v3, -0x100
or-int/2addr v3, v1
sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-static {p3, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
:goto_24
invoke-virtual {p3, p2}, Landroid/view/View;->setSelected(Z)V
return-void
:cond_28
const v2, 0x7f020159
invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
new-instance v2, Landroid/graphics/PorterDuffColorFilter;
const v3, 0x7f09001a
invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-static {p3, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
goto :goto_24
.end method