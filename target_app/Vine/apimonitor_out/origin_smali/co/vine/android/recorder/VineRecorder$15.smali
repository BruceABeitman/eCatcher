.class Lco/vine/android/recorder/VineRecorder$15;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->showTimeLapseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;

    iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$15;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setAudioTrim(Z)V

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$15;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->startTimeLapse(D)V

    :cond_21
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
