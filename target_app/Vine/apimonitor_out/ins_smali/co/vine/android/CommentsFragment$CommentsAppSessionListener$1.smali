.class  Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;
.super Ljava/lang/Object;
.source "CommentsFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
.field final synthetic val$listView:Landroid/widget/ListView;
.method constructor <init>(Lco/vine/android/CommentsFragment$CommentsAppSessionListener;Landroid/widget/ListView;)V
.registers 3
iput-object p1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;->this$1:Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
iput-object p2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;->val$listView:Landroid/widget/ListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;->val$listView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;->val$listView:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
return-void
.end method