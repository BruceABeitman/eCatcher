.class Lco/vine/android/ConversationFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationFragment.java"


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

    iput-object p1, p0, Lco/vine/android/ConversationFragment$1;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_8
    const-string v1, "Something wrong has happened"

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lco/vine/android/ConversationFragment$1;->this$0:Lco/vine/android/ConversationFragment;

    iget-object v1, v1, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Lco/vine/android/ConversationAdapter;

    invoke-virtual {v1, v0}, Lco/vine/android/ConversationAdapter;->toggleMute(Z)V

    goto :goto_d
.end method
