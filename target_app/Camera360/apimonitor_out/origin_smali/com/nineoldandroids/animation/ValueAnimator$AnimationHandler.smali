.class Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28

    const/4 v6, 0x1

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_136

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_35

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_36

    :cond_35
    const/4 v6, 0x0

    :cond_36
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_ad

    :pswitch_3c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v12, 0x0

    :goto_59
    if-lt v12, v14, :cond_d9

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_67

    const/4 v12, 0x0

    :goto_62
    if-lt v12, v15, :cond_ee

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    :cond_67
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v12, 0x0

    :goto_6c
    if-lt v12, v13, :cond_107

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_80

    const/4 v12, 0x0

    :goto_75
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_129

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_80
    if-eqz v6, :cond_1e

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1e

    :cond_8e
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1e

    :cond_ad
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x0

    :goto_bb
    if-ge v12, v7, :cond_36

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    #getter for: Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$5(Lcom/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_d5

    #calls: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/nineoldandroids/animation/ValueAnimator;)V

    :goto_d2
    add-int/lit8 v12, v12, 0x1

    goto :goto_bb

    :cond_d5
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_d9
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    #calls: Lcom/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->access$9(Lcom/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_ea

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_59

    :cond_ee
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    #calls: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/nineoldandroids/animation/ValueAnimator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    #setter for: Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->access$10(Lcom/nineoldandroids/animation/ValueAnimator;Z)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_62

    :cond_107
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v4, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_116

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_122

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6c

    :cond_122
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6c

    :cond_129
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/nineoldandroids/animation/ValueAnimator;

    #calls: Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/nineoldandroids/animation/ValueAnimator;->access$11(Lcom/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_75

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3c
    .end packed-switch
.end method
