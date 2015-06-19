.class Lco/vine/android/AbstractRecordingActivity$6;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;

.field final synthetic val$bottomMask:Landroid/view/View;

.field final synthetic val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$6;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iput-object p2, p0, Lco/vine/android/AbstractRecordingActivity$6;->val$bottomMask:Landroid/view/View;

    iput-object p3, p0, Lco/vine/android/AbstractRecordingActivity$6;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$6;->val$bottomMask:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$6;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
