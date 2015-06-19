.class Lco/vine/android/RecordingFragment$14;
.super Ljava/lang/Object;
.source "RecordingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingFragment;->saveSessionAndQuit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingFragment;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/RecordingFragment$14;->this$0:Lco/vine/android/RecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v1, p0, Lco/vine/android/RecordingFragment$14;->this$0:Lco/vine/android/RecordingFragment;

    invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_b
    return-void
.end method
