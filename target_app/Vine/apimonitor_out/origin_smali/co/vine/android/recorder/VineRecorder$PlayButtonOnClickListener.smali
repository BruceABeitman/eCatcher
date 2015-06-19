.class Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayButtonOnClickListener"
.end annotation


# instance fields
.field forceRefresh:Z

.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;

.field toPlay:Lco/vine/android/recorder/RecordSegment;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;

    if-nez v0, :cond_21

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #setter for: Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$4402(Lco/vine/android/recorder/VineRecorder;I)I

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setSelection(I)V

    :cond_1b
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x2

    #calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V

    :cond_21
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;

    iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->playPreview(Lco/vine/android/recorder/RecordSegment;Z)V

    return-void
.end method
