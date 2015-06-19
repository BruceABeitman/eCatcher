.class public Lco/vine/android/RecipientPickerActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "RecipientPickerActivity.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
.implements Landroid/text/TextWatcher;
.implements Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
.field public static final ARG_TAG:Ljava/lang/String; = "tag"
.field public static final EXTRA_IS_VM_ONBOARDING:Ljava/lang/String; = "is_vm_onboarding"
.field public static final EXTRA_MAX_LOOPS:Ljava/lang/String; = "max_loops"
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"
.field public static final EXTRA_PREVIEW_PATH:Ljava/lang/String; = "preview_path"
.field public static final EXTRA_SHARED_THUMB_URL:Ljava/lang/String; = "thumb_url"
.field public static final EXTRA_SHARED_VIDEO_URL:Ljava/lang/String; = "vid_url"
.field public static final EXTRA_THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail_path"
.field public static final EXTRA_VIDEO_PATH:Ljava/lang/String; = "video_path"
.field private static final OVERFLOW_INDEX:I = 0x3
.field public static final TAG_ADDRESS_BOOK:Ljava/lang/String; = "address_book"
.field public static final TAG_FRIENDS:Ljava/lang/String; = "friends"
.field private isForcingFullList:Z
.field private mCaptionMessage:Ljava/lang/String;
.field private mDensity:F
.field private mFlowLayout:Lco/vine/android/views/FlowLayout;
.field private mIsVmOnboarding:Z
.field private final mLastExtra:Lco/vine/android/api/VineRecipient;
.field private mMaxLoops:I
.field private mOnboardingOverlay:Landroid/widget/TextView;
.field private mOverFlowView:Landroid/view/View;
.field private mPostId:J
.field private mProfileColor:I
.field private mQuery:Landroid/widget/EditText;
.field private mQueryHint:Ljava/lang/CharSequence;
.field private final mRecipients:Ljava/util/ArrayList;
.field private final mRecycledViews:Ljava/util/ArrayList;
.field private mSelectedForRemoval:I
.field private mSendButton:Landroid/widget/ImageView;
.field private mSharedThumbnailUrl:Ljava/lang/String;
.field private mSharedVideoUrl:Ljava/lang/String;
.field private mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
.field private mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
.field private mVideoPath:Ljava/lang/String;
.field private mViewPager:Landroid/support/v4/view/ViewPager;
.field private mVineGreen:I
.field private final mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
.method public constructor <init>()V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
const-wide/16 v1, -0x1
const-wide/16 v4, 0x0
move-object v3, v0
invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromEmail(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v0
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
new-instance v0, Lco/vine/android/RecipientPickerActivity$3;
invoke-direct {v0, p0}, Lco/vine/android/RecipientPickerActivity$3;-><init>(Lco/vine/android/RecipientPickerActivity;)V
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/RecipientPickerActivity;)Landroid/view/animation/Animation$AnimationListener;
.registers 2
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/RecipientPickerActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/RecipientPickerActivity;)I
.registers 2
iget v0, p0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
return v0
.end method
.method private addSendIcon()V
.registers 11
const-wide v8, 0x4042400000000000L
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getFakeActionBar()Lco/vine/android/widget/FakeActionBar;
move-result-object v0
const v5, 0x7f090057
invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
new-instance v4, Lco/vine/android/RecipientPickerActivity$4;
invoke-direct {v4, p0, p0, v1}, Lco/vine/android/RecipientPickerActivity$4;-><init>(Lco/vine/android/RecipientPickerActivity;Landroid/content/Context;I)V
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
iget v5, p0, Lco/vine/android/RecipientPickerActivity;->mDensity:F
float-to-double v5, v5
mul-double/2addr v5, v8
double-to-int v5, v5
iget v6, p0, Lco/vine/android/RecipientPickerActivity;->mDensity:F
float-to-double v6, v6
mul-double/2addr v6, v8
double-to-int v6, v6
invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
const v5, 0x7f020137
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
new-instance v5, Lco/vine/android/RecipientPickerActivity$5;
invoke-direct {v5, p0}, Lco/vine/android/RecipientPickerActivity$5;-><init>(Lco/vine/android/RecipientPickerActivity;)V
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getActionBarRight()Landroid/widget/LinearLayout;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iput-object v4, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
iget-object v5, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isSendButtonEnabled()Z
move-result v6
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V
return-void
.end method
.method private bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
.registers 14
const/high16 v8, 0x4000
const/high16 v7, -0x100
const/4 v6, 0x0
if-nez p2, :cond_14
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v3
const v4, 0x7f030081
iget-object v5, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_14
move-object v3, p2
check-cast v3, Landroid/widget/RelativeLayout;
invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/widget/TypefacesTextView;
new-instance v3, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;
invoke-direct {v3, p0, p3, p1}, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;-><init>(Lco/vine/android/RecipientPickerActivity;Lco/vine/android/api/VineRecipient;I)V
invoke-virtual {v1, v3}, Lco/vine/android/widget/TypefacesTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v3, p3, Lco/vine/android/api/VineRecipient;->color:I
if-lez v3, :cond_2f
iget v3, p3, Lco/vine/android/api/VineRecipient;->color:I
sget v4, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-ne v3, v4, :cond_33
:cond_2f
iget v3, p0, Lco/vine/android/RecipientPickerActivity;->mVineGreen:I
iput v3, p3, Lco/vine/android/api/VineRecipient;->color:I
:cond_33
invoke-virtual {v1}, Lco/vine/android/widget/TypefacesTextView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;
if-nez v3, :cond_67
new-instance v2, Landroid/graphics/drawable/GradientDrawable;
invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
iget v3, p0, Lco/vine/android/RecipientPickerActivity;->mDensity:F
mul-float/2addr v3, v8
invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
:goto_49
if-eqz p4, :cond_6b
iget v3, p0, Lco/vine/android/RecipientPickerActivity;->mDensity:F
mul-float/2addr v3, v8
float-to-int v3, v3
iget v4, p3, Lco/vine/android/api/VineRecipient;->color:I
or-int/2addr v4, v7
invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
iget v3, p3, Lco/vine/android/api/VineRecipient;->color:I
or-int/2addr v3, v7
invoke-virtual {v1, v3}, Lco/vine/android/widget/TypefacesTextView;->setTextColor(I)V
:goto_5e
invoke-static {v1, v2}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
iget-object v3, p3, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
invoke-virtual {v1, v3}, Lco/vine/android/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_67
move-object v2, v0
check-cast v2, Landroid/graphics/drawable/GradientDrawable;
goto :goto_49
:cond_6b
invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
iget v3, p3, Lco/vine/android/api/VineRecipient;->color:I
or-int/2addr v3, v7
invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f090083
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Lco/vine/android/widget/TypefacesTextView;->setTextColor(I)V
goto :goto_5e
.end method
.method public static getIntent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 7
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/RecipientPickerActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "post_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "vid_url"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "thumb_url"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method public static getIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;
.registers 9
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/RecipientPickerActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "message"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "video_path"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "thumbnail_path"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "preview_path"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "max_loops"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "is_vm_onboarding"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object v0
.end method
.method private invalidateDisplayForExtra(I)V
.registers 7
const/4 v2, 0x1
if-ne p1, v2, :cond_f
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
const v1, 0x7f0e004d
invoke-virtual {p0, v1}, Lco/vine/android/RecipientPickerActivity;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
:goto_e
return-void
:cond_f
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
const v1, 0x7f0e004c
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {p0, v1, v2}, Lco/vine/android/RecipientPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
goto :goto_e
.end method
.method private invalidateEditTextUI(ILco/vine/android/api/VineRecipient;ZZ)V
.registers 15
const/4 v9, 0x0
const/4 v8, 0x2
const/4 v7, 0x3
const/4 v6, 0x0
const-string v2, "Invalidate UI: adding: {}, original index: {}, wasOverflow: {}."
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
const-string v2, "Before child count: {}."
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3}, Lco/vine/android/views/FlowLayout;->getChildCount()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p3, :cond_90
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v2
if-eqz v2, :cond_61
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x3
invoke-direct {p0, v2}, Lco/vine/android/RecipientPickerActivity;->invalidateDisplayForExtra(I)V
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
invoke-direct {p0, p1, v2, v3, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2}, Lco/vine/android/views/FlowLayout;->getChildCount()I
move-result v2
const/4 v3, 0x4
if-gt v2, v3, :cond_51
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
invoke-virtual {v2, v3, v7}, Lco/vine/android/views/FlowLayout;->addView(Landroid/view/View;I)V
:goto_51
:cond_51
const-string v2, "After child count: {}."
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3}, Lco/vine/android/views/FlowLayout;->getChildCount()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
return-void
:cond_61
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-eqz v2, :cond_7b
invoke-direct {p0, p1, v9, p2, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
move-result-object v1
:goto_6d
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3}, Lco/vine/android/views/FlowLayout;->getChildCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v1, v3}, Lco/vine/android/views/FlowLayout;->addView(Landroid/view/View;I)V
goto :goto_51
:cond_7b
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-direct {p0, p1, v2, p2, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
move-result-object v1
goto :goto_6d
:cond_90
if-eqz p4, :cond_114
if-ge p1, v7, :cond_f9
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineRecipient;
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3, p1}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2, p1}, Lco/vine/android/views/FlowLayout;->removeViewAt(I)V
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-eqz v2, :cond_e4
invoke-direct {p0, p1, v9, v0, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
move-result-object v1
:goto_b8
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2, v1, v8}, Lco/vine/android/views/FlowLayout;->addView(Landroid/view/View;I)V
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v2
if-eqz v2, :cond_d5
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x3
invoke-direct {p0, v2}, Lco/vine/android/RecipientPickerActivity;->invalidateDisplayForExtra(I)V
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
invoke-direct {p0, p1, v2, v3, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
:goto_d5
:cond_d5
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v2
if-nez v2, :cond_51
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
invoke-virtual {v2, v3}, Lco/vine/android/views/FlowLayout;->removeView(Landroid/view/View;)V
goto/16 :goto_51
:cond_e4
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-direct {p0, p1, v2, v0, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
move-result-object v1
goto :goto_b8
:cond_f9
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v2
if-eqz v2, :cond_d5
if-eq p1, v7, :cond_d5
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x3
invoke-direct {p0, v2}, Lco/vine/android/RecipientPickerActivity;->invalidateDisplayForExtra(I)V
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mOverFlowView:Landroid/view/View;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
invoke-direct {p0, p1, v2, v3, v6}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
goto :goto_d5
:cond_114
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecycledViews:Ljava/util/ArrayList;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v3, p1}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2, p1}, Lco/vine/android/views/FlowLayout;->removeViewAt(I)V
goto/16 :goto_51
.end method
.method private notifyItemRemoval(Lco/vine/android/api/VineRecipient;)V
.registers 6
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_c
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
instance-of v3, v0, Lco/vine/android/BaseRecipientPickerFragment;
if-eqz v3, :cond_c
check-cast v0, Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v0, p1}, Lco/vine/android/BaseRecipientPickerFragment;->onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V
goto :goto_c
:cond_22
return-void
.end method
.method private setItemForRemoval(I)V
.registers 6
iget v0, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
if-ltz v0, :cond_1c
iget v1, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
iget v2, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
invoke-virtual {v0, v2}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
iget v3, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineRecipient;
const/4 v3, 0x0
invoke-direct {p0, v1, v2, v0, v3}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
:cond_1c
if-ltz p1, :cond_30
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v0, p1}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineRecipient;
const/4 v2, 0x1
invoke-direct {p0, p1, v1, v0, v2}, Lco/vine/android/RecipientPickerActivity;->bindOrCreateViewForRecipient(ILandroid/view/View;Lco/vine/android/api/VineRecipient;Z)Landroid/view/View;
:cond_30
iput p1, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
return-void
.end method
.method public addRecipient(Lco/vine/android/api/VineRecipient;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v0
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v1, "Recipient added: {} {} {}"
iget-object v2, p1, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;
iget-wide v3, p1, Lco/vine/android/api/VineRecipient;->userId:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
iget-object v4, p1, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;
invoke-static {v1, v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_33
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQueryHint:Ljava/lang/CharSequence;
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
const-string v2, ""
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
:cond_33
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_46
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
const-string v2, ""
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_46
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
invoke-direct {p0, v1, p1, v2, v0}, Lco/vine/android/RecipientPickerActivity;->invalidateEditTextUI(ILco/vine/android/api/VineRecipient;ZZ)V
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
if-eqz v1, :cond_5f
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isSendButtonEnabled()Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V
:cond_5f
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public getCount()I
.registers 3
iget-boolean v0, p0, Lco/vine/android/RecipientPickerActivity;->isForcingFullList:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_a
return v0
:cond_b
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x3
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_a
.end method
.method public isFakeActionBarEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isInOverflowMode()Z
.registers 3
iget-boolean v0, p0, Lco/vine/android/RecipientPickerActivity;->isForcingFullList:Z
if-nez v0, :cond_12
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getCount()I
move-result v1
if-le v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z
.registers 3
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isSendButtonEnabled()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isShowing(Ljava/lang/String;)Z
.registers 3
if-eqz p1, :cond_10
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseRecipientPickerFragment;
if-eqz v1, :cond_10
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
:cond_10
return-void
.end method
.method public onBackPressed()V
.registers 3
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_13
return-void
:cond_14
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onBackPressed()V
goto :goto_13
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 24
const-string v1, " + Lco/vine/android/RecipientPickerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v18, 0x7f03007d
const/16 v19, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v18
move/from16 v3, v19
invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v12
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v18
const v19, 0x7f090096
invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mVineGreen:I
const-string v18, "video_path"
move-object/from16 v0, v18
invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mVideoPath:Ljava/lang/String;
const/16 v18, 0x0
invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v18
const/16 v19, 0x1
invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v19
const v20, 0x7f0e01c0
const/16 v21, 0x1
invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v21
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v19
move/from16 v3, v20
move-object/from16 v4, v21
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/RecipientPickerActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v18
const-string v19, "profile_background"
sget v20, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move/from16 v18, v0
sget v19, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_7d
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move/from16 v18, v0
if-gtz v18, :cond_93
:cond_7d
const v18, 0xffffff
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v19
const v20, 0x7f090096
invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I
move-result v19
and-int v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
:cond_93
const/high16 v18, -0x100
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move/from16 v19, v0
or-int v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
const v18, 0x7f0a011c
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v14
check-cast v14, Lco/vine/android/widget/tabs/ViewPagerScrollBar;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move/from16 v18, v0
move/from16 v0, v18
invoke-virtual {v14, v0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setLineColor(I)V
const/16 v18, 0x2
move/from16 v0, v18
invoke-virtual {v14, v0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setRange(I)V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
move/from16 v18, v0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v19
const v20, 0x7f090057
invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I
move-result v19
invoke-static/range {v18 .. v19}, Lco/vine/android/widget/tabs/TabIndicator;->createTextColorList(II)Landroid/content/res/ColorStateList;
move-result-object v9
const v18, 0x7f0a00da
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/support/v4/view/ViewPager;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v18
const v19, 0x7f0b0054
invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v18
invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V
const v18, 0x7f09000e
invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V
const/16 v18, 0x1
invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
new-instance v16, Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v0, v16
move-object/from16 v1, p0
move-object/from16 v2, v17
invoke-direct {v0, v1, v15, v2, v14}, Lco/vine/android/widget/tabs/TabsAdapter;-><init>(Lco/vine/android/BaseControllerActionBarActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/tabs/ViewPagerScrollBar;)V
const/16 v18, 0x0
move-object/from16 v0, v16
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/TabsAdapter;->setSetActionBarColorOnPageSelectedEnabled(Z)V
invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v11
move-object/from16 v0, p0
invoke-virtual {v15, v0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
move-object/from16 v0, p0
invoke-virtual {v15, v0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;)V
new-instance v7, Landroid/os/Bundle;
invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
const-string v18, "tag"
const-string v19, "friends"
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v18, "refresh"
const/16 v19, 0x1
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v18, "empty_desc"
const v19, 0x7f0e0151
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const v18, 0x7f030062
const v19, 0x7f0e023f
const/16 v20, 0x0
move/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v15, v1, v2}, Lco/vine/android/widget/tabs/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;IZ)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v8
invoke-virtual {v8}, Lco/vine/android/widget/tabs/TabIndicator;->getIndicatorText()Landroid/widget/TextView;
move-result-object v10
invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v18
move-object/from16 v0, v18
iget-object v0, v0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const-string v18, "friends"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v18
const-class v19, Lco/vine/android/FriendsRecipientPickerFragment;
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2, v7}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v6, Landroid/os/Bundle;
invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
const-string v18, "tag"
const-string v19, "address_book"
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v18, "refresh"
const/16 v19, 0x0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v18, "empty_desc"
const v19, 0x7f0e014f
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const v18, 0x7f030062
const v19, 0x7f0e0237
const/16 v20, 0x0
move/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v15, v1, v2}, Lco/vine/android/widget/tabs/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;IZ)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v8
invoke-virtual {v8}, Lco/vine/android/widget/tabs/TabIndicator;->getIndicatorText()Landroid/widget/TextView;
move-result-object v10
invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v18
move-object/from16 v0, v18
iget-object v0, v0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const-string v18, "address_book"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v18
const-class v19, Lco/vine/android/ContactsRecipientPickerFragment;
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2, v6}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "message"
invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mCaptionMessage:Ljava/lang/String;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "max_loops"
const/16 v20, 0x0
invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mMaxLoops:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "post_id"
const-wide/16 v20, 0x0
invoke-virtual/range {v18 .. v21}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v18
move-wide/from16 v0, v18
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/RecipientPickerActivity;->mPostId:J
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "vid_url"
invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mSharedVideoUrl:Ljava/lang/String;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "thumb_url"
invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mSharedThumbnailUrl:Ljava/lang/String;
const v18, 0x1020013
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v18
const v19, 0x7f090083
invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I
move-result v18
move/from16 v0, v18
invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
const v18, 0x7f0a01a6
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v18
check-cast v18, Lco/vine/android/views/FlowLayout;
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
const v18, 0x7f03007f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
move-object/from16 v19, v0
const/16 v20, 0x0
move/from16 v0, v18
move-object/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v13
check-cast v13, Lco/vine/android/widget/TypefacesEditText;
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Lco/vine/android/widget/TypefacesEditText;->setKeyboardListener(Lco/vine/android/widget/TypefacesEditText$KeyboardListener;)V
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Lco/vine/android/widget/TypefacesEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const/high16 v18, 0x8
move/from16 v0, v18
invoke-virtual {v13, v0}, Lco/vine/android/widget/TypefacesEditText;->setInputType(I)V
invoke-static/range {p0 .. p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v18
move-object/from16 v0, v18
iget-object v0, v0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v13, v0}, Lco/vine/android/widget/TypefacesEditText;->setTypeface(Landroid/graphics/Typeface;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v0, v13}, Lco/vine/android/views/FlowLayout;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
move-object/from16 v18, v0
new-instance v19, Lco/vine/android/RecipientPickerActivity$1;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecipientPickerActivity$1;-><init>(Lco/vine/android/RecipientPickerActivity;)V
invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, v16
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getIntent()Landroid/content/Intent;
move-result-object v18
const-string v19, "is_vm_onboarding"
const/16 v20, 0x0
invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/RecipientPickerActivity;->mIsVmOnboarding:Z
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecipientPickerActivity;->mIsVmOnboarding:Z
move/from16 v18, v0
if-eqz v18, :cond_339
const v18, 0x7f0a01a7
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v18
check-cast v18, Landroid/widget/TextView;
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
move-object/from16 v18, v0
const v19, 0x7f0e020e
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
move-object/from16 v18, v0
new-instance v19, Lco/vine/android/RecipientPickerActivity$2;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecipientPickerActivity$2;-><init>(Lco/vine/android/RecipientPickerActivity;)V
invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_339
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v18
move-object/from16 v0, v18
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
move/from16 v18, v0
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/RecipientPickerActivity;->mDensity:F
const-string v1, " - Lco/vine/android/RecipientPickerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCurrentTabClicked()V
.registers 1
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->scrollTop()V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/RecipientPickerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
const-string v1, " - Lco/vine/android/RecipientPickerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onItemClick(Lco/vine/android/api/VineRecipient;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/RecipientPickerActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
if-ne v1, p1, :cond_9
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lco/vine/android/RecipientPickerActivity;->setForceFullList(Z)V
:goto_8
const-string v1, " - Lco/vine/android/RecipientPickerActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
iget v1, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
if-ne v1, v0, :cond_18
const/4 v1, -0x1
invoke-direct {p0, v1}, Lco/vine/android/RecipientPickerActivity;->setItemForRemoval(I)V
goto :goto_8
:cond_18
invoke-direct {p0, v0}, Lco/vine/android/RecipientPickerActivity;->setItemForRemoval(I)V
goto :goto_8
.end method
.method public onKeyboardDismissed()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->setForceFullList(Z)V
return-void
.end method
.method public onPostCreate(Landroid/os/Bundle;)V
.registers 8
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getFakeActionBar()Lco/vine/android/widget/FakeActionBar;
move-result-object v1
const v3, 0x7f02014c
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
new-instance v3, Landroid/graphics/PorterDuffColorFilter;
iget v4, p0, Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-virtual {v1}, Lco/vine/android/widget/FakeActionBar;->getBackIcon()Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v1}, Lco/vine/android/widget/FakeActionBar;->getTitleView()Landroid/widget/TextView;
move-result-object v3
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v4
iget-object v4, v4, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
invoke-virtual {v1}, Lco/vine/android/widget/FakeActionBar;->getTitleView()Landroid/widget/TextView;
move-result-object v3
const/4 v4, 0x2
const/high16 v5, 0x4190
invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V
invoke-direct {p0}, Lco/vine/android/RecipientPickerActivity;->addSendIcon()V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lco/vine/android/RecipientPickerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onResume()V
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v1
iput v1, v0, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I
const-string v1, " - Lco/vine/android/RecipientPickerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSendButtonClicked()V
.registers 16
const-wide/16 v13, 0x0
const-wide/16 v2, -0x1
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_5b
iget-wide v4, p0, Lco/vine/android/RecipientPickerActivity;->mPostId:J
cmp-long v0, v4, v13
if-lez v0, :cond_5c
new-instance v4, Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-wide v5, p0, Lco/vine/android/RecipientPickerActivity;->mPostId:J
iget-object v7, p0, Lco/vine/android/RecipientPickerActivity;->mSharedVideoUrl:Ljava/lang/String;
iget-object v8, p0, Lco/vine/android/RecipientPickerActivity;->mSharedThumbnailUrl:Ljava/lang/String;
move-object v0, p0
invoke-static/range {v0 .. v8}, Lco/vine/android/service/VineUploadService;->getVMSharePostIntent(Landroid/content/Context;ZJLjava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:goto_28
invoke-static {p0}, Lco/vine/android/service/VineUploadService;->getShowProgressIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iget-boolean v0, p0, Lco/vine/android/RecipientPickerActivity;->mIsVmOnboarding:Z
if-nez v0, :cond_39
iget-wide v0, p0, Lco/vine/android/RecipientPickerActivity;->mPostId:J
cmp-long v0, v0, v13
if-gtz v0, :cond_58
:cond_39
new-instance v12, Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-class v1, Lco/vine/android/HomeTabActivity;
invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v0, "co.vine.android.VM_SENT"
invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "is_vm_onboarding"
iget-boolean v1, p0, Lco/vine/android/RecipientPickerActivity;->mIsVmOnboarding:Z
invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/high16 v0, 0x400
invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v12}, Lco/vine/android/RecipientPickerActivity;->startActivity(Landroid/content/Intent;)V
:cond_58
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->finish()V
:cond_5b
return-void
:cond_5c
iget-object v5, p0, Lco/vine/android/RecipientPickerActivity;->mVideoPath:Ljava/lang/String;
new-instance v9, Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-object v10, p0, Lco/vine/android/RecipientPickerActivity;->mCaptionMessage:Ljava/lang/String;
iget v11, p0, Lco/vine/android/RecipientPickerActivity;->mMaxLoops:I
move-object v4, p0
move v6, v1
move-wide v7, v2
invoke-static/range {v4 .. v11}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/ArrayList;Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_28
.end method
.method public onSupportContentChanged()V
.registers 3
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onSupportContentChanged()V
const v0, 0x1020012
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/tabs/IconTabHost;
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Lco/vine/android/widget/tabs/IconTabHost;->setup()V
const v0, 0x7f0a00da
invoke-virtual {p0, v0}, Lco/vine/android/RecipientPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
return-void
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseRecipientPickerFragment;
if-eqz v1, :cond_f
check-cast v0, Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v0, p1, p2, p3, p4}, Lco/vine/android/BaseRecipientPickerFragment;->onTextChanged(Ljava/lang/CharSequence;III)V
:cond_f
if-lez p4, :cond_15
const/4 v1, -0x1
invoke-direct {p0, v1}, Lco/vine/android/RecipientPickerActivity;->setItemForRemoval(I)V
:cond_15
return-void
.end method
.method public removeRecipient(Lco/vine/android/api/VineRecipient;)V
.registers 8
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v1
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
const-string v2, "Recipient removed: {} {} {}"
iget-object v3, p1, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;
iget-wide v4, p1, Lco/vine/android/api/VineRecipient;->userId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
iget-object v5, p1, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;
invoke-static {v2, v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-nez v2, :cond_2d
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mQueryHint:Ljava/lang/CharSequence;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
:cond_2d
const/4 v2, 0x0
invoke-direct {p0, v0, p1, v2, v1}, Lco/vine/android/RecipientPickerActivity;->invalidateEditTextUI(ILco/vine/android/api/VineRecipient;ZZ)V
const/4 v2, -0x1
iput v2, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
if-eqz v2, :cond_41
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mSendButton:Landroid/widget/ImageView;
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isSendButtonEnabled()Z
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V
:cond_41
return-void
.end method
.method public scrollTop()V
.registers 5
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
if-eqz v3, :cond_8
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
if-nez v3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v3, v0, Lco/vine/android/BaseCursorListFragment;
if-eqz v3, :cond_8
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_8
const v3, 0x102000a
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/twitter/android/widget/TopScrollable;
if-eqz v1, :cond_8
invoke-interface {v1}, Lcom/twitter/android/widget/TopScrollable;->scrollTop()Z
move-result v3
if-nez v3, :cond_8
check-cast v0, Lco/vine/android/BaseCursorListFragment;
invoke-virtual {v0}, Lco/vine/android/BaseCursorListFragment;->invokeScrollFirstItem()V
goto :goto_8
.end method
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
.registers 8
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v4
if-ne v4, v3, :cond_53
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v4
const/16 v5, 0x43
if-ne v4, v5, :cond_53
iget v4, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
if-gez v4, :cond_43
iget-object v4, p0, Lco/vine/android/RecipientPickerActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
if-eqz v2, :cond_53
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v4
if-nez v4, :cond_53
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v4
if-eqz v4, :cond_2b
invoke-virtual {p0, v3}, Lco/vine/android/RecipientPickerActivity;->setForceFullList(Z)V
:goto_2a
:cond_2a
return v3
:cond_2b
iget-object v4, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_2a
iget-object v4, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v0, v4, -0x1
iget v4, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
if-gez v4, :cond_2a
invoke-direct {p0, v0}, Lco/vine/android/RecipientPickerActivity;->setItemForRemoval(I)V
goto :goto_2a
:cond_43
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
iget v4, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineRecipient;
invoke-virtual {p0, v1}, Lco/vine/android/RecipientPickerActivity;->removeRecipient(Lco/vine/android/api/VineRecipient;)V
invoke-direct {p0, v1}, Lco/vine/android/RecipientPickerActivity;->notifyItemRemoval(Lco/vine/android/api/VineRecipient;)V
:cond_53
const/4 v3, 0x0
goto :goto_2a
.end method
.method public setForceFullList(Z)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x3
iget-boolean v1, p0, Lco/vine/android/RecipientPickerActivity;->isForcingFullList:Z
if-ne v1, p1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iput-boolean p1, p0, Lco/vine/android/RecipientPickerActivity;->isForcingFullList:Z
if-eqz p1, :cond_27
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2, v4}, Lco/vine/android/views/FlowLayout;->removeViewAt(I)V
const/4 v0, 0x3
:goto_11
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v0, v2, :cond_6
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VineRecipient;
invoke-direct {p0, v0, v2, v5, v5}, Lco/vine/android/RecipientPickerActivity;->invalidateEditTextUI(ILco/vine/android/api/VineRecipient;ZZ)V
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_27
invoke-virtual {p0}, Lco/vine/android/RecipientPickerActivity;->isInOverflowMode()Z
move-result v2
if-eqz v2, :cond_6
iget v2, p0, Lco/vine/android/RecipientPickerActivity;->mSelectedForRemoval:I
if-lt v2, v4, :cond_35
const/4 v2, -0x1
invoke-direct {p0, v2}, Lco/vine/android/RecipientPickerActivity;->setItemForRemoval(I)V
:goto_35
:cond_35
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2}, Lco/vine/android/views/FlowLayout;->getChildCount()I
move-result v2
const/4 v3, 0x4
if-le v2, v3, :cond_44
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mFlowLayout:Lco/vine/android/views/FlowLayout;
invoke-virtual {v2, v4}, Lco/vine/android/views/FlowLayout;->removeViewAt(I)V
goto :goto_35
:cond_44
iget-object v2, p0, Lco/vine/android/RecipientPickerActivity;->mLastExtra:Lco/vine/android/api/VineRecipient;
const/4 v3, 0x0
invoke-direct {p0, v4, v2, v5, v3}, Lco/vine/android/RecipientPickerActivity;->invalidateEditTextUI(ILco/vine/android/api/VineRecipient;ZZ)V
goto :goto_6
.end method
.method public showPage(Ljava/lang/String;)V
.registers 7
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getTabs()Ljava/util/ArrayList;
move-result-object v2
const/4 v0, 0x0
:goto_7
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_26
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/widget/tabs/TabInfo;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabInfo;->getTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_23
iget-object v3, p0, Lco/vine/android/RecipientPickerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
const/4 v4, 0x1
invoke-virtual {v3, v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_26
return-void
.end method