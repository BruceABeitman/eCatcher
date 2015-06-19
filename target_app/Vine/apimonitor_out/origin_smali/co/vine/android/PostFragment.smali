.class public Lco/vine/android/PostFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "PostFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;
.implements Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/PostFragment$PostSessionListener;
    }
.end annotation


# static fields
.field private static final AG_FROM_SONY:Ljava/lang/String; = "f_s"

.field private static final AG_IS_RETRY:Ljava/lang/String; = "is_retry"

.field private static final AG_PREVIEW_PATH:Ljava/lang/String; = "preview_path"

.field private static final AG_THUMBNAIL_PATH:Ljava/lang/String; = "pic_path"

.field private static final AG_VIDEO_PATH:Ljava/lang/String; = "vid_path"

.field private static final MAX_CHARS:I = 0x78

.field private static final POSTING_DIALOG_DELAY:I = 0x2ee

.field public static final REQUEST_CODE_ADD_TO_CHANNEL:I = 0x3

.field public static final RESULT_FINISH:I = 0x20

.field public static final RESULT_SAVED:I = 0x1f

.field private static final STATE_CHANNEL:Ljava/lang/String; = "channel"

.field private static mToastLengthExceeded:Landroid/widget/Toast;


# instance fields
.field private mAddToChannel:Landroid/view/View;

.field private mAddToChannelIcon:Landroid/widget/ImageView;

.field private mAddToChannelText:Landroid/widget/TextView;

.field private mCaption:Lco/vine/android/widget/PopupEditText;

.field private mChannelId:J

.field private mFilter:Landroid/widget/Filter;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mIsFromSony:Z

.field private mIsRetry:Z

.field private mPostFacebook:Lco/vine/android/views/SwitchInterface;

.field private mPostToFacebookText:Landroid/widget/TextView;

.field private mPostToTwitterText:Landroid/widget/TextView;

.field private mPostTwitter:Lco/vine/android/views/SwitchInterface;

.field private mPostVine:Lco/vine/android/views/SwitchInterface;

.field private mPreviewPath:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

.field private mTokenizer:Lco/vine/android/ComposeTokenizer;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/PostFragment;)Lco/vine/android/views/SwitchInterface;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/PostFragment;)Lco/vine/android/views/SwitchInterface;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/PostFragment;)Lco/vine/android/widget/PopupEditText;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/PostFragment;)Lco/vine/android/UsersAutoCompleteAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    return-object v0
.end method

.method private captionLength()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private insertText(Ljava/lang/String;)V
    .registers 5

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2b

    if-ltz v1, :cond_2b

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->length()I

    move-result v2

    if-gt v0, v2, :cond_2b

    iget-object v2, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2b
    return-void
.end method

.method private post()Z
    .registers 18

    invoke-direct/range {p0 .. p0}, Lco/vine/android/PostFragment;->captionLength()I

    move-result v2

    const/16 v3, 0x78

    if-gt v2, v3, :cond_132

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v2, :cond_ef

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    :goto_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/PostFragment;->saveToCameraRoll(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v2}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f9

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    if-eqz v16, :cond_f5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v4}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lco/vine/android/PostFragment;->mChannelId:J

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lco/vine/android/PostFragment;->mIsRetry:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v9}, Lco/vine/android/widget/PopupEditText;->getEntities()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZJZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->getShowProgressIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v2}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackPost(Z)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackPostTier(Ljava/lang/String;)V

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    :try_start_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v2}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b5

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v2, :cond_106

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "Session Completed."

    invoke-static {v2, v3}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V

    :goto_ac
    const-string v2, "Session folder deleted: {}."

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_b5} :catch_117

    :cond_b5
    :goto_b5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lco/vine/android/PostFragment;->mIsFromSony:Z

    if-eqz v2, :cond_11e

    new-instance v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    const v3, 0x7f0e020b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lco/vine/android/PostFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Lco/vine/android/PostFragment$1;-><init>(Lco/vine/android/PostFragment;Landroid/app/Activity;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_ed
    const/4 v2, 0x1

    :goto_ee
    return v2

    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    goto/16 :goto_1e

    :cond_f5
    const-string v3, ""

    goto/16 :goto_37

    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6a

    :cond_106
    :try_start_106
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/recorder/RecordSessionVersion;->deleteSessionWithName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_116} :catch_117

    goto :goto_ac

    :catch_117
    move-exception v15

    const-string v2, "Failed to delete session folder."

    invoke-static {v2, v15}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b5

    :cond_11e
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lco/vine/android/HomeTabActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_ed

    :cond_132
    sget-object v2, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    goto :goto_ee
.end method

.method public static prepareArguments(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 7

    invoke-static {p0}, Lco/vine/android/BaseControllerFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_retry"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "vid_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preview_path"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private saveToCameraRoll(Ljava/lang/String;)V
    .registers 9

    const-string v3, "Saving to camera roll: {}."

    invoke-static {v3, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lco/vine/android/recorder/RecordConfigUtils;->getCameraRollFile(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_22

    const-string v3, "Failed to find directory."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v1, v2}, Lco/vine/android/recorder/RecordConfigUtils;->copySilently(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lco/vine/android/util/MediaUtil;->scanFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_38
    const-string v3, "Renamed to finale position! {}, Scan {}."

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    :cond_42
    const-string v3, "Failed to move {}, file is probably already copied."

    invoke-static {v3, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 4

    iget-object v2, p0, Lco/vine/android/PostFragment;->mFilter:Landroid/widget/Filter;

    if-nez v2, :cond_11

    iget-object v2, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v0

    new-instance v2, Lco/vine/android/ComposeFilter;

    invoke-direct {v2, p0, v0, v1}, Lco/vine/android/ComposeFilter;-><init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;J)V

    iput-object v2, p0, Lco/vine/android/PostFragment;->mFilter:Landroid/widget/Filter;

    :cond_11
    iget-object v2, p0, Lco/vine/android/PostFragment;->mFilter:Landroid/widget/Filter;

    return-object v2
.end method

.method public getPopupAdapter()Landroid/support/v4/widget/CursorAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/PostFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "pic_path"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "vid_path"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    if-nez v6, :cond_21

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Null video path."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_21
    const-string v6, "preview_path"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    const-string v6, "f_s"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lco/vine/android/PostFragment;->mIsFromSony:Z

    :try_start_31
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v6, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31 .. :try_end_3a} :catch_66

    :goto_3a
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v5

    if-eqz v5, :cond_53

    invoke-virtual {v5}, Lco/vine/android/api/VineUpload;->getPostInfo()Lco/vine/android/api/VineUpload$PostInfo;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v6, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    iget-object v7, v3, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lco/vine/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_53
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iget-object v7, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    :catch_66
    move-exception v2

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 21

    packed-switch p1, :pswitch_data_17e

    const-string v3, "Facebook auth came back: {}"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_173

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v14

    if-eqz v14, :cond_166

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v3, v0, v1, v2}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_15c

    invoke-virtual {v14}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    const-string v4, "publish_actions"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v14}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v13, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v13, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0e0120

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    :cond_66
    :goto_66
    return-void

    :pswitch_67
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9f

    const-string v3, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "tk"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "ts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "user_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_66

    :cond_9f
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    goto :goto_66

    :pswitch_a8
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_e0

    const-string v3, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "user_id"

    const-wide/16 v15, 0x0

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_66

    :cond_e0
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    goto/16 :goto_66

    :pswitch_ea
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_66

    const-string v3, "channel_id"

    const-wide/16 v15, -0x1

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "channel"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-lez v3, :cond_66

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAddToChannelText:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-wide v11, v0, Lco/vine/android/PostFragment;->mChannelId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAddToChannelIcon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/util/FlurryUtils;->trackChannelChange(Ljava/lang/String;)V

    goto/16 :goto_66

    :cond_143
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lco/vine/android/PostFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lco/vine/android/PostFragment$2;-><init>(Lco/vine/android/PostFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lco/vine/android/client/AppController;->connectToFacebookPublish(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_66

    :cond_15c
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    goto/16 :goto_66

    :cond_166
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    invoke-super/range {p0 .. p3}, Lco/vine/android/BaseControllerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_66

    :cond_173
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    goto/16 :goto_66

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_a8
        :pswitch_ea
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 13

    const v9, 0x7f09007e

    const v8, 0x7f090061

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_100

    :cond_e
    :goto_e
    return-void

    :sswitch_f
    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, p2}, Lco/vine/android/views/SwitchInterface;->setEnabled(Z)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, p2}, Lco/vine/android/views/SwitchInterface;->setEnabled(Z)V

    if-nez p2, :cond_48

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, v7}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, v7}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_48
    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :sswitch_6b
    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v5

    if-nez v5, :cond_86

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, v7}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    :cond_78
    :sswitch_78
    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5}, Lco/vine/android/views/SwitchInterface;->isChecked()Z

    move-result v5

    if-nez v5, :cond_aa

    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v5, v7}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    goto :goto_e

    :cond_86
    if-eqz p2, :cond_78

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;

    move-result-object v3

    if-nez v3, :cond_9b

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, p0}, Lco/vine/android/client/AppController;->connectToFacebookInitialize(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_e

    :cond_9b
    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    goto/16 :goto_e

    :cond_aa
    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    if-eqz v0, :cond_c6

    if-nez v2, :cond_ed

    :cond_c6
    new-instance v5, Lco/vine/android/VineLoggingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account or AM is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_ed
    const-string v5, "account_t_token"

    invoke-virtual {v2, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    invoke-static {v5, v1}, Lco/vine/android/client/AppController;->startTwitterAuthWithFinish(Lcom/twitter/android/sdk/Twitter;Landroid/app/Activity;)V

    goto/16 :goto_e

    :sswitch_data_100
    .sparse-switch
        0x7f0a016e -> :sswitch_f
        0x7f0a0172 -> :sswitch_78
        0x7f0a0176 -> :sswitch_6b
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_28

    :goto_7
    return-void

    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/ChannelsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "selected_channel"

    iget-wide v2, p0, Lco/vine/android/PostFragment;->mChannelId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :sswitch_23
    invoke-direct {p0}, Lco/vine/android/PostFragment;->post()Z

    goto :goto_7

    nop

    :sswitch_data_28
    .sparse-switch
        0x7f0a0168 -> :sswitch_8
        0x7f0a0177 -> :sswitch_23
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lco/vine/android/PostFragment;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/twitter/android/sdk/Twitter;

    sget-object v1, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    new-instance v0, Lco/vine/android/PostFragment$PostSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/PostFragment$PostSessionListener;-><init>(Lco/vine/android/PostFragment;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_retry"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/PostFragment;->mIsRetry:Z

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0058

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    sget-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    if-nez p1, :cond_5f

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/PostFragment;->mChannelId:J

    :goto_40
    new-instance v0, Lco/vine/android/UsersAutoCompleteAdapter;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2}, Lco/vine/android/UsersAutoCompleteAdapter;-><init>(Landroid/app/Activity;Lco/vine/android/client/AppController;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    new-instance v0, Lco/vine/android/TagsAutoCompleteAdapter;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2}, Lco/vine/android/TagsAutoCompleteAdapter;-><init>(Landroid/app/Activity;Lco/vine/android/client/AppController;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

    iget-object v0, p0, Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-void

    :cond_5f
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/PostFragment;->mChannelId:J

    goto :goto_40
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const v0, 0x7f100013

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v3, 0x7f030071

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0169

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mAddToChannelIcon:Landroid/widget/ImageView;

    const v3, 0x7f0a016a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mAddToChannelText:Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/PostFragment;->mAddToChannel:Landroid/view/View;

    const v3, 0x7f0a016e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lco/vine/android/views/SwitchInterface;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lco/vine/android/views/SwitchInterface;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    const v3, 0x7f0a0176

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lco/vine/android/views/SwitchInterface;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    const v3, 0x7f0a0165

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/PopupEditText;

    iget-object v3, p0, Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    invoke-virtual {v1, v3}, Lco/vine/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lco/vine/android/ComposeTokenizer;

    invoke-direct {v3, p0}, Lco/vine/android/ComposeTokenizer;-><init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    iput-object v3, p0, Lco/vine/android/PostFragment;->mTokenizer:Lco/vine/android/ComposeTokenizer;

    iget-object v3, p0, Lco/vine/android/PostFragment;->mTokenizer:Lco/vine/android/ComposeTokenizer;

    iget-object v4, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getTypeaheadThrottle()J

    move-result-wide v4

    invoke-virtual {v1, v3, p0, v4, v5}, Lco/vine/android/widget/PopupEditText;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V

    invoke-virtual {v1, p0}, Lco/vine/android/widget/PopupEditText;->setPopupEditTextListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    iput-object v1, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    const v3, 0x7f0a0171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    const v3, 0x7f0a0175

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    iget-object v3, p0, Lco/vine/android/PostFragment;->mAddToChannel:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mAddToChannel:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, v7}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, v7}, Lco/vine/android/views/SwitchInterface;->setEnabled(Z)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostVine:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, v6}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, v6}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V

    iget-object v3, p0, Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;

    invoke-interface {v3, p0}, Lco/vine/android/views/SwitchInterface;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0a0177

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onDestroy()V

    invoke-static {}, Lco/vine/android/provider/VineSuggestionsProvider;->clearRealtimeUserSuggestions()V

    invoke-static {}, Lco/vine/android/provider/VineSuggestionsProvider;->clearRealtimeTagSuggestions()V

    return-void
.end method

.method public onFiltering(Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string v4, "mention"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    iget-object v6, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v6, v4}, Lco/vine/android/client/AppController;->getTypeaheadFetchThreshold(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_4d

    const-string v6, "mention"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-static {v2}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeUserSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_64

    :goto_3e
    if-eqz v0, :cond_4d

    const-string v5, "mention"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v2}, Lco/vine/android/client/AppController;->fetchUserTypeahead(Ljava/lang/String;)Ljava/lang/String;

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    const-string v4, "tag"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_61
    const/4 v4, 0x0

    const/4 v2, 0x0

    goto :goto_1e

    :cond_64
    move v0, v5

    goto :goto_3e

    :cond_66
    const-string v6, "tag"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-static {v2}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeTagSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_75

    :goto_74
    goto :goto_3e

    :cond_75
    move v0, v5

    goto :goto_74

    :cond_77
    const/4 v0, 0x0

    goto :goto_3e

    :cond_79
    const-string v5, "tag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v2}, Lco/vine/android/client/AppController;->fetchTagTypeahead(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4d
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :goto_8
    return v0

    :pswitch_9
    iget-object v1, p0, Lco/vine/android/PostFragment;->mAddToChannelText:Landroid/widget/TextView;

    const v2, 0x7f0e0047

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lco/vine/android/PostFragment;->mChannelId:J

    iget-object v1, p0, Lco/vine/android/PostFragment;->mAddToChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string v0, "Channel removed"

    invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackChannelChange(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_22
    .packed-switch 0x7f0a0168
        :pswitch_9
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    invoke-direct {p0}, Lco/vine/android/PostFragment;->post()Z

    move-result v0

    goto :goto_b

    :sswitch_11
    const-string v0, "@"

    invoke-direct {p0, v0}, Lco/vine/android/PostFragment;->insertText(Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x1

    goto :goto_b

    :sswitch_18
    const-string v0, "#"

    invoke-direct {p0, v0}, Lco/vine/android/PostFragment;->insertText(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_data_1e
    .sparse-switch
        0x7f0a023e -> :sswitch_11
        0x7f0a023f -> :sswitch_18
        0x7f0a0251 -> :sswitch_c
    .end sparse-switch
.end method

.method public onPopupItemSelected(IILjava/lang/CharSequence;J)V
    .registers 6

    return-void
.end method

.method public onPopupShown()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "channel"

    iget-wide v1, p0, Lco/vine/android/PostFragment;->mChannelId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setPopupAdapter(Ljava/lang/String;)V
    .registers 4

    const-string v0, "users_adapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    :cond_c
    :goto_c
    iget-object v0, p0, Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_14
    const-string v0, "tags_adapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/PostFragment;->mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    goto :goto_c
.end method
