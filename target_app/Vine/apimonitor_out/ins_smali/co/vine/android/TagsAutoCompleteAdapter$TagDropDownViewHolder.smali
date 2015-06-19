.class  Lco/vine/android/TagsAutoCompleteAdapter$TagDropDownViewHolder;
.super Ljava/lang/Object;
.source "TagsAutoCompleteAdapter.java"
.field public final tagName:Landroid/widget/TextView;
.field final synthetic this$0:Lco/vine/android/TagsAutoCompleteAdapter;
.field public userId:J
.method public constructor <init>(Lco/vine/android/TagsAutoCompleteAdapter;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lco/vine/android/TagsAutoCompleteAdapter$TagDropDownViewHolder;->this$0:Lco/vine/android/TagsAutoCompleteAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a0226
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/TagsAutoCompleteAdapter$TagDropDownViewHolder;->tagName:Landroid/widget/TextView;
return-void
.end method