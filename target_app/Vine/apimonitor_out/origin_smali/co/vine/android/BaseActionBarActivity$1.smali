.class Lco/vine/android/BaseActionBarActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActionBarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/BaseActionBarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/BaseActionBarActivity;


# direct methods
.method constructor <init>(Lco/vine/android/BaseActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/BaseActionBarActivity$1;->this$0:Lco/vine/android/BaseActionBarActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_13

    const-string v0, "co.vine.android.FINISH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity$1;->this$0:Lco/vine/android/BaseActionBarActivity;

    invoke-virtual {v0}, Lco/vine/android/BaseActionBarActivity;->finish()V

    :cond_13
    return-void
.end method
