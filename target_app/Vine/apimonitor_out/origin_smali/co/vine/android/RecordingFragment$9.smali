.class Lco/vine/android/RecordingFragment$9;
.super Ljava/lang/Object;
.source "RecordingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingFragment;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$switchCameraButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/RecordingFragment$9;->this$0:Lco/vine/android/RecordingFragment;

    iput-object p2, p0, Lco/vine/android/RecordingFragment$9;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lco/vine/android/RecordingFragment$9;->val$switchCameraButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const v3, 0x7f020188

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    :goto_a
    const/4 v0, 0x0

    return v0

    :pswitch_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    goto :goto_a

    :pswitch_14
    iget-object v0, p0, Lco/vine/android/RecordingFragment$9;->val$res:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/vine/android/RecordingFragment$9;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mColor:I
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/RecordingFragment$9;->val$switchCameraButton:Landroid/view/View;

    invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$9;->val$switchCameraButton:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    :pswitch_29
    iget-object v0, p0, Lco/vine/android/RecordingFragment$9;->val$res:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/vine/android/RecordingFragment$9;->this$0:Lco/vine/android/RecordingFragment;

    #getter for: Lco/vine/android/RecordingFragment;->mColor:I
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/RecordingFragment$9;->val$switchCameraButton:Landroid/view/View;

    invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    iget-object v0, p0, Lco/vine/android/RecordingFragment$9;->val$switchCameraButton:Landroid/view/View;

    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    nop

    :pswitch_data_40
    .packed-switch 0x7f0a01c0
        :pswitch_c
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_14
        :pswitch_29
    .end packed-switch
.end method
