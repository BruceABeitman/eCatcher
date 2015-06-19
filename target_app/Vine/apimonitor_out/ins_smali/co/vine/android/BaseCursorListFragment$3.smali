.class  Lco/vine/android/BaseCursorListFragment$3;
.super Ljava/lang/Object;
.source "BaseCursorListFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/BaseCursorListFragment;
.method constructor <init>(Lco/vine/android/BaseCursorListFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseCursorListFragment$3;->this$0:Lco/vine/android/BaseCursorListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseCursorListFragment$3;->this$0:Lco/vine/android/BaseCursorListFragment;
iget-object v0, v0, Lco/vine/android/BaseCursorListFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/BaseCursorListFragment$3;->this$0:Lco/vine/android/BaseCursorListFragment;
iget-object v1, v1, Lco/vine/android/BaseCursorListFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V
return-void
.end method