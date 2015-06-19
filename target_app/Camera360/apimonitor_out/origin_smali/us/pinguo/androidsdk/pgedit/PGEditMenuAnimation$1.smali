.class Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$1;
.super Landroid/os/Handler;
.source "PGEditMenuAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 22

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_138

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x437a

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v14, v15, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v14, 0x190

    invoke-virtual {v3, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;

    invoke-virtual {v3, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    move-result-object v14

    invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->isActioning()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :pswitch_37
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actionFinish()V

    goto :goto_7

    :pswitch_48
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/high16 v14, 0x4461

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v14, v15, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v14, 0x96

    const-wide/16 v16, 0x32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    invoke-virtual {v10, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;

    invoke-virtual {v10, v12}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v12}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    move-result-object v14

    invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->isActioning()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v12}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getParentView()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v12}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    :pswitch_95
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actionFinish()V

    goto/16 :goto_7

    :pswitch_a0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v14, 0x0

    const/high16 v15, 0x447a

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;

    invoke-virtual {v4, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    move-result-object v14

    invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->isActioning()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    :pswitch_d1
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x437a

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v14, v15, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v14, 0x190

    invoke-virtual {v11, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;

    invoke-virtual {v11, v13}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    move-result-object v14

    invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->isActioning()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getParentView()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    :pswitch_10c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    invoke-virtual {v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    move-result-object v14

    invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actionFinish()V

    goto/16 :goto_7

    :pswitch_121
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    invoke-virtual {v8}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v8}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->getView()Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_8
        :pswitch_37
        :pswitch_48
        :pswitch_95
        :pswitch_a0
        :pswitch_d1
        :pswitch_10c
        :pswitch_121
    .end packed-switch
.end method
