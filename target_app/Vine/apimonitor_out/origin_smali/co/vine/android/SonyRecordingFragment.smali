.class public Lco/vine/android/SonyRecordingFragment;
.super Lco/vine/android/RecordingFragment;
.source "SonyRecordingFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/RecordingFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/RecordingFragment;->onResume()V

    invoke-virtual {p0}, Lco/vine/android/SonyRecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SonyRecordingActivity;

    invoke-virtual {v0}, Lco/vine/android/SonyRecordingActivity;->setupSonyOverlay()V

    return-void
.end method
