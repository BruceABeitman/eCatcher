.class  Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SignUpNameAvatarFragment.java"
.field final synthetic this$0:Lco/vine/android/SignUpNameAvatarFragment;
.method constructor <init>(Lco/vine/android/SignUpNameAvatarFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V
.registers 11
const/4 v4, 0x0
const/16 v2, 0xc8
if-eq p2, v2, :cond_86
if-eqz p4, :cond_86
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$000(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;
move-result-object v2
iget-object v3, p4, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumberContainer:Landroid/widget/RelativeLayout;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/RelativeLayout;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#setter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
invoke-static {v2, v4}, Lco/vine/android/SignUpNameAvatarFragment;->access$402(Lco/vine/android/SignUpNameAvatarFragment;Landroid/net/Uri;)Landroid/net/Uri;
iget-boolean v2, p4, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z
if-nez v2, :cond_74
new-instance v1, Lco/vine/android/util/image/ImageKey;
iget-object v2, p4, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;
invoke-direct {v1, v2}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
iget-object v2, v2, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#calls: Lco/vine/android/SignUpNameAvatarFragment;->setAvatar(Landroid/graphics/Bitmap;)V
invoke-static {v2, v0}, Lco/vine/android/SignUpNameAvatarFragment;->access$500(Lco/vine/android/SignUpNameAvatarFragment;Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$600(Lco/vine/android/SignUpNameAvatarFragment;)Z
move-result v2
if-eqz v2, :cond_6a
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$700(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$800(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;
move-result-object v2
invoke-virtual {v2, v0}, Lco/vine/android/ImagePicker;->saveProfileImage(Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
if-eqz v2, :cond_64
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
:cond_64
:goto_64
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#setter for: Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
invoke-static {v2, p4}, Lco/vine/android/SignUpNameAvatarFragment;->access$1002(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/api/TwitterUser;)Lco/vine/android/api/TwitterUser;
:cond_69
:goto_69
return-void
:cond_6a
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$700(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
goto :goto_64
:cond_74
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
if-eqz v2, :cond_64
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
goto :goto_64
:cond_86
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
if-eqz v2, :cond_69
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
goto :goto_69
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 6
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$700(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/image/UrlImage;
if-eqz v0, :cond_3d
invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
iget-object v3, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
#calls: Lco/vine/android/SignUpNameAvatarFragment;->setAvatar(Landroid/graphics/Bitmap;)V
invoke-static {v2, v3}, Lco/vine/android/SignUpNameAvatarFragment;->access$500(Lco/vine/android/SignUpNameAvatarFragment;Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$800(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;
move-result-object v2
iget-object v3, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v3}, Lco/vine/android/ImagePicker;->saveProfileImage(Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;
#getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProgress:Landroid/app/Dialog;
invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$900(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/app/Dialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
:cond_3d
return-void
.end method