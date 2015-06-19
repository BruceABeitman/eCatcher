.class public Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;
.super Lco/vine/android/PendingRequestHelper;
.source "BaseAdapterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/BaseAdapterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BasePendingRequestHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/BaseAdapterFragment;


# direct methods
.method protected constructor <init>(Lco/vine/android/BaseAdapterFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;->this$0:Lco/vine/android/BaseAdapterFragment;

    invoke-direct {p0}, Lco/vine/android/PendingRequestHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public hideProgress(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;->this$0:Lco/vine/android/BaseAdapterFragment;

    invoke-virtual {v0, p1}, Lco/vine/android/BaseAdapterFragment;->hideProgress(I)V

    return-void
.end method

.method public showProgress(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;->this$0:Lco/vine/android/BaseAdapterFragment;

    invoke-virtual {v0, p1}, Lco/vine/android/BaseAdapterFragment;->showProgress(I)V

    return-void
.end method
