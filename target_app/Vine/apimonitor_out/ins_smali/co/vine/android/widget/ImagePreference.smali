.class public Lco/vine/android/widget/ImagePreference;
.super Landroid/preference/Preference;
.source "ImagePreference.java"
.field private mBorder:Landroid/widget/ImageView;
.field private mContext:Landroid/content/Context;
.field private mImage:Landroid/widget/ImageView;
.field private mListener:Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const v0, 0x7f03004a
invoke-virtual {p0, v0}, Lco/vine/android/widget/ImagePreference;->setLayoutResource(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/widget/ImagePreference;->setSelectable(Z)V
iput-object p1, p0, Lco/vine/android/widget/ImagePreference;->mContext:Landroid/content/Context;
return-void
.end method
.method protected onBindView(Landroid/view/View;)V
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V
const v0, 0x7f0a0063
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
const v0, 0x7f0a022a
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/widget/ImagePreference;->mBorder:Landroid/widget/ImageView;
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mListener:Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;
invoke-interface {v0, p0}, Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;->onImagePeferenceBound(Lco/vine/android/widget/ImagePreference;)V
return-void
.end method
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget-object v2, p0, Lco/vine/android/widget/ImagePreference;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0055
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v1
.end method
.method public setBitmap(Landroid/graphics/Bitmap;)V
.registers 5
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v2, p0, Lco/vine/android/widget/ImagePreference;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_14
return-void
.end method
.method public setBorderDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mBorder:Landroid/widget/ImageView;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mBorder:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_9
return-void
.end method
.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_9
return-void
.end method
.method public setImageClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/widget/ImagePreference;->mImage:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_9
return-void
.end method
.method public setPreferenceBoundListener(Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/ImagePreference;->mListener:Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;
return-void
.end method