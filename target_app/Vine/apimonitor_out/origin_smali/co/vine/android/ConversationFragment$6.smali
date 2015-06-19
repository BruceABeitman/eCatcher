.class Lco/vine/android/ConversationFragment$6;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lco/vine/android/ConversationFragment$6;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ConversationFragment$6;->this$0:Lco/vine/android/ConversationFragment;

    invoke-virtual {v0}, Lco/vine/android/ConversationFragment;->launchFullRecord()V

    return-void
.end method
