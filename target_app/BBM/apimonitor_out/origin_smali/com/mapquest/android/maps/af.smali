.class final Lcom/mapquest/android/maps/af;
.super Landroid/os/Handler;
.source "LineOverlay.java"


# instance fields
.field a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<[I>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/mapquest/android/maps/ac;

.field private c:Lcom/mapquest/android/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/MapView;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/af;->a:Ljava/util/Stack;

    iput-object p2, p0, Lcom/mapquest/android/maps/af;->c:Lcom/mapquest/android/maps/MapView;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;I)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/s;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/s;",
            ">;I)V"
        }
    .end annotation

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/mapquest/android/maps/af;->a(II)[I

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    :cond_2a
    :goto_2a
    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10e

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v11, v2, v3

    const/4 v3, 0x1

    aget v12, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/af;->a:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v11, 0x1

    if-ge v2, v12, :cond_2a

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    add-int/lit8 v5, v11, 0x1

    :goto_5b
    if-ge v5, v12, :cond_eb

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Point;->y:I

    iget v15, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v15, v13

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    if-nez v15, :cond_93

    if-nez v16, :cond_93

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Point;->set(II)V

    :goto_7d
    iget v13, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v14, v10, Landroid/graphics/Point;->x:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v14

    sub-int/2addr v4, v15

    mul-int/2addr v13, v13

    mul-int/2addr v4, v4

    add-int/2addr v4, v13

    if-le v4, v7, :cond_139

    move v6, v4

    move v4, v5

    :goto_8e
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    move v6, v4

    goto :goto_5b

    :cond_93
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    mul-int v17, v17, v15

    mul-int v18, v18, v16

    add-int v17, v17, v18

    if-gtz v17, :cond_af

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Point;->set(II)V

    goto :goto_7d

    :cond_af
    mul-int v18, v15, v15

    mul-int v19, v16, v16

    add-int v18, v18, v19

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_c3

    iget v13, v3, Landroid/graphics/Point;->x:I

    iget v14, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Point;->set(II)V

    goto :goto_7d

    :cond_c3
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v17, v18, v20

    int-to-double v0, v13

    move-wide/from16 v19, v0

    int-to-double v0, v15

    move-wide/from16 v21, v0

    mul-double v21, v21, v17

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v13, v0

    int-to-double v14, v14

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v16, v19, v17

    add-double v14, v14, v16

    double-to-int v14, v14

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Point;->set(II)V

    goto :goto_7d

    :cond_eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    iget v2, v2, Lcom/mapquest/android/maps/ac;->a:I

    if-le v7, v2, :cond_2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/mapquest/android/maps/af;->a(II)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/mapquest/android/maps/af;->a(II)[I

    move-result-object v3

    invoke-virtual {v8, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    :cond_10e
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, -0x1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_117
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_137

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_134
    move v3, v2

    goto :goto_117

    :cond_136
    return-void

    :cond_137
    move v2, v3

    goto :goto_134

    :cond_139
    move v4, v6

    move v6, v7

    goto/16 :goto_8e
.end method

.method private a(II)[I
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mapquest/android/maps/af;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v2

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/mapquest/android/maps/af;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput p1, v0, v1

    aput p2, v0, v2

    goto :goto_11
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    iget-object v1, v1, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    iget-object v2, v2, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    iget-object v3, v3, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/mapquest/android/maps/af;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;I)V

    iget-object v1, p0, Lcom/mapquest/android/maps/af;->b:Lcom/mapquest/android/maps/ac;

    iput-object v0, v1, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/mapquest/android/maps/af;->c:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
