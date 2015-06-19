.class public Lco/vine/android/widget/FollowStateButton;
.super Landroid/widget/Button;
.source "FollowStateButton.java"
.field public static final STATE_FOLLOWING:I = 0x3
.field public static final STATE_FOLLOW_REQUESTED:I = 0x4
.field public static final STATE_NOT_FOLLOWING:I = 0x2
.field public static final STATE_SELF:I = 0x1
.field private mColor:I
.field private mFollowRequestedDrawableRes:I
.field private mFollowRequestedText:I
.field private mFollowRequestedTextColor:I
.field private mFollowingDrawableRes:I
.field private mFollowingText:I
.field private mFollowingTextColor:I
.field private mNotFollowingDrawableRes:I
.field private mNotFollowingText:I
.field private mNotFollowingTextColor:I
.field private mSelfDrawableRes:I
.field private mSelfText:I
.field private mSelfTextColor:I
.field private mState:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/FollowStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/FollowStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const v6, 0x7f09005c
const/4 v5, 0x5
const/4 v4, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v2, Lco/vine/android/R$styleable;->FollowStateButton:[I
invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const v2, 0x7f0200c0
invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mSelfDrawableRes:I
const/4 v2, 0x3
const v3, 0x7f0200b4
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingDrawableRes:I
const/4 v2, 0x6
const v3, 0x7f0200b7
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingDrawableRes:I
const/16 v2, 0x9
const v3, 0x7f0200bd
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedDrawableRes:I
const/4 v2, 0x1
const v3, 0x7f0e01c5
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mSelfText:I
const/4 v2, 0x4
const v3, 0x7f0e00fb
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingText:I
const/4 v2, 0x7
const v3, 0x7f0e0102
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingText:I
const/16 v2, 0xa
const v3, 0x7f0e0100
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedText:I
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v2, 0x2
const v3, 0x7f090070
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mSelfTextColor:I
invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingTextColor:I
const v2, 0x7f090051
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingTextColor:I
const/16 v2, 0xb
invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedTextColor:I
const v2, 0x7f090096
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
iput v2, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0044
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-virtual {p0, v2, v4, v4, v4}, Lco/vine/android/widget/FollowStateButton;->setPadding(IIII)V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V
return-void
.end method
.method private setColors()V
.registers 4
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
const/4 v1, -0x1
iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingTextColor:I
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingTextColor:I
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedTextColor:I
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_1d
iget v1, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
const/4 v2, 0x1
if-eq v1, v2, :cond_1d
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
:cond_1d
return-void
.end method
.method private setState(I)V
.registers 3
packed-switch p1, :pswitch_data_50
:goto_3
invoke-direct {p0}, Lco/vine/android/widget/FollowStateButton;->setColors()V
return-void
:pswitch_7
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfDrawableRes:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfText:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfTextColor:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V
const/4 v0, 0x1
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
goto :goto_3
:pswitch_1a
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingDrawableRes:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingText:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingTextColor:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V
const/4 v0, 0x2
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
goto :goto_3
:pswitch_2d
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingDrawableRes:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingText:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingTextColor:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V
const/4 v0, 0x3
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
goto :goto_3
:pswitch_40
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedDrawableRes:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedText:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowRequestedTextColor:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V
goto :goto_3
:pswitch_data_50
.packed-switch 0x1
:pswitch_7
:pswitch_1a
:pswitch_2d
:pswitch_40
.end packed-switch
.end method
.method public follow(Lco/vine/android/api/VineUser;)V
.registers 5
const/4 v2, 0x4
const/4 v1, 0x3
invoke-virtual {p1}, Lco/vine/android/api/VineUser;->isPrivate()Z
move-result v0
if-eqz v0, :cond_13
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
if-eq v0, v2, :cond_12
invoke-direct {p0, v2}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V
:cond_12
:goto_12
return-void
:cond_13
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
if-eq v0, v1, :cond_12
invoke-direct {p0, v1}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V
goto :goto_12
.end method
.method public getState()I
.registers 2
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
return v0
.end method
.method public setUser(JLco/vine/android/api/VineUser;)V
.registers 6
iget v0, p3, Lco/vine/android/api/VineUser;->profileBackground:I
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
sget v1, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v0, v1, :cond_e
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
if-gtz v0, :cond_1b
:cond_e
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090096
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
:cond_1b
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
const/high16 v1, -0x100
or-int/2addr v0, v1
iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mColor:I
iget-wide v0, p3, Lco/vine/android/api/VineUser;->userId:J
cmp-long v0, p1, v0
if-nez v0, :cond_33
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
:goto_2c
invoke-direct {p0}, Lco/vine/android/widget/FollowStateButton;->setColors()V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V
return-void
:cond_33
invoke-virtual {p3}, Lco/vine/android/api/VineUser;->hasFollowRequested()Z
move-result v0
if-eqz v0, :cond_3e
const/4 v0, 0x4
invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
goto :goto_2c
:cond_3e
invoke-virtual {p3}, Lco/vine/android/api/VineUser;->isFollowing()Z
move-result v0
if-eqz v0, :cond_49
const/4 v0, 0x3
invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
goto :goto_2c
:cond_49
const/4 v0, 0x2
invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
goto :goto_2c
.end method
.method public unfollow()V
.registers 3
const/4 v1, 0x2
iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I
if-eq v0, v1, :cond_b
invoke-direct {p0, v1}, Lco/vine/android/widget/FollowStateButton;->setState(I)V
invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V
:cond_b
return-void
.end method