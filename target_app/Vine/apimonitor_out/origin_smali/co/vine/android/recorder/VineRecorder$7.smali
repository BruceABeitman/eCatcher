.class Lco/vine/android/recorder/VineRecorder$7;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1200(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)I

    move-result v0

    if-ltz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zoom progress updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1200(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3d
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$7;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->requestZoomProgressUpdate()V

    return-void
.end method
