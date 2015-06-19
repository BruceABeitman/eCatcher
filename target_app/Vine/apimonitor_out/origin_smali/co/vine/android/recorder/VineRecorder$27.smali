.class Lco/vine/android/recorder/VineRecorder$27;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
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

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3500(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->returnToPreview(Z)V
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$3800(Lco/vine/android/recorder/VineRecorder;Z)V

    :goto_e
    return-void

    :cond_f
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4300(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mEditing:Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4000(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_20
    invoke-virtual {v2, v3, v0, v1}, Lco/vine/android/recorder/VineRecorder;->setEditMode(Landroid/view/View;ZZ)V

    goto :goto_e

    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method
