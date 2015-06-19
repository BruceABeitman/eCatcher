.class  Lco/vine/android/TagSearchFragment$TagSearchSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "TagSearchFragment.java"
.field final synthetic this$0:Lco/vine/android/TagSearchFragment;
.method private constructor <init>(Lco/vine/android/TagSearchFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/TagSearchFragment;Lco/vine/android/TagSearchFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;-><init>(Lco/vine/android/TagSearchFragment;)V
return-void
.end method
.method public onTagSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
.registers 11
const/4 v3, 0x1
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
invoke-virtual {v1, p1}, Lco/vine/android/TagSearchFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_2b
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v1, v2}, Lco/vine/android/TagSearchFragment;->hideProgress(I)V
packed-switch p2, :pswitch_data_3a
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_22
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
const v2, 0x7f0e00cf
invoke-virtual {v1, v2}, Lco/vine/android/TagSearchFragment;->getString(I)Ljava/lang/String;
move-result-object p3
:cond_22
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
invoke-virtual {v1}, Lco/vine/android/TagSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
:cond_2b
:goto_2b
return-void
:pswitch_2c
if-ge p4, v3, :cond_2b
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
invoke-virtual {v1}, Lco/vine/android/TagSearchFragment;->cleanSearchResults()V
iget-object v1, p0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;->this$0:Lco/vine/android/TagSearchFragment;
const/4 v2, 0x0
invoke-virtual {v1, v3, v2}, Lco/vine/android/TagSearchFragment;->showSadface(ZZ)V
goto :goto_2b
:pswitch_data_3a
.packed-switch 0xc8
:pswitch_2c
.end packed-switch
.end method