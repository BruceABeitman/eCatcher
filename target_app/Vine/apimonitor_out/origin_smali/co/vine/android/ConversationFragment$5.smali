.class Lco/vine/android/ConversationFragment$5;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConversationFragment;->showTypingIndicator(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationFragment;

.field final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationFragment;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ConversationFragment$5;->this$0:Lco/vine/android/ConversationFragment;

    iput-object p2, p0, Lco/vine/android/ConversationFragment$5;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ConversationFragment$5;->val$container:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
