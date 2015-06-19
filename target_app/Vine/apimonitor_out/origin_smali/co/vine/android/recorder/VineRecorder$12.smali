.class Lco/vine/android/recorder/VineRecorder$12;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->adjustEditBoundaries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;

.field final synthetic val$thumbListParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$12;->this$0:Lco/vine/android/recorder/VineRecorder;

    iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$12;->val$thumbListParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$12;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$12;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2000(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$12;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$12;->val$thumbListParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method
