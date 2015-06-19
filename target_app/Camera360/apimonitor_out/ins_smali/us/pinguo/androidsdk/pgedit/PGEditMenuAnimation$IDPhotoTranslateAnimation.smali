.class public Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "PGEditMenuAnimation.java"
.field private isCancel:Z
.field private isEnterChild:Z
.field private mBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
.field private mView:Landroid/view/View;
.method public constructor <init>(FFFF)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
return-void
.end method
.method public constructor <init>(IFIFIFIF)V
.registers 9
invoke-direct/range {p0 .. p8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public cancel()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel:Z
invoke-super {p0}, Landroid/view/animation/TranslateAnimation;->cancel()V
return-void
.end method
.method public getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->mBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
return-object v0
.end method
.method public getEnterChild()Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isEnterChild:Z
return v0
.end method
.method public getView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->mView:Landroid/view/View;
return-object v0
.end method
.method public isCancel()Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel:Z
return v0
.end method
.method public setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->mBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
return-void
.end method
.method public setEnterChild(Z)V
.registers 2
iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isEnterChild:Z
return-void
.end method
.method public setView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->mView:Landroid/view/View;
return-void
.end method