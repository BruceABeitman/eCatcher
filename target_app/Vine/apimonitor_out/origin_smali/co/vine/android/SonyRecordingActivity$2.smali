.class Lco/vine/android/SonyRecordingActivity$2;
.super Ljava/lang/Object;
.source "SonyRecordingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyFilterColor:I
    invoke-static {v1}, Lco/vine/android/SonyRecordingActivity;->access$300(Lco/vine/android/SonyRecordingActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_24
    const/4 v0, 0x1

    return v0

    :cond_26
    iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$2;->this$0:Lco/vine/android/SonyRecordingActivity;

    #getter for: Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_24
.end method
