.class Lco/vine/android/AbstractRecordingActivity$14;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "AbstractRecordingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity;->handleDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;

.field final synthetic val$animator:Lco/vine/android/animation/MoveResizeAnimator;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/animation/MoveResizeAnimator;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$14;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iput-object p2, p0, Lco/vine/android/AbstractRecordingActivity$14;->val$animator:Lco/vine/android/animation/MoveResizeAnimator;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$14;->val$animator:Lco/vine/android/animation/MoveResizeAnimator;

    invoke-virtual {v0}, Lco/vine/android/animation/MoveResizeAnimator;->start()V

    return-void
.end method
