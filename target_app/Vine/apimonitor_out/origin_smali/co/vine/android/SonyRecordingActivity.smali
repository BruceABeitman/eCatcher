.class public Lco/vine/android/SonyRecordingActivity;
.super Lco/vine/android/AbstractRecordingActivity;
.source "SonyRecordingActivity.java"


# instance fields
.field private mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

.field private mSonyFilterColor:I

.field private mSonyModeName:Ljava/lang/String;

.field private mSonyModeSelectorButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/SonyRecordingActivity;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V

    return-void
.end method

.method static synthetic access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/SonyRecordingActivity;)I
    .registers 2

    iget v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyFilterColor:I

    return v0
.end method

.method private onHideSonyOverlay()V
    .registers 6

    const/4 v4, 0x0

    const v3, 0x7f0a01be

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01bb

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a00b2

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    if-eqz v0, :cond_20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    if-eqz v1, :cond_25

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method private onShowSonyOverlay()V
    .registers 6

    const/4 v4, 0x4

    const v3, 0x7f0a01be

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01bb

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a00b2

    invoke-virtual {p0, v3}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    if-eqz v0, :cond_20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    if-eqz v1, :cond_25

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method private showSonyOverlay()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->open(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-direct {p0}, Lco/vine/android/SonyRecordingActivity;->onShowSonyOverlay()V

    return-void
.end method


# virtual methods
.method protected createRecordingFragment()Lco/vine/android/RecordingFragment;
    .registers 2

    new-instance v0, Lco/vine/android/SonyRecordingFragment;

    invoke-direct {v0}, Lco/vine/android/SonyRecordingFragment;-><init>()V

    return-object v0
.end method

.method public isFromSony()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lco/vine/android/SonyRecordingActivity;->onHideSonyOverlay()V

    :goto_1a
    return-void

    :cond_1b
    invoke-super {p0}, Lco/vine/android/AbstractRecordingActivity;->onBackPressed()V

    goto :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/AbstractRecordingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/SonyRecordingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/SonyRecordingActivity;->mSonyFilterColor:I

    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeName:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    invoke-super {p0}, Lco/vine/android/AbstractRecordingActivity;->onDestroy()V

    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 5

    packed-switch p2, :pswitch_data_30

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/AbstractRecordingActivity;->onDialogDone(Landroid/content/DialogInterface;II)V

    :goto_6
    return-void

    :pswitch_7
    packed-switch p3, :pswitch_data_36

    invoke-virtual {p0}, Lco/vine/android/SonyRecordingActivity;->currentlyHoldsRecordingFragment()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->saveSession()V

    :cond_17
    invoke-direct {p0}, Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V

    goto :goto_6

    :pswitch_1b
    invoke-virtual {p0}, Lco/vine/android/SonyRecordingActivity;->currentlyHoldsRecordingFragment()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V

    :cond_28
    invoke-virtual {p0}, Lco/vine/android/SonyRecordingActivity;->discardUpload()V

    invoke-direct {p0}, Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V

    goto :goto_6

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    :cond_c
    invoke-super {p0}, Lco/vine/android/AbstractRecordingActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lco/vine/android/AbstractRecordingActivity;->onResume()V

    invoke-virtual {p0}, Lco/vine/android/SonyRecordingActivity;->setupSonyOverlay()V

    return-void
.end method

.method public setupSonyOverlay()V
    .registers 6

    const/4 v4, 0x0

    const v2, 0x7f0a01cd

    invoke-virtual {p0, v2}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a01cb

    invoke-virtual {p0, v2}, Lco/vine/android/SonyRecordingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    new-instance v3, Lco/vine/android/SonyRecordingActivity$1;

    invoke-direct {v3, p0}, Lco/vine/android/SonyRecordingActivity$1;-><init>(Lco/vine/android/SonyRecordingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    new-instance v3, Lco/vine/android/SonyRecordingActivity$2;

    invoke-direct {v3, p0}, Lco/vine/android/SonyRecordingActivity$2;-><init>(Lco/vine/android/SonyRecordingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_35
    new-instance v2, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
    :try_end_3c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_35 .. :try_end_3c} :catch_5a

    :goto_3c
    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    new-instance v3, Lco/vine/android/SonyRecordingActivity$3;

    invoke-direct {v3, p0}, Lco/vine/android/SonyRecordingActivity$3;-><init>(Lco/vine/android/SonyRecordingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeSelectListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;)V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    new-instance v3, Lco/vine/android/SonyRecordingActivity$4;

    invoke-direct {v3, p0}, Lco/vine/android/SonyRecordingActivity$4;-><init>(Lco/vine/android/SonyRecordingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeFinishListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;)V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    :catch_5a
    move-exception v0

    new-instance v2, Lco/vine/android/VineLoggingException;

    const-string v3, "Unable to create Sony Capture Mode selector."

    invoke-direct {v2, v3}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_3c

    :cond_66
    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b
.end method
