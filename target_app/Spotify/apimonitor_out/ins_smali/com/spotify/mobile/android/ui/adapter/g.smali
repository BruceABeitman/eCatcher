.class public abstract Lcom/spotify/mobile/android/ui/adapter/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private a:Landroid/database/DataSetObserver;
.field private b:Landroid/content/Context;
.field private c:Ljava/util/ArrayList;
.field private d:Landroid/widget/ListAdapter;
.field private e:[I
.field private f:[I
.field private g:I
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/g$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/g$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->a:Landroid/database/DataSetObserver;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->a:Landroid/database/DataSetObserver;
invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method
.method private a()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_e
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v3, v0, [I
move v0, v1
:goto_17
array-length v2, v3
if-ge v0, v2, :cond_1f
aput v1, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_1f
move v0, v1
:goto_20
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
if-ge v0, v2, :cond_35
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/g;->a(I)I
move-result v2
aget v4, v3, v2
add-int/lit8 v4, v4, 0x1
aput v4, v3, v2
add-int/lit8 v0, v0, 0x1
goto :goto_20
:cond_35
iput v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->g:I
move v0, v1
:goto_38
array-length v2, v3
if-ge v0, v2, :cond_4e
aget v2, v3, v0
if-lez v2, :cond_4b
aget v2, v3, v0
add-int/lit8 v2, v2, 0x1
aput v2, v3, v0
iget v2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->g:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->g:I
:cond_4b
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_4e
move v0, v1
move v2, v1
:goto_50
array-length v4, v3
if-ge v0, v4, :cond_5b
aget v4, v3, v0
aput v2, v3, v0
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_50
:cond_5b
invoke-virtual {v3}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->e:[I
add-int/lit8 v0, v2, 0x1
new-array v0, v0, [I
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
move v0, v1
:goto_6a
array-length v2, v3
if-ge v0, v2, :cond_80
add-int/lit8 v2, v0, 0x1
mul-int/lit8 v2, v2, -0x1
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v5, v3, v0
aput v2, v4, v5
aget v2, v3, v0
add-int/lit8 v2, v2, 0x1
aput v2, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6a
:cond_80
:goto_80
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_d
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/g;->a(I)I
move-result v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v4, v3, v0
aput v1, v2, v4
aget v2, v3, v0
add-int/lit8 v2, v2, 0x1
aput v2, v3, v0
add-int/lit8 v1, v1, 0x1
goto :goto_80
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/adapter/g;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/g;->a()V
return-void
.end method
.method public abstract a(I)I
.end method
.method public final a([Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/g;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/g;->notifyDataSetChanged()V
return-void
.end method
.method public areAllItemsEnabled()Z
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->g:I
if-nez v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getCount()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->g:I
add-int/2addr v0, v1
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v0, v0, p1
if-gez v0, :cond_11
mul-int/lit8 v0, v0, -0x1
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v1, v1, p1
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_10
.end method
.method public getItemId(I)J
.registers 5
const-wide/16 v0, -0x1
if-gez p1, :cond_5
:goto_4
:cond_4
return-wide v0
:cond_5
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v2, v2, p1
if-ltz v2, :cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v0
goto :goto_4
.end method
.method public getItemViewType(I)I
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
array-length v0, v0
if-le p1, v0, :cond_7
const/4 v0, -0x1
:goto_6
return v0
:cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v0, v0, p1
if-gez v0, :cond_f
const/4 v0, 0x0
goto :goto_6
:cond_f
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
array-length v0, v0
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v0, v0, p1
if-gez v0, :cond_35
mul-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v0, -0x1
new-instance v2, Lcom/spotify/android/paste/widget/SectionHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->b:Landroid/content/Context;
invoke-direct {v2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V
const v0, 0x7f0a01fc
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/g;->c:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object v0, v2
:goto_34
return-object v0
:cond_35
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v1, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_34
.end method
.method public getViewTypeCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v0
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/g;->getCount()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isEnabled(I)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
array-length v1, v1
if-le p1, v1, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/g;->f:[I
aget v1, v1, p1
if-ltz v1, :cond_6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g;->d:Landroid/widget/ListAdapter;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v0
goto :goto_6
.end method