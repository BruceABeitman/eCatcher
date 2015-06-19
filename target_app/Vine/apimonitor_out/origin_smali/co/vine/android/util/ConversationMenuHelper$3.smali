.class Lco/vine/android/util/ConversationMenuHelper$3;
.super Ljava/lang/Object;
.source "ConversationMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/util/ConversationMenuHelper;->showVmOnboardingAfterSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;

.field final synthetic val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;


# direct methods
.method constructor <init>(Lco/vine/android/util/ConversationMenuHelper;Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;

    iput-object p2, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;

    #getter for: Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$200(Lco/vine/android/util/ConversationMenuHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;

    #getter for: Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$200(Lco/vine/android/util/ConversationMenuHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
