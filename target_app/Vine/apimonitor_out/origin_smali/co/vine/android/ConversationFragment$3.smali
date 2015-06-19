.class Lco/vine/android/ConversationFragment$3;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConversationFragment;->onResume()V
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

    iput-object p1, p0, Lco/vine/android/ConversationFragment$3;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationFragment$3;->this$0:Lco/vine/android/ConversationFragment;

    #calls: Lco/vine/android/ConversationFragment;->toggleInput()V
    invoke-static {v0}, Lco/vine/android/ConversationFragment;->access$600(Lco/vine/android/ConversationFragment;)V

    return-void
.end method
