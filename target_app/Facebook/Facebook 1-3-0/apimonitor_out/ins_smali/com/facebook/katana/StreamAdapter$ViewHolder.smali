.class public Lcom/facebook/katana/StreamAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StreamAdapter.java"
.field protected mAttachmentCaption:Landroid/widget/TextView;
.field protected mAttachmentDescription:Landroid/widget/TextView;
.field protected mAttachmentName:Landroid/widget/TextView;
.field protected mBandView:Landroid/view/View;
.field protected mCommentsCountView:Landroid/widget/TextView;
.field protected mImageViews:[Landroid/widget/ImageView;
.field protected mLikesCountView:Landroid/widget/TextView;
.field protected mPhotoCount:I
.field protected mPhotoUrls:[Ljava/lang/String;
.field protected mTextTextView:Landroid/widget/TextView;
.field protected mTimeTextView:Landroid/widget/TextView;
.field protected mUserId:J
.field protected mUserImageView:Landroid/widget/ImageView;
.method protected constructor <init>()V
.registers 3
const/4 v1, 0x3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [Landroid/widget/ImageView;
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoUrls:[Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/binding/UserImage;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->setUserImageBitmap(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/StreamAdapter$ViewHolder;ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
return-void
.end method
.method private setImageUrl(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoUrls:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method private setUserImageBitmap(Lcom/facebook/katana/binding/UserImage;)V
.registers 6
iget-wide v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_13
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_13
return-void
.end method
.method public detach()V
.registers 3
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
return-void
.end method
.method public setPhotoBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
:goto_1
iget v1, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
if-lt v0, v1, :cond_7
const/4 v1, 0x0
:goto_6
return v1
:cond_7
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoUrls:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
aget-object v1, v1, v0
invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
const/4 v1, 0x1
goto :goto_6
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method