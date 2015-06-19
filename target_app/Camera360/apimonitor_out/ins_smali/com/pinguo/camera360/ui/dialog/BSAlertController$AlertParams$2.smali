.class  Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "BSAlertController.java"
.field private final mIsCheckedIndex:I
.field private final mLabelIndex:I
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
.field private final synthetic val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/pinguo/camera360/ui/dialog/RecycleListView;)V
.registers 8
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iput-object p5, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;
move-result-object v0
iget-object v1, p1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->mLabelIndex:I
iget-object v1, p1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->mIsCheckedIndex:I
return-void
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 9
const/4 v1, 0x1
const v2, 0x7f0a0099
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckedTextView;
iget v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->mLabelIndex:I
invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I
move-result v3
iget v4, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->mIsCheckedIndex:I
invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
if-ne v4, v1, :cond_25
:goto_21
invoke-virtual {v2, v3, v1}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setItemChecked(IZ)V
return-void
:cond_25
const/4 v1, 0x0
goto :goto_21
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;
const v1, 0x7f030044
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method