.class public Lco/vine/android/ContentControlsFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ContentControlsFragment.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field private static final DIALOG_MAKE_EXPLICIT:I = 0x3
.field private static final DIALOG_MAKE_UNEXPLICIT:I = 0x4
.field private static final DIALOG_PROTECT_POSTS:I = 0x1
.field private static final DIALOG_UNPROTECT_POSTS:I = 0x2
.field private static final STATE_EXPLICIT:Ljava/lang/String; = "state_explicit"
.field private static final STATE_PRIVATE:Ljava/lang/String; = "state_private"
.field private mExplicit:Z
.field private mExplicitIcon:Landroid/widget/ImageView;
.field private mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
.field private mPrivate:Z
.field private mPrivateIcon:Landroid/widget/ImageView;
.field private mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
.field private mProgress:Landroid/app/ProgressDialog;
.field private mView:Landroid/view/View;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/ContentControlsFragment;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
return-object v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 11
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const v5, 0x3f8ccccd
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/high16 v2, 0x4120
new-array v3, v8, [Landroid/widget/TextView;
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
const v4, 0x7f0a008d
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v3, v6
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
const v4, 0x7f0a0093
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v3, v7
invoke-static {v1, v5, v2, v3}, Lco/vine/android/util/ViewUtil;->reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/high16 v2, 0x40a0
new-array v3, v8, [Landroid/widget/TextView;
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
const v4, 0x7f0a008f
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v3, v6
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
const v4, 0x7f0a0095
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v3, v7
invoke-static {v1, v5, v2, v3}, Lco/vine/android/util/ViewUtil;->reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 8
const v4, 0x7f0e0057
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I
move-result v1
sparse-switch v1, :sswitch_data_d2
:goto_b
return-void
:sswitch_c
if-eqz p2, :cond_3f
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v2, 0x7f0201dc
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v1, 0x1
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v0
const v1, 0x7f0e0098
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e0099
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e0097
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto :goto_b
:cond_3f
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v2, 0x7f0201db
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v1, 0x2
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v0
const v1, 0x7f0e009f
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e00a0
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e009e
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto :goto_b
:sswitch_70
if-eqz p2, :cond_a4
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v2, 0x7f0201da
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v1, 0x3
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v0
const v1, 0x7f0e0093
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e0094
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e0095
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto/16 :goto_b
:cond_a4
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v2, 0x7f0201d9
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v1, 0x4
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v0
const v1, 0x7f0e009b
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e009c
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e009d
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v0, p0, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto/16 :goto_b
:sswitch_data_d2
.sparse-switch
0x7f0a008e -> :sswitch_c
0x7f0a0094 -> :sswitch_70
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/ContentControlsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v2, Lco/vine/android/ContentControlsFragment$ContentControlsListener;
invoke-direct {v2, p0}, Lco/vine/android/ContentControlsFragment$ContentControlsListener;-><init>(Lco/vine/android/ContentControlsFragment;)V
iput-object v2, p0, Lco/vine/android/ContentControlsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
if-eqz p1, :cond_39
const-string v2, "state_private"
invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
const-string v2, "state_explicit"
invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
:goto_1d
new-instance v1, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f0f0037
invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
const v2, 0x7f0e00a2
invoke-virtual {p0, v2}, Lco/vine/android/ContentControlsFragment;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iput-object v1, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
const-string v1, " - Lco/vine/android/ContentControlsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_39
invoke-virtual {p0}, Lco/vine/android/ContentControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v2, "settings_private"
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
const-string v2, "settings_explicit"
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
goto :goto_1d
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030029
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mView:Landroid/view/View;
return-object v0
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 9
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
packed-switch p2, :pswitch_data_ca
:goto_6
return-void
:pswitch_7
packed-switch p3, :pswitch_data_d6
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v1, 0x7f0201db
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v4}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v2}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto :goto_6
:pswitch_24
iput-boolean v3, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v0, v1, v3}, Lco/vine/android/client/AppController;->updatePrivate(Lco/vine/android/client/Session;Z)Ljava/lang/String;
goto :goto_6
:pswitch_37
packed-switch p3, :pswitch_data_dc
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v1, 0x7f0201dc
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v4}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v3}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto :goto_6
:pswitch_54
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->updatePrivate(Lco/vine/android/client/Session;Z)Ljava/lang/String;
goto :goto_6
:pswitch_67
packed-switch p3, :pswitch_data_e2
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v1, 0x7f0201d9
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v4}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v2}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto :goto_6
:pswitch_84
iput-boolean v3, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v0, v1, v3}, Lco/vine/android/client/AppController;->updateExplicit(Lco/vine/android/client/Session;Z)Ljava/lang/String;
goto/16 :goto_6
:pswitch_98
packed-switch p3, :pswitch_data_e8
iput-boolean v3, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v1, 0x7f0201da
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v4}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, v3}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto/16 :goto_6
:pswitch_b6
iput-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iget-object v0, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/ContentControlsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->updateExplicit(Lco/vine/android/client/Session;Z)Ljava/lang/String;
goto/16 :goto_6
:pswitch_data_e8
.packed-switch -0x1
:pswitch_b6
.end packed-switch
:pswitch_data_e2
.packed-switch -0x1
:pswitch_84
.end packed-switch
:pswitch_data_d6
.packed-switch -0x1
:pswitch_24
.end packed-switch
:pswitch_data_ca
.packed-switch 0x1
:pswitch_7
:pswitch_37
:pswitch_67
:pswitch_98
.end packed-switch
:pswitch_data_dc
.packed-switch -0x1
:pswitch_54
.end packed-switch
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/ContentControlsFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "state_private"
iget-boolean v1, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "state_explicit"
iget-boolean v1, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lco/vine/android/ContentControlsFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
const/16 v5, 0x8
const/4 v4, 0x1
invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v2, 0x7f0a008e
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/views/SwitchInterface;
const v2, 0x7f0a0094
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/views/SwitchInterface;
const v2, 0x7f0a008c
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
iget-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivate:Z
if-eqz v2, :cond_57
iget-object v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v3, 0x7f0201dc
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-interface {v1, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
:goto_32
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v2
if-eqz v2, :cond_60
const v2, 0x7f0a0090
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
const v2, 0x7f0a0095
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
:goto_4c
invoke-interface {v1, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
invoke-interface {v0, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iput-object v1, p0, Lco/vine/android/ContentControlsFragment;->mPrivateSwitch:Lco/vine/android/views/SwitchInterface;
iput-object v0, p0, Lco/vine/android/ContentControlsFragment;->mExplicitSwitch:Lco/vine/android/views/SwitchInterface;
return-void
:cond_57
iget-object v2, p0, Lco/vine/android/ContentControlsFragment;->mPrivateIcon:Landroid/widget/ImageView;
const v3, 0x7f0201db
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_32
:cond_60
const v2, 0x7f0a0092
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
iget-boolean v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicit:Z
if-eqz v2, :cond_7b
iget-object v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v3, 0x7f0201da
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-interface {v0, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
goto :goto_4c
:cond_7b
iget-object v2, p0, Lco/vine/android/ContentControlsFragment;->mExplicitIcon:Landroid/widget/ImageView;
const v3, 0x7f0201d9
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_4c
.end method