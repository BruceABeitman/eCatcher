.class public Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/AbstractRecordingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSelectedRunnable"
.end annotation


# instance fields
.field public final fragmentToSetSelectedFalse:Lco/vine/android/DraftFragment;

.field public final fragmentToSetSelectedTrue:Lco/vine/android/DraftFragment;

.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;


# direct methods
.method public constructor <init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/DraftFragment;Lco/vine/android/DraftFragment;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->this$0:Lco/vine/android/AbstractRecordingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedFalse:Lco/vine/android/DraftFragment;

    iput-object p3, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedTrue:Lco/vine/android/DraftFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedFalse:Lco/vine/android/DraftFragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedFalse:Lco/vine/android/DraftFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/DraftFragment;->setSelected(Z)V

    :cond_a
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedTrue:Lco/vine/android/DraftFragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->fragmentToSetSelectedTrue:Lco/vine/android/DraftFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/DraftFragment;->setSelected(Z)V

    :cond_14
    return-void
.end method
