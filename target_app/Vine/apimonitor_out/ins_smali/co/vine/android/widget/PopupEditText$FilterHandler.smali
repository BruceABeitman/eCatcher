.class  Lco/vine/android/widget/PopupEditText$FilterHandler;
.super Landroid/os/Handler;
.source "PopupEditText.java"
.field private mFilterable:Landroid/widget/Filterable;
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
.field private mOnFilterListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.method public constructor <init>(Landroid/os/Looper;Landroid/widget/Filter$FilterListener;)V
.registers 4
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mListenerRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mListenerRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/Filter$FilterListener;
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mFilterable:Landroid/widget/Filterable;
if-eqz v2, :cond_29
if-eqz v0, :cond_29
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/CharSequence;
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mFilterable:Landroid/widget/Filterable;
invoke-interface {v2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;
move-result-object v2
invoke-virtual {v2, v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V
iget v2, p1, Landroid/os/Message;->arg1:I
const/4 v3, 0x1
if-ne v2, v3, :cond_29
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mOnFilterListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
if-eqz v2, :cond_29
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mOnFilterListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
invoke-interface {v2, v1}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->onFiltering(Ljava/lang/CharSequence;)V
:cond_29
return-void
.end method
.method public setFilterable(Landroid/widget/Filterable;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mFilterable:Landroid/widget/Filterable;
return-void
.end method
.method public setOnFilterListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/PopupEditText$FilterHandler;->mOnFilterListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
return-void
.end method