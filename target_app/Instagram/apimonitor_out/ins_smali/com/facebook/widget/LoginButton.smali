.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Lcom/facebook/g/q;
.field private d:Lcom/facebook/h/h;
.field private e:Lcom/facebook/bo;
.field private f:Z
.field private g:Z
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Lcom/facebook/widget/g;
.field private k:Landroid/support/v4/app/Fragment;
.field private l:Lcom/facebook/widget/c;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/widget/LoginButton;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;
new-instance v0, Lcom/facebook/widget/c;
invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;
new-instance v0, Lcom/facebook/widget/c;
invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I
move-result v0
if-nez v0, :cond_93
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/as;->com_facebook_loginview_text_color:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->com_facebook_loginview_text_size:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->com_facebook_loginview_padding_left:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->com_facebook_loginview_padding_top:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/facebook/at;->com_facebook_loginview_padding_right:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Lcom/facebook/at;->com_facebook_loginview_padding_bottom:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->com_facebook_loginview_width:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setWidth(I)V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->com_facebook_loginview_height:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setHeight(I)V
const/16 v0, 0x11
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_a0
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/as;->com_facebook_blue:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V
const-string v0, "Log in"
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;
:cond_93
:goto_93
invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z
move-result v0
if-nez v0, :cond_9f
invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z
:cond_9f
return-void
:cond_a0
sget v0, Lcom/facebook/au;->com_facebook_loginbutton_blue:I
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V
goto :goto_93
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;
new-instance v0, Lcom/facebook/widget/c;
invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V
invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/g/q;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
return-object v0
.end method
.method static synthetic a(Lcom/facebook/widget/LoginButton;Lcom/facebook/h/h;)Lcom/facebook/h/h;
.registers 2
iput-object p1, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
return-object p1
.end method
.method static synthetic a()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;
return-object v0
.end method
.method private a(Landroid/util/AttributeSet;)V
.registers 5
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/facebook/bb;->com_facebook_login_view:[I
invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Lcom/facebook/bb;->com_facebook_login_view_confirm_logout:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->f:Z
sget v1, Lcom/facebook/bb;->com_facebook_login_view_fetch_user_info:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->g:Z
sget v1, Lcom/facebook/bb;->com_facebook_login_view_login_text:I
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;
sget v1, Lcom/facebook/bb;->com_facebook_login_view_logout_text:I
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private static a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {v1}, Lcom/facebook/bo;->a()Z
move-result v0
goto :goto_3
:cond_f
invoke-static {p0}, Lcom/facebook/g/t;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3
invoke-static {p0}, Lcom/facebook/bo;->a(Landroid/content/Context;)Lcom/facebook/bo;
move-result-object v1
if-eqz v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method
.method static synthetic b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/g;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;
return-object v0
.end method
.method private b()V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/facebook/widget/d;
invoke-direct {v0, p0, v3}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/LoginButton;B)V
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Lcom/facebook/g/q;
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/facebook/widget/b;
invoke-direct {v2, p0, v3}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/LoginButton;B)V
invoke-direct {v0, v1, v2}, Lcom/facebook/g/q;-><init>(Landroid/content/Context;Lcom/facebook/cc;)V
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V
:cond_25
return-void
.end method
.method static synthetic c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/h/h;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
return-object v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0}, Lcom/facebook/g/q;->b()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;
:goto_12
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V
:goto_15
return-void
:cond_16
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->com_facebook_loginview_log_out_button:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_21
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;
:goto_27
invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V
goto :goto_15
:cond_2b
invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->com_facebook_loginview_log_in_button:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_27
.end method
.method private d()V
.registers 5
iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->g:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0}, Lcom/facebook/g/q;->b()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_25
iget-object v1, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;
if-eq v0, v1, :cond_24
new-instance v1, Lcom/facebook/widget/a;
invoke-direct {v1, p0, v0}, Lcom/facebook/widget/a;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/bo;)V
invoke-static {v0, v1}, Lcom/facebook/bc;->a(Lcom/facebook/bo;Lcom/facebook/bh;)Lcom/facebook/bc;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Lcom/facebook/bc;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-static {v2}, Lcom/facebook/bc;->a([Lcom/facebook/bc;)Lcom/facebook/bk;
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;
:goto_24
:cond_24
return-void
:cond_25
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;
goto :goto_24
.end method
.method static synthetic d(Lcom/facebook/widget/LoginButton;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->f:Z
return v0
.end method
.method static synthetic e(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method static synthetic g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
return-object v0
.end method
.method static synthetic h(Lcom/facebook/widget/LoginButton;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V
return-void
.end method
.method static synthetic i(Lcom/facebook/widget/LoginButton;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V
return-void
.end method
.method final a(Ljava/lang/Exception;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;
move-result-object v0
if-eqz v0, :cond_11
instance-of v0, p1, Lcom/facebook/z;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;
:goto_11
:cond_11
return-void
:cond_12
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;
new-instance v0, Lcom/facebook/z;
invoke-direct {v0, p1}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V
goto :goto_11
.end method
.method public getDefaultAudience()Lcom/facebook/cf;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->b()Lcom/facebook/cf;
move-result-object v0
return-object v0
.end method
.method public getLoginBehavior()Lcom/facebook/cg;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->d()Lcom/facebook/cg;
move-result-object v0
return-object v0
.end method
.method public getOnErrorListener()Lcom/facebook/widget/f;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->a()Lcom/facebook/widget/f;
move-result-object v0
return-object v0
.end method
.method  getPermissions()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->c()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getSessionStatusCallback()Lcom/facebook/cc;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->e()Lcom/facebook/cc;
move-result-object v0
return-object v0
.end method
.method public getUserInfoChangedCallback()Lcom/facebook/widget/g;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;
return-object v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0}, Lcom/facebook/g/q;->e()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0}, Lcom/facebook/g/q;->c()V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V
:cond_1a
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0}, Lcom/facebook/g/q;->d()V
:cond_c
return-void
.end method
.method public onFinishInflate()V
.registers 1
invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V
return-void
.end method
.method public setApplicationId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;
return-void
.end method
.method public setDefaultAudience(Lcom/facebook/cf;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cf;)V
return-void
.end method
.method public setFragment(Landroid/support/v4/app/Fragment;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public setLoginBehavior(Lcom/facebook/cg;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cg;)V
return-void
.end method
.method public setOnErrorListener(Lcom/facebook/widget/f;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/f;)V
return-void
.end method
.method  setProperties(Lcom/facebook/widget/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
return-void
.end method
.method public setPublishPermissions(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v1}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/c;->b(Ljava/util/List;Lcom/facebook/bo;)V
return-void
.end method
.method public setReadPermissions(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v1}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/bo;)V
return-void
.end method
.method public setSession(Lcom/facebook/bo;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;
invoke-virtual {v0, p1}, Lcom/facebook/g/q;->a(Lcom/facebook/bo;)V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V
invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V
return-void
.end method
.method public setSessionStatusCallback(Lcom/facebook/cc;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;
invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cc;)V
return-void
.end method
.method public setUserInfoChangedCallback(Lcom/facebook/widget/g;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;
return-void
.end method