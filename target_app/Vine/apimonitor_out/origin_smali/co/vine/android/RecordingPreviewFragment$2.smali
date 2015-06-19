.class Lco/vine/android/RecordingPreviewFragment$2;
.super Ljava/lang/Object;
.source "RecordingPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingPreviewFragment;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingPreviewFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/RecordingPreviewFragment$2;->this$0:Lco/vine/android/RecordingPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
