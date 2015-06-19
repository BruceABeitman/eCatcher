.class  Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionsAlbum.java"
.field private hasChecked:[Z
.field private listContainer:Landroid/view/LayoutInflater;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.method public constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->listContainer:Landroid/view/LayoutInflater;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCount()I
move-result v0
new-array v0, v0, [Z
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->checkedChange(I)V
return-void
.end method
.method private checkedChange(I)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
aget-boolean v0, v0, p1
if-eqz v0, :cond_27
const/4 v0, 0x0
:goto_9
aput-boolean v0, v1, p1
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
aget-boolean v0, v0, p1
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$10(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)I
move-result v1
add-int/lit8 v1, v1, 0x1
#setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;I)V
:goto_1c
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#calls: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateTopView()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$13(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#calls: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateBottomView()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$14(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
return-void
:cond_27
const/4 v0, 0x1
goto :goto_9
:cond_29
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$10(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)I
move-result v1
add-int/lit8 v1, v1, -0x1
#setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;I)V
goto :goto_1c
.end method
.method public getCheckList()[Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
return-object v0
.end method
.method public getCount()I
.registers 4
const-string/jumbo v0, "OptionsAlbum"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "getCount"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
const/4 v9, 0x0
move v5, p1
const/4 v4, 0x0
if-nez p2, :cond_e5
new-instance v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;
invoke-direct {v4, p0, v9}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->listContainer:Landroid/view/LayoutInflater;
const v7, 0x7f03005b
invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
const v6, 0x7f0a01c3
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ImageView;
iput-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->image:Landroid/widget/ImageView;
const v6, 0x7f0a01c4
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/TextView;
iput-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->info:Landroid/widget/TextView;
const v6, 0x7f0a01c6
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/CheckBox;
iput-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->check:Landroid/widget/CheckBox;
const v6, 0x7f0a01c5
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/TextView;
iput-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->count:Landroid/widget/TextView;
invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_42
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v2
new-instance v7, Ljava/io/File;
iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmFirstPicPath()Ljava/lang/String;
move-result-object v6
invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v6
invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;
iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmFirstPicPath()Ljava/lang/String;
move-result-object v1
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "file://"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iget-object v7, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->image:Landroid/widget/ImageView;
iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-static {v8}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$15(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v8
invoke-virtual {v2, v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v0
const-string/jumbo v6, "/"
invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v7
invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
iget-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->info:Landroid/widget/TextView;
invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v7, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->count:Landroid/widget/TextView;
iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-static {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmCount()I
move-result v6
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->check:Landroid/widget/CheckBox;
invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->check:Landroid/widget/CheckBox;
iget-object v7, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
aget-boolean v7, v7, v5
invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v6, v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->check:Landroid/widget/CheckBox;
new-instance v7, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;
invoke-direct {v7, p0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;I)V
invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-object p2
:cond_e5
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;
goto/16 :goto_42
.end method
.method public hasChecked(I)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
aget-boolean v0, v0, p1
return v0
.end method
.method public setCheckList([Z)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->hasChecked:[Z
return-void
.end method