.class Lco/vine/android/ImageFragment$ImageSessionListener$1;
.super Ljava/lang/Object;
.source "ImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ImageFragment$ImageSessionListener;->finishFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/ImageFragment$ImageSessionListener;


# direct methods
.method constructor <init>(Lco/vine/android/ImageFragment$ImageSessionListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ImageFragment$ImageSessionListener$1;->this$1:Lco/vine/android/ImageFragment$ImageSessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ImageFragment$ImageSessionListener$1;->this$1:Lco/vine/android/ImageFragment$ImageSessionListener;

    iget-object v0, v0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;

    invoke-virtual {v0}, Lco/vine/android/ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0119

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lco/vine/android/ImageFragment$ImageSessionListener$1;->this$1:Lco/vine/android/ImageFragment$ImageSessionListener;

    iget-object v0, v0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;

    invoke-virtual {v0}, Lco/vine/android/ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
