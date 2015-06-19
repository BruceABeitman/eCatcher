.class public Landroid/support/v7/app/ActionBarImplBase$TabImpl;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "ActionBarImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplBase;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/app/ActionBar$TabListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$000(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_11
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mCustomView:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$000(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_11
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$000(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_11
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    #getter for: Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$000(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_11
    return-object p0
.end method
