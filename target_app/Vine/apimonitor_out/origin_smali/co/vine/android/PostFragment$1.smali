.class Lco/vine/android/PostFragment$1;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/PostFragment;->post()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/PostFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lco/vine/android/PostFragment;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/PostFragment$1;->this$0:Lco/vine/android/PostFragment;

    iput-object p2, p0, Lco/vine/android/PostFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/PostFragment$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/vine/android/PostFragment$1;->val$activity:Landroid/app/Activity;

    const-class v3, Lco/vine/android/SonyLaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lco/vine/android/PostFragment$1;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lco/vine/android/PostFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
