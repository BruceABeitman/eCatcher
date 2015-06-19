.class Lco/vine/android/NotificationSettingsFragment$1;
.super Ljava/lang/Object;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/NotificationSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/NotificationSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$1;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$1;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/NotificationAlertsSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$1;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v1, v0}, Lco/vine/android/NotificationSettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
