.class Lco/vine/android/ConversationFragment$7;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationFragment$7;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConversationFragment$7;->this$0:Lco/vine/android/ConversationFragment;

    invoke-virtual {v0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationFragment$7;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mFullRecordIntent:Landroid/content/Intent;
    invoke-static {v1}, Lco/vine/android/ConversationFragment;->access$1200(Lco/vine/android/ConversationFragment;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7c7

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->startActionOnRecordingAvailable(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method
