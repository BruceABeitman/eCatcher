.class Lco/vine/android/ConversationAdapter$1;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConversationAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;

.field final synthetic val$vpm:Lco/vine/android/api/VinePrivateMessage;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/api/VinePrivateMessage;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$1;->this$0:Lco/vine/android/ConversationAdapter;

    iput-object p2, p0, Lco/vine/android/ConversationAdapter$1;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$1;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;
    invoke-static {v0}, Lco/vine/android/ConversationAdapter;->access$000(Lco/vine/android/ConversationAdapter;)Lco/vine/android/ConversationActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationAdapter$1;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-wide v1, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/ConversationActivity;->showDeleteMessageDialog(J)V

    const/4 v0, 0x1

    return v0
.end method
