.class public Lcom/pinguo/share/local/OtherShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "OtherShareAdapter.java"
.field private static final FILTER_APP:[Ljava/lang/String;
.field private static final FILTER_NAME:[Ljava/lang/String;
.field private list:Ljava/util/List;
.field private mContext:Landroid/content/Context;
.field private mPackageManager:Landroid/content/pm/PackageManager;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/16 v0, 0x12
new-array v0, v0, [Ljava/lang/String;
const-string/jumbo v1, "com.mt.mtxx.mtxx"
aput-object v1, v0, v3
const-string/jumbo v1, "my.beautyCamera"
aput-object v1, v0, v4
const-string/jumbo v1, "my.PCamera"
aput-object v1, v0, v5
const-string/jumbo v1, "com.ei.hdrphoto"
aput-object v1, v0, v6
const-string/jumbo v1, "cn.jingling.motu.photowonder"
aput-object v1, v0, v7
const/4 v1, 0x5
const-string/jumbo v2, "cn.poco.foodcamera"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "jp.naver.linecamera.android"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "powercam.activity"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "com.tencent.WBlog"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string/jumbo v2, "com.sina.weibo"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string/jumbo v2, "com.renren.mobile.android"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string/jumbo v2, "com.kaixin001.activity"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string/jumbo v2, "com.huaban.android"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string/jumbo v2, "com.twitter.android"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string/jumbo v2, "com.yahoo.mobile.client.android.flickr"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string/jumbo v2, "com.facebook.katana"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string/jumbo v2, "com.qzone"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string/jumbo v2, "com.evernote"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/share/local/OtherShareAdapter;->FILTER_APP:[Ljava/lang/String;
const/16 v0, 0xa
new-array v0, v0, [Ljava/lang/String;
const-string/jumbo v1, "facebook"
aput-object v1, v0, v3
const-string/jumbo v1, "flick"
aput-object v1, v0, v4
const-string/jumbo v1, "twitter"
aput-object v1, v0, v5
const-string/jumbo v1, "evernote"
aput-object v1, v0, v6
const-string/jumbo v1, "flickr"
aput-object v1, v0, v7
const/4 v1, 0x5
const-string/jumbo v2, "qzone"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "huaban.android"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "sina.weibo"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "tencent.WBlog"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string/jumbo v2, "androidapp.microblogtc"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/share/local/OtherShareAdapter;->FILTER_NAME:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/local/OtherShareAdapter;->getShareApps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
iput-object p1, p0, Lcom/pinguo/share/local/OtherShareAdapter;->mContext:Landroid/content/Context;
return-void
.end method
.method private getShareApps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.registers 15
new-instance v0, Landroid/content/Intent;
const-string/jumbo v7, "android.intent.action.SEND"
const/4 v8, 0x0
invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const-string/jumbo v7, "android.intent.extra.STREAM"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "file:/"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v8
invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string/jumbo v7, "android.intent.extra.SUBJECT"
invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "android.intent.extra.TITLE"
invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "android.intent.extra.TEXT"
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "image/jpg"
invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v7, 0x0
invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v2
if-nez v2, :cond_5d
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
:cond_5c
return-object v6
:cond_5d
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_66
:goto_66
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_5c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/content/pm/ResolveInfo;
iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v4, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-direct {p0, v4}, Lcom/pinguo/share/local/OtherShareAdapter;->isInFilter(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_66
invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_66
.end method
.method private isInFilter(Ljava/lang/String;)Z
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
sget-object v5, Lcom/pinguo/share/local/OtherShareAdapter;->FILTER_APP:[Ljava/lang/String;
array-length v6, v5
move v4, v3
:goto_6
if-lt v4, v6, :cond_10
sget-object v5, Lcom/pinguo/share/local/OtherShareAdapter;->FILTER_NAME:[Ljava/lang/String;
array-length v6, v5
move v4, v3
:goto_c
if-lt v4, v6, :cond_1b
move v2, v3
:cond_f
return v2
:cond_10
aget-object v0, v5, v4
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_f
add-int/lit8 v4, v4, 0x1
goto :goto_6
:cond_1b
aget-object v1, v5, v4
invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v7
const/4 v8, -0x1
if-ne v7, v8, :cond_f
add-int/lit8 v4, v4, 0x1
goto :goto_c
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getList()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
return-object v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
if-nez p2, :cond_10
iget-object v2, p0, Lcom/pinguo/share/local/OtherShareAdapter;->mContext:Landroid/content/Context;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const v3, 0x7f030021
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_10
const v2, 0x7f0a00a8
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/pm/ResolveInfo;
iget-object v3, p0, Lcom/pinguo/share/local/OtherShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const v2, 0x7f0a00a9
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/share/local/OtherShareAdapter;->list:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/pm/ResolveInfo;
iget-object v3, p0, Lcom/pinguo/share/local/OtherShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
.end method