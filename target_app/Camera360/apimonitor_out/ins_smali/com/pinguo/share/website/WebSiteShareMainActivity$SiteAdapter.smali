.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
.super Landroid/widget/BaseAdapter;
.source "WebSiteShareMainActivity.java"
.field private mSiteList:Ljava/util/List;
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method public constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 16
const/16 v11, 0x8
if-nez p2, :cond_14
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v8
invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v8
const v9, 0x7f03001e
const/4 v10, 0x0
invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_14
iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->mSiteList:Ljava/util/List;
invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/WebSiteInfoBean;
invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
const v8, 0x7f0a009a
invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
const v8, 0x7f0a009f
invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v8
if-eqz v8, :cond_a9
const-string/jumbo v8, "#7B8085"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_48
const v8, 0x7f0a009d
invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/ImageView;
iget-object v8, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-eqz v8, :cond_5d
iget-object v8, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
if-nez v8, :cond_b9
:cond_5d
const v8, 0x7f02001f
invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_63
const v8, 0x7f0a009e
invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/ImageView;
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v8
if-eqz v8, :cond_da
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z
move-result v8
if-eqz v8, :cond_cf
invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_7b
iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-virtual {v8}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v8
iget v3, v8, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-virtual {v8}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v8
const v9, 0x7f0b0014
invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->getCount()I
move-result v8
const/4 v9, 0x4
if-le v8, v9, :cond_de
int-to-float v8, v3
const/high16 v9, 0x4090
div-float/2addr v8, v9
float-to-int v2, v8
:goto_a0
new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v8, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object p2
:cond_a9
const-string/jumbo v8, "#C1C1C1"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v8, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_48
:cond_b9
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v8
if-eqz v8, :cond_c7
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOnBitmap()Landroid/graphics/Bitmap;
move-result-object v8
invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_63
:cond_c7
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOffBitmap()Landroid/graphics/Bitmap;
move-result-object v8
invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_63
:cond_cf
const v8, 0x7f020052
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v8, 0x0
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_7b
:cond_da
invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_7b
:cond_de
int-to-float v8, v3
const/high16 v9, 0x4080
div-float/2addr v8, v9
float-to-int v2, v8
goto :goto_a0
.end method