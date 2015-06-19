.class public Lcom/nineoldandroids/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final Animator:[I = null

.field private static final AnimatorSet:[I = null

.field private static final AnimatorSet_ordering:I = 0x0

.field private static final Animator_duration:I = 0x1

.field private static final Animator_interpolator:I = 0x0

.field private static final Animator_repeatCount:I = 0x3

.field private static final Animator_repeatMode:I = 0x4

.field private static final Animator_startOffset:I = 0x2

.field private static final Animator_valueFrom:I = 0x5

.field private static final Animator_valueTo:I = 0x6

.field private static final Animator_valueType:I = 0x7

.field private static final PropertyAnimator:[I

.field private static final PropertyAnimator_propertyName:I

.field private static final TOGETHER:I

.field private static final VALUE_TYPE_FLOAT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x10102e2

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    new-array v0, v3, [I

    const v1, 0x10102e1

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    return-void

    :array_1e
    .array-data 0x4
        0x41t 0x1t 0x1t 0x1t
        0x98t 0x1t 0x1t 0x1t
        0xbet 0x1t 0x1t 0x1t
        0xbft 0x1t 0x1t 0x1t
        0xc0t 0x1t 0x1t 0x1t
        0xdet 0x2t 0x1t 0x1t
        0xdft 0x2t 0x1t 0x1t
        0xe0t 0x2t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    :cond_6
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_13

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_16

    :cond_13
    const/4 v14, 0x1

    if-ne v13, v14, :cond_33

    :cond_16
    if-eqz p3, :cond_32

    if-eqz v6, :cond_32

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v5, v14, [Lcom/nineoldandroids/animation/Animator;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_25
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_c0

    if-nez p4, :cond_cd

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    :cond_32
    :goto_32
    return-object v4

    :cond_33
    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "objectAnimator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_58

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    :goto_4b
    if-eqz p3, :cond_6

    if-nez v6, :cond_54

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_54
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_58
    const-string/jumbo v14, "animator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    goto :goto_4b

    :cond_6b
    const-string/jumbo v14, "set"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a6

    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    sget-object v14, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_a4

    iget v11, v12, Landroid/util/TypedValue;->data:I

    :goto_94
    move-object v14, v4

    check-cast v14, Lcom/nineoldandroids/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v14, v11}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4b

    :cond_a4
    const/4 v11, 0x0

    goto :goto_94

    :cond_a6
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Unknown animator name: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator;

    add-int/lit8 v9, v8, 0x1

    aput-object v3, v5, v8

    move v8, v9

    goto/16 :goto_25

    :cond_cd
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    goto/16 :goto_32
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_38

    move-result-object v3

    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_12
    return-object v3

    :catch_13
    move-exception v0

    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v3

    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_37
    throw v3

    :catch_38
    move-exception v0

    :try_start_39
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_31
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget-object v21, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v11, v0

    const/16 v21, 0x7

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    if-nez p2, :cond_3d

    new-instance p2, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct/range {p2 .. p2}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    :cond_3d
    const/16 v17, 0x5

    const/16 v19, 0x6

    if-nez v20, :cond_127

    const/4 v7, 0x1

    :goto_44
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_12a

    const/4 v8, 0x1

    :goto_4d
    if-eqz v8, :cond_12d

    iget v6, v14, Landroid/util/TypedValue;->type:I

    :goto_51
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_130

    const/4 v9, 0x1

    :goto_5a
    if-eqz v9, :cond_133

    iget v13, v15, Landroid/util/TypedValue;->type:I

    :goto_5e
    if-eqz v8, :cond_6c

    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v6, v0, :cond_6c

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-le v6, v0, :cond_7a

    :cond_6c
    if-eqz v9, :cond_87

    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_87

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_87

    :cond_7a
    const/4 v7, 0x0

    new-instance v21, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct/range {v21 .. v21}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    :cond_87
    if-eqz v7, :cond_193

    if-eqz v8, :cond_163

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_136

    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    :goto_9b
    if-eqz v9, :cond_14e

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_142

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    :goto_ad
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    const/16 v22, 0x1

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    :cond_c4
    :goto_c4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_eb

    const/16 v21, 0x3

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_eb
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_108

    const/16 v21, 0x4

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_108
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-lez v10, :cond_123

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_123
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :cond_127
    const/4 v7, 0x0

    goto/16 :goto_44

    :cond_12a
    const/4 v8, 0x0

    goto/16 :goto_4d

    :cond_12d
    const/4 v6, 0x0

    goto/16 :goto_51

    :cond_130
    const/4 v9, 0x0

    goto/16 :goto_5a

    :cond_133
    const/4 v13, 0x0

    goto/16 :goto_5e

    :cond_136
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_9b

    :cond_142
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    goto/16 :goto_ad

    :cond_14e
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_c4

    :cond_163
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_188

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    :goto_173
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_c4

    :cond_188
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    goto :goto_173

    :cond_193
    if-eqz v8, :cond_233

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_1da

    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    :goto_1aa
    if-eqz v9, :cond_21e

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_1fc

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_1c1
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    const/16 v22, 0x1

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_c4

    :cond_1da
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v6, v0, :cond_1f1

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v6, v0, :cond_1f1

    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    goto :goto_1aa

    :cond_1f1
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_1aa

    :cond_1fc
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_213

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_213

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto :goto_1c1

    :cond_213
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    goto :goto_1c1

    :cond_21e
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_c4

    :cond_233
    if-eqz v9, :cond_c4

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_25f

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_24a
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_c4

    :cond_25f
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_276

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_276

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto :goto_24a

    :cond_276
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    goto :goto_24a
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v1, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    sget-object v3, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method
