.class  Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SectionAdapter.java"
.field final synthetic this$0:Lco/vine/android/widget/SectionAdapter;
.method constructor <init>(Lco/vine/android/widget/SectionAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;->this$0:Lco/vine/android/widget/SectionAdapter;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;->this$0:Lco/vine/android/widget/SectionAdapter;
iget-boolean v0, v0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;->this$0:Lco/vine/android/widget/SectionAdapter;
invoke-virtual {v0}, Lco/vine/android/widget/SectionAdapter;->notifyDataSetChanged()V
:cond_b
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;->this$0:Lco/vine/android/widget/SectionAdapter;
invoke-virtual {v0}, Lco/vine/android/widget/SectionAdapter;->notifyDataSetInvalidated()V
return-void
.end method