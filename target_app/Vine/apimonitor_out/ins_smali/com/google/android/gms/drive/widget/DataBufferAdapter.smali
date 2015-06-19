.class public Lcom/google/android/gms/drive/widget/DataBufferAdapter;
.super Landroid/widget/BaseAdapter;
.field private final LO:I
.field private LP:I
.field private final LQ:I
.field private final LR:Ljava/util/List;
.field private final LS:Landroid/view/LayoutInflater;
.field private LT:Z
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 5
const/4 v0, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
.registers 6
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:Z
iput-object p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;
iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LP:I
iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LO:I
iput p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LQ:I
iput-object p4, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
iput-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LS:Landroid/view/LayoutInflater;
return-void
.end method
.method public varargs constructor <init>(Landroid/content/Context;II[Lcom/google/android/gms/common/data/DataBuffer;)V
.registers 6
invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V
return-void
.end method
.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/google/android/gms/common/data/DataBuffer;)V
.registers 6
const/4 v0, 0x0
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V
return-void
.end method
.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 10
if-nez p2, :cond_20
iget-object v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LS:Landroid/view/LayoutInflater;
const/4 v2, 0x0
invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
:goto_9
:try_start_9
iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LQ:I
if-nez v1, :cond_22
move-object v0, v2
check-cast v0, Landroid/widget/TextView;
move-object v1, v0
:try_end_11
.catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_2c
move-object v3, v1
:goto_12
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
instance-of v4, v1, Ljava/lang/CharSequence;
if-eqz v4, :cond_3c
check-cast v1, Ljava/lang/CharSequence;
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1f
return-object v2
:cond_20
move-object v2, p2
goto :goto_9
:cond_22
:try_start_22
iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LQ:I
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
:try_end_2a
.catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_2a} :catch_2c
move-object v3, v1
goto :goto_12
:catch_2c
move-exception v1
const-string v2, "DataBufferAdapter"
const-string v3, "You must supply a resource ID for a TextView"
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "DataBufferAdapter requires the resource ID to be a TextView"
invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_3c
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1f
.end method
.method public append(Lcom/google/android/gms/common/data/DataBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:Z
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V
:cond_c
return-void
.end method
.method public clear()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V
goto :goto_6
:cond_16
iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:Z
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V
:cond_22
return-void
.end method
.method public getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public getCount()I
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_8
:cond_1b
return v1
.end method
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LP:I
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, p1
:goto_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I
move-result v3
if-gt v3, v1, :cond_1d
sub-int v0, v1, v3
move v1, v0
goto :goto_7
:try_start_1d
:cond_1d
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;
:try_end_20
.catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1d .. :try_end_20} :catch_22
move-result-object v0
return-object v0
:catch_22
move-exception v0
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I
move-result v1
invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V
throw v0
:cond_2d
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I
move-result v1
invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V
throw v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LO:I
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public notifyDataSetChanged()V
.registers 2
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:Z
return-void
.end method
.method public setDropDownViewResource(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LP:I
return-void
.end method
.method public setNotifyOnChange(Z)V
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:Z
return-void
.end method