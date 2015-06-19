.class Lco/vine/android/ConversationAdapter$7;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConversationAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$vpm:Lco/vine/android/api/VinePrivateMessage;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/api/VinePrivateMessage;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$7;->this$0:Lco/vine/android/ConversationAdapter;

    iput-object p2, p0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iput-object p3, p0, Lco/vine/android/ConversationAdapter$7;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/ConversationAdapter$7;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lco/vine/android/ConversationAdapter;->access$1200(Lco/vine/android/ConversationAdapter;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/ConversationAdapter$7;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lco/vine/android/ConversationAdapter;->access$1100(Lco/vine/android/ConversationAdapter;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-object v2, v2, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-wide v4, v4, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-wide v6, v6, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-object v9, v9, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-wide v10, v10, Lco/vine/android/api/VinePrivateMessage;->postId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-object v12, v12, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget-object v13, v13, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/ConversationAdapter$7;->val$vpm:Lco/vine/android/api/VinePrivateMessage;

    iget v14, v14, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I

    invoke-static/range {v1 .. v14}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/ConversationAdapter$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    const v1, 0x7f0a013e

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-nez v16, :cond_65

    const v1, 0x7f0a0143

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    :cond_65
    if-eqz v16, :cond_75

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/ConversationAdapter$7;->val$v:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_75
    return-void
.end method
