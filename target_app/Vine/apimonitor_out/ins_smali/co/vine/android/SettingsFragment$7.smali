.class  Lco/vine/android/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/SettingsFragment;
.field final synthetic val$scrollView:Landroid/widget/ScrollView;
.field final synthetic val$verified:Landroid/view/View;
.method constructor <init>(Lco/vine/android/SettingsFragment;Landroid/widget/ScrollView;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lco/vine/android/SettingsFragment$7;->this$0:Lco/vine/android/SettingsFragment;
iput-object p2, p0, Lco/vine/android/SettingsFragment$7;->val$scrollView:Landroid/widget/ScrollView;
iput-object p3, p0, Lco/vine/android/SettingsFragment$7;->val$verified:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lco/vine/android/SettingsFragment$7;->val$scrollView:Landroid/widget/ScrollView;
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/SettingsFragment$7;->val$verified:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getBottom()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V
return-void
.end method