.class Lco/vine/android/AbstractRecordingActivity$10$1$2;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity$10$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/vine/android/AbstractRecordingActivity$10$1;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity$10$1;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$10$1$2;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1$2;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-boolean v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->val$goToCamera:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1$2;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1200(Lco/vine/android/AbstractRecordingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1$2;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method
