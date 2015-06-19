.class Lco/vine/android/SonyRecordingActivity$1;
.super Ljava/lang/Object;
.source "SonyRecordingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/SonyRecordingActivity;->setupSonyOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SonyRecordingActivity;


# direct methods
.method constructor <init>(Lco/vine/android/SonyRecordingActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
    invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    iget-object v0, v2, Lco/vine/android/SonyRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditing()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isSessionModified()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    #calls: Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V
    invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$100(Lco/vine/android/SonyRecordingActivity;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditingDirty()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->discardEditing()V

    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    #calls: Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V
    invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$100(Lco/vine/android/SonyRecordingActivity;)V

    goto :goto_24

    :cond_36
    iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lco/vine/android/SonyRecordingActivity;->showUnSavedChangesDialog(ILco/vine/android/RecordingFragment;)V

    goto :goto_24
.end method
