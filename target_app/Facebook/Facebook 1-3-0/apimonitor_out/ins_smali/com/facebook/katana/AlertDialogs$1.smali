.class  Lcom/facebook/katana/AlertDialogs$1;
.super Ljava/lang/Object;
.source "AlertDialogs.java"
.implements Landroid/widget/ListAdapter;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$icons:[I
.field private final synthetic val$texts:[Ljava/lang/String;
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;[I)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/AlertDialogs$1;->val$texts:[Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/katana/AlertDialogs$1;->val$context:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/AlertDialogs$1;->val$icons:[I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/AlertDialogs$1;->val$texts:[Ljava/lang/String;
array-length v0, v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const/4 v5, 0x0
const v4, 0x7f0b0054
if-nez p2, :cond_39
iget-object v2, p0, Lcom/facebook/katana/AlertDialogs$1;->val$context:Landroid/content/Context;
const-string v3, "layout_inflater"
invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/LayoutInflater;
const v2, 0x7f03001f
invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_17
iget-object v2, p0, Lcom/facebook/katana/AlertDialogs$1;->val$icons:[I
if-eqz v2, :cond_3b
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iget-object v3, p0, Lcom/facebook/katana/AlertDialogs$1;->val$icons:[I
aget v3, v3, p1
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_28
const v2, 0x7f0b0055
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iget-object v3, p0, Lcom/facebook/katana/AlertDialogs$1;->val$texts:[Ljava/lang/String;
aget-object v3, v3, p1
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v0
:cond_39
move-object v0, p2
goto :goto_17
:cond_3b
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_28
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isEmpty()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEnabled(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method