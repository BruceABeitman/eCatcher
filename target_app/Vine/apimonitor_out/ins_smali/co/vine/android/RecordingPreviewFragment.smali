.class public Lco/vine/android/RecordingPreviewFragment;
.super Lco/vine/android/BaseFragment;
.source "RecordingPreviewFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field public static final AG_THUMBNAIL_PATH:Ljava/lang/String; = "pic_path"
.field public static final AG_UPLOAD_PATH:Ljava/lang/String; = "upload_path"
.field public static final AG_VIDEO_PATH:Ljava/lang/String; = "video_path"
.field public static final ARG_AM_FOLLOWING:Ljava/lang/String; = "am_following"
.field public static final ARG_COLOR:Ljava/lang/String; = "color"
.field public static final ARG_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"
.field public static final ARG_DIRECT_USER_ID:Ljava/lang/String; = "direct_user_id"
.field public static final ARG_FROM_SONY:Ljava/lang/String; = "f_s"
.field public static final ARG_IS_MESSAGING:Ljava/lang/String; = "messaging"
.field public static final ARG_IS_VM_ONBOARDING:Ljava/lang/String; = "is_vm_onboarding"
.field public static final ARG_RECIPIENT_USERNAME:Ljava/lang/String; = "recipient_username"
.field private static final DIALOG_MUST_LOGIN:I = 0x1
.field private static final REQUEST_CODE_LOGIN_TO_POST:I = 0x3039
.field public static final REQUEST_POST:I = 0x7c6
.field public static final REQUEST_SEND_MESSAGE:I = 0x7c7
.field private static final TRANSITION_DURATION:J = 0xfaL
.field private static final VALID_MAX_LOOPS:[I
.field private mAmFollowing:Z
.field private mColor:I
.field private mConversationRowId:J
.field private mDirectUserId:J
.field private mFinalFile:Lco/vine/android/recorder/RecordingFile;
.field private mIsFromSony:Z
.field private mIsMessaging:Z
.field private mIsVmOnboarding:Z
.field private mMaxLoop:I
.field private mMessagingEditText:Landroid/widget/EditText;
.field private mMessagingLoopLimitText:Landroid/widget/Button;
.field private mNextButton:Landroid/view/View;
.field private mPreviewButtons:Landroid/view/View;
.field private mRecipientUsername:Ljava/lang/String;
.field private mThumbnailPath:Ljava/lang/String;
.field private mUploadPath:Ljava/lang/String;
.field private mVideoPath:Ljava/lang/String;
.field private mVideoPlayer:Lco/vine/android/player/SdkVideoView;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x4
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
return-void
nop
:array_a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/RecordingPreviewFragment;)I
.registers 2
iget v0, p0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
return v0
.end method
.method static synthetic access$002(Lco/vine/android/RecordingPreviewFragment;I)I
.registers 2
iput p1, p0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
return p1
.end method
.method static synthetic access$100()[I
.registers 1
sget-object v0, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/RecordingPreviewFragment;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/RecordingPreviewFragment;->updateMessageLoopLimit()V
return-void
.end method
.method private animateInViews()V
.registers 7
const-wide/16 v4, 0xfa
const/4 v3, 0x0
const/high16 v2, 0x3f80
const/4 v1, 0x0
iget-boolean v0, p0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
if-nez v0, :cond_25
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_25
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
return-void
.end method
.method private animateOutViews()V
.registers 5
const-wide/16 v2, 0xfa
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
return-void
.end method
.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJZILjava/lang/String;ZZ)Lco/vine/android/RecordingPreviewFragment;
.registers 16
new-instance v1, Lco/vine/android/RecordingPreviewFragment;
invoke-direct {v1}, Lco/vine/android/RecordingPreviewFragment;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "video_path"
invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "pic_path"
invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "upload_path"
invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "messaging"
invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v2, "conversation_row_id"
invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "direct_user_id"
invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "f_s"
invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v2, "color"
invoke-virtual {v0, v2, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "recipient_username"
invoke-virtual {v0, v2, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "am_following"
invoke-virtual {v0, v2, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v2, "is_vm_onboarding"
invoke-virtual {v0, v2, p12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v1, v0}, Lco/vine/android/RecordingPreviewFragment;->setArguments(Landroid/os/Bundle;)V
return-object v1
.end method
.method private updateMessageLoopLimit()V
.registers 5
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
if-eqz v0, :cond_26
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Loop Limit: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v0, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
iget v3, p0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
aget v0, v0, v3
if-nez v0, :cond_27
const-string v0, "Infinite"
:goto_1b
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:cond_26
return-void
:cond_27
sget-object v0, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
iget v3, p0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
aget v0, v0, v3
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_1b
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->deletePreProcess(Ljava/io/File;)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
const-string v0, "Preview: {}"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 5
sparse-switch p1, :sswitch_data_1c
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_6
return-void
:sswitch_7
packed-switch p2, :pswitch_data_26
goto :goto_6
:pswitch_b
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->uploadAndToPost()V
goto :goto_6
:sswitch_f
packed-switch p2, :pswitch_data_2c
goto :goto_6
:pswitch_13
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_6
nop
:pswitch_data_26
.packed-switch -0x1
:pswitch_b
.end packed-switch
:sswitch_data_1c
.sparse-switch
0x7c6 -> :sswitch_f
0x3039 -> :sswitch_7
.end sparse-switch
:pswitch_data_2c
.packed-switch 0x20
:pswitch_13
.end packed-switch
.end method
.method public onClick(Landroid/view/View;)V
.registers 26
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/RecordingPreviewFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v18
check-cast v18, Lco/vine/android/AbstractRecordingActivity;
if-nez v18, :cond_9
:goto_8
:cond_8
const-string v1, " - Lco/vine/android/RecordingPreviewFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
if-nez v2, :cond_17
invoke-virtual/range {v18 .. v18}, Lco/vine/android/AbstractRecordingActivity;->makeSureUploadIsReady()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
:cond_17
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I
move-result v20
packed-switch v20, :pswitch_data_178
:pswitch_1e
goto :goto_8
:pswitch_1f
invoke-direct/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->animateOutViews()V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
check-cast v2, Lco/vine/android/AbstractRecordingActivity;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2, v4}, Lco/vine/android/RecordingPreviewFragment;->previewToRecord(Lco/vine/android/AbstractRecordingActivity;Z)V
const-string v2, "capture"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackPreviewAction(Ljava/lang/String;)V
goto :goto_8
:pswitch_34
invoke-static/range {v18 .. v18}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/client/AppController;->isLoggedIn()Z
move-result v2
if-nez v2, :cond_73
const/4 v2, 0x1
invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v22
const v2, 0x7f0e0207
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v2, 0x104000a
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const/high16 v2, 0x104
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
const/4 v2, 0x0
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-virtual {v0, v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto :goto_8
:cond_73
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->toPost()V
const-string v2, "post"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackPreviewAction(Ljava/lang/String;)V
goto :goto_8
:pswitch_7c
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingEditText:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v23
if-eqz v23, :cond_dc
invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
:goto_8a
move-object/from16 v0, p0
iget-boolean v2, v0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
if-eqz v2, :cond_8
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/RecordingPreviewFragment;->mDirectUserId:J
const-wide/16 v6, 0x0
cmp-long v2, v4, v6
if-gez v2, :cond_df
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
const-wide/16 v6, 0x0
cmp-long v2, v4, v6
if-gez v2, :cond_df
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
sget-object v7, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
move-object/from16 v0, p0
iget v8, v0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
aget v7, v7, v8
move-object/from16 v0, p0
iget-boolean v8, v0, Lco/vine/android/RecordingPreviewFragment;->mIsVmOnboarding:Z
invoke-static/range {v2 .. v8}, Lco/vine/android/RecipientPickerActivity;->getIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;
move-result-object v21
const/16 v2, 0x7c7
move-object/from16 v0, v18
move-object/from16 v1, v21
invoke-virtual {v0, v1, v2}, Lco/vine/android/AbstractRecordingActivity;->startActivityForResult(Landroid/content/Intent;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lco/vine/android/service/VineUploadService;->getShowProgressIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v2
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Lco/vine/android/AbstractRecordingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto/16 :goto_8
:cond_dc
const-string v3, ""
goto :goto_8a
:cond_df
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/RecordingPreviewFragment;->mDirectUserId:J
const-wide/16 v6, 0x0
cmp-long v2, v4, v6
if-ltz v2, :cond_154
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/RecordingPreviewFragment;->mDirectUserId:J
invoke-static {v4, v5}, Lco/vine/android/api/VineRecipient;->fromUser(J)Lco/vine/android/api/VineRecipient;
move-result-object v2
invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_f9
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
const/4 v6, 0x0
move-object/from16 v0, p0
iget-wide v7, v0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
sget-object v2, Lco/vine/android/RecordingPreviewFragment;->VALID_MAX_LOOPS:[I
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
aget v11, v2, v4
move-object/from16 v4, v18
move-object v10, v3
invoke-static/range {v4 .. v11}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/ArrayList;Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v2
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Lco/vine/android/AbstractRecordingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
invoke-static/range {v18 .. v18}, Lco/vine/android/service/VineUploadService;->getShowProgressIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v2
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Lco/vine/android/AbstractRecordingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
invoke-virtual/range {v18 .. v18}, Lco/vine/android/AbstractRecordingActivity;->startConversationOnFinish()Z
move-result v2
if-eqz v2, :cond_14f
invoke-virtual/range {v18 .. v18}, Lco/vine/android/AbstractRecordingActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v10
move-object/from16 v0, p0
iget-wide v11, v0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/RecordingPreviewFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v0, p0
iget-wide v14, v0, Lco/vine/android/RecordingPreviewFragment;->mDirectUserId:J
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingPreviewFragment;->mAmFollowing:Z
move/from16 v16, v0
const/16 v17, 0x0
invoke-static/range {v10 .. v17}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;
move-result-object v19
const/high16 v2, 0x400
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/RecordingPreviewFragment;->startActivity(Landroid/content/Intent;)V
:cond_14f
invoke-virtual/range {v18 .. v18}, Lco/vine/android/AbstractRecordingActivity;->finish()V
goto/16 :goto_8
:cond_154
invoke-virtual/range {v18 .. v18}, Lco/vine/android/AbstractRecordingActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
invoke-static {v2, v4, v5}, Lco/vine/android/provider/VineProviderHelper;->getConversationRecipients(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
move-result-object v9
goto :goto_f9
:pswitch_161
invoke-direct/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->animateOutViews()V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
check-cast v2, Lco/vine/android/AbstractRecordingActivity;
const/4 v4, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v2, v4}, Lco/vine/android/RecordingPreviewFragment;->previewToRecord(Lco/vine/android/AbstractRecordingActivity;Z)V
const-string v2, "edit"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackPreviewAction(Ljava/lang/String;)V
goto/16 :goto_8
nop
:pswitch_data_178
.packed-switch 0x7f0a017c
:pswitch_1f
:pswitch_161
:pswitch_1e
:pswitch_1f
:pswitch_7c
:pswitch_1e
:pswitch_34
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/RecordingPreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v3, -0x1
invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "video_path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
const-string v1, "pic_path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;
const-string v1, "upload_path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
const-string v1, "messaging"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
const-string v1, "recipient_username"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mRecipientUsername:Ljava/lang/String;
const-string v1, "am_following"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingPreviewFragment;->mAmFollowing:Z
const-string v1, "direct_user_id"
invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lco/vine/android/RecordingPreviewFragment;->mDirectUserId:J
const-string v1, "f_s"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingPreviewFragment;->mIsFromSony:Z
const-string v1, "color"
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
iget v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v1, v2, :cond_64
iget v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
if-gtz v1, :cond_75
:cond_64
const v1, 0xffffff
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090096
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
and-int/2addr v1, v2
iput v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
:cond_75
iget v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
const/high16 v2, -0x100
or-int/2addr v1, v2
iput v1, p0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
const-string v1, "is_vm_onboarding"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingPreviewFragment;->mIsVmOnboarding:Z
const-string v1, " - Lco/vine/android/RecordingPreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getResources()Landroid/content/res/Resources;
move-result-object v14
const v22, 0x7f030072
const/16 v23, 0x0
move-object/from16 v0, p1
move/from16 v1, v22
move-object/from16 v2, p2
move/from16 v3, v23
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v22
invoke-static/range {v22 .. v22}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v16
const v22, 0x7f0a0179
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
check-cast v22, Landroid/widget/EditText;
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mMessagingEditText:Landroid/widget/EditText;
const v22, 0x7f0a017a
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
check-cast v22, Landroid/widget/Button;
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
const v22, 0x7f0a0182
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
move/from16 v22, v0
if-eqz v22, :cond_266
const/16 v22, 0x0
move/from16 v0, v22
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
invoke-direct/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->updateMessageLoopLimit()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
move-object/from16 v22, v0
if-eqz v22, :cond_8c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
move-object/from16 v22, v0
new-instance v23, Lco/vine/android/RecordingPreviewFragment$1;
move-object/from16 v0, v23
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecordingPreviewFragment$1;-><init>(Lco/vine/android/RecordingPreviewFragment;)V
invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
move-object/from16 v22, v0
const/16 v23, 0x8
invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V
:cond_8c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingEditText:Landroid/widget/EditText;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setVisibility(I)V
const v22, 0x7f0a017e
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v22, v0
new-instance v23, Lco/vine/android/RecordingPreviewFragment$2;
move-object/from16 v0, v23
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecordingPreviewFragment$2;-><init>(Lco/vine/android/RecordingPreviewFragment;)V
invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v22, 0x7f090025
move/from16 v0, v22
invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v20
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v22, v0
move-object/from16 v0, v22
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundColor(I)V
const v22, 0x7f0a00e0
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v15
move/from16 v0, v20
invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundColor(I)V
const v22, 0x7f0a0181
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v12
check-cast v12, Lco/vine/android/widget/TypefacesTextView;
const/16 v22, 0x3
move/from16 v0, v22
invoke-virtual {v12, v0}, Lco/vine/android/widget/TypefacesTextView;->setWeight(I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v22
invoke-static/range {v22 .. v22}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v22
move-object/from16 v0, v22
iget-object v0, v0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v12, v0}, Lco/vine/android/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;)V
const/16 v22, 0x0
move/from16 v0, v22
invoke-virtual {v12, v0}, Lco/vine/android/widget/TypefacesTextView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v22, v0
invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v22
if-nez v22, :cond_133
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v12, v0}, Lco/vine/android/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V
:cond_133
:goto_133
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
move-object/from16 v22, v0
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v22, 0x7f0a017c
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v22, 0x7f0a017d
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v22, 0x7f0a0180
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
move/from16 v22, v0
if-eqz v22, :cond_189
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
move/from16 v22, v0
move/from16 v0, v22
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V
:cond_189
const v22, 0x7f0a017f
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
move-object/from16 v0, p0
invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
move/from16 v22, v0
if-eqz v22, :cond_1b1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingPreviewFragment;->mColor:I
move/from16 v22, v0
const v23, 0x7f02014c
move/from16 v0, v22
move/from16 v1, v23
invoke-static {v14, v0, v1, v4}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
:cond_1b1
const v22, 0x7f0a0178
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
check-cast v22, Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v22, v0
const/16 v23, 0x1
invoke-virtual/range {v22 .. v23}, Lco/vine/android/player/SdkVideoView;->setAutoPlayOnPrepared(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v22, v0
const/16 v23, 0x1
invoke-virtual/range {v22 .. v23}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V
const v22, 0x7f0a00d6
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v18
const v22, 0x7f0b001c
move/from16 v0, v22
invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v17
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v22, v0
check-cast v22, Lco/vine/android/player/StaticSizeVideoView;
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v23, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v24, v0
invoke-virtual/range {v22 .. v24}, Lco/vine/android/player/StaticSizeVideoView;->setSize(II)V
new-instance v22, Lco/vine/android/player/OnSingleVideoClickedListener;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v23, v0
invoke-direct/range {v22 .. v23}, Lco/vine/android/player/OnSingleVideoClickedListener;-><init>(Lco/vine/android/player/VideoViewInterface;)V
move-object/from16 v0, v18
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v22, v0
const/16 v23, 0x1
invoke-virtual/range {v22 .. v23}, Lco/vine/android/player/SdkVideoView;->setLooping(Z)V
new-instance v13, Landroid/graphics/Rect;
invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
const/16 v22, 0x10
invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setSoftInputMode(I)V
const v22, 0x7f0a00a3
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
move/from16 v22, v0
if-eqz v22, :cond_2b7
const/16 v22, 0x8
move/from16 v0, v22
invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V
:goto_262
invoke-direct/range {p0 .. p0}, Lco/vine/android/RecordingPreviewFragment;->animateInViews()V
return-object v19
:cond_266
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingLoopLimitText:Landroid/widget/Button;
move-object/from16 v22, v0
const/16 v23, 0x8
invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mMessagingEditText:Landroid/widget/EditText;
move-object/from16 v22, v0
const/16 v23, 0x8
invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setVisibility(I)V
const v22, 0x7f0a017b
move-object/from16 v0, v19
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mPreviewButtons:Landroid/view/View;
move-object/from16 v22, v0
new-instance v23, Lco/vine/android/RecordingPreviewFragment$3;
move-object/from16 v0, v23
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecordingPreviewFragment$3;-><init>(Lco/vine/android/RecordingPreviewFragment;)V
invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_133
:cond_2b7
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v11
check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;
const v22, 0x7f0b0061
move/from16 v0, v22
invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v10
iget v0, v13, Landroid/graphics/Rect;->bottom:I
move/from16 v22, v0
iget v0, v13, Landroid/graphics/Rect;->top:I
move/from16 v23, v0
sub-int v22, v22, v23
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v23, v0
sub-int v22, v22, v23
sub-int v22, v22, v17
sub-int v22, v22, v10
div-int/lit8 v7, v22, 0x2
const/16 v22, 0x0
const/16 v23, 0x0
const/16 v24, 0x0
move/from16 v0, v22
move/from16 v1, v23
move/from16 v2, v24
invoke-virtual {v11, v0, v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingPreviewFragment;->mNextButton:Landroid/view/View;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget v0, v13, Landroid/graphics/Rect;->bottom:I
move/from16 v22, v0
iget v0, v13, Landroid/graphics/Rect;->top:I
move/from16 v23, v0
sub-int v22, v22, v23
sub-int v22, v22, v17
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v23, v0
sub-int v6, v22, v23
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;
iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I
invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v22, Lco/vine/android/RecordingPreviewFragment$4;
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecordingPreviewFragment$4;-><init>(Lco/vine/android/RecordingPreviewFragment;)V
move-object/from16 v0, v22
invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto/16 :goto_262
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/RecordingPreviewFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mFinalFile:Lco/vine/android/recorder/RecordingFile;
const-string v1, " - Lco/vine/android/RecordingPreviewFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 8
packed-switch p2, :pswitch_data_20
:goto_3
return-void
:pswitch_4
packed-switch p3, :pswitch_data_26
goto :goto_3
:pswitch_8
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v2, Lco/vine/android/SonyStartActivity;
invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "login_request_start_activity"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/16 v2, 0x3039
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_3
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_4
.end packed-switch
:pswitch_data_26
.packed-switch -0x1
:pswitch_8
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/RecordingPreviewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->canPause()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
:cond_10
const-string v1, " - Lco/vine/android/RecordingPreviewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/RecordingPreviewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V
invoke-direct {p0}, Lco/vine/android/RecordingPreviewFragment;->animateInViews()V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
iget v0, v0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
const/4 v1, 0x7
if-ne v0, v1, :cond_12
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V
:cond_12
const-string v1, " - Lco/vine/android/RecordingPreviewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public previewToRecord(Lco/vine/android/AbstractRecordingActivity;Z)V
.registers 5
if-eqz p1, :cond_8
const/4 v0, 0x0
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mFinalFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {p1, v0, p2, v1}, Lco/vine/android/AbstractRecordingActivity;->toRecord(ZZLco/vine/android/recorder/RecordingFile;)V
:cond_8
return-void
.end method
.method public setFinalFile(Lco/vine/android/recorder/RecordingFile;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingPreviewFragment;->mFinalFile:Lco/vine/android/recorder/RecordingFile;
return-void
.end method
.method public toPost()V
.registers 9
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
check-cast v6, Lco/vine/android/AbstractRecordingActivity;
if-nez v6, :cond_9
:goto_8
return-void
:cond_9
invoke-static {}, Lco/vine/android/util/BuildUtil;->isIsHwEncodingEnabled()Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {v6}, Lco/vine/android/AbstractRecordingActivity;->makeSureUploadIsReady()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
:cond_15
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
const/4 v4, 0x0
iget-boolean v5, p0, Lco/vine/android/RecordingPreviewFragment;->mIsFromSony:Z
invoke-static/range {v0 .. v5}, Lco/vine/android/PostActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
move-result-object v7
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/16 v1, 0x7c6
invoke-virtual {v0, v7, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_8
.end method
.method public uploadAndToPost()V
.registers 9
:try_start_0
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/AbstractRecordingActivity;
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-static {}, Lco/vine/android/util/BuildUtil;->isIsHwEncodingEnabled()Z
move-result v1
if-eqz v1, :cond_12
invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->makeSureUploadIsReady()Ljava/lang/String;
:cond_12
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mFinalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mFinalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v3, v3, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
iget-boolean v4, p0, Lco/vine/android/RecordingPreviewFragment;->mIsMessaging:Z
iget-wide v5, p0, Lco/vine/android/RecordingPreviewFragment;->mConversationRowId:J
invoke-static/range {v0 .. v6}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->toPost()V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c
goto :goto_8
:catch_2c
move-exception v7
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_8
.end method