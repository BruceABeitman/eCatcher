.class Lus/pinguo/androidsdk/pgedit/PGEditManifestDecoder;
.super Ljava/lang/Object;
.source "PGEditManifestDecoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEditMenusBeanArray(Landroid/content/Context;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v24, "pg_sdk_edit_first_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getArray(Landroid/content/Context;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->values()[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-result-object v6

    const/4 v10, 0x0

    :goto_1f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v10, v0, :cond_2b

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    :cond_2b
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->getFirstMenuForAnotherName(Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;)Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-result-object v9

    if-eqz v9, :cond_78

    new-instance v7, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setEffect(Ljava/lang/Enum;)V

    invoke-virtual {v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->getDrawableId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->getStringId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setName(Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->getChildArray()[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    move-result-object v16

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v11, 0x0

    :goto_6a
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v11, v0, :cond_7b

    invoke-virtual {v7, v15}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setChildList(Ljava/util/List;)V

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_78
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_7b
    const/16 v17, 0x0

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_9b

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_9b

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_9b

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->rotateClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_9b

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_fa

    :cond_9b
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    :goto_9f
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getSecondMenuForAnotherName(Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    move-result-object v19

    if-eqz v19, :cond_f6

    const/16 v18, 0x0

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_109

    new-instance v20, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getPersonalString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->setTexturePath(Ljava/lang/String;)V

    move-object/from16 v18, v20

    :goto_c7
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setEffect(Ljava/lang/Enum;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getDrawableId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setIcon(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getStringId()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_eb

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getStringId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setName(Ljava/lang/String;)V

    :cond_eb
    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getEffectValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setEffectValue(Ljava/lang/String;)V

    :cond_f6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6a

    :cond_fa
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_9f

    :cond_109
    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_14d

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getPersonalString()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_149

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getPersonalString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->setFlipIcon(I)V

    const/16 v24, 0x1

    aget-object v24, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->setFlipName(I)V

    :cond_149
    move-object/from16 v18, v3

    goto/16 :goto_c7

    :cond_14d
    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_229

    new-instance v21, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getPersonalString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setMinStand(F)V

    const/16 v24, 0x1

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setMaxStand(F)V

    const/16 v24, 0x2

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setStand(F)V

    const/16 v24, 0x3

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V

    const/16 v24, 0x4

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V

    const/16 v24, 0x5

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setMinStep(F)V

    const/16 v24, 0x6

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setMaxStep(F)V

    const/16 v24, 0x7

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setStep(F)V

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->roundTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1fa

    const/16 v24, 0x8

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setRound(F)V

    :cond_1f6
    :goto_1f6
    move-object/from16 v18, v21

    goto/16 :goto_c7

    :cond_1fa
    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->verticalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_20a

    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->horizontalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1f6

    :cond_20a
    const/16 v24, 0x8

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setDegree(F)V

    const/16 v24, 0x9

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setWidth(F)V

    goto :goto_1f6

    :cond_229
    sget-object v24, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_275

    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->getPersonalString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->setMin(F)V

    const/16 v24, 0x1

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->setMax(F)V

    const/16 v24, 0x2

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->setDefaultRate(F)V

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getDefaultRate()F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->setRate(F)V

    move-object/from16 v18, v2

    goto/16 :goto_c7

    :cond_275
    new-instance v18, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    goto/16 :goto_c7
.end method

.method static getKeyString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "4F521E8A6AAB77CF386A10579F976115FAB1EBC3BB3A0E513D29F9BF65D87100225F7C8E717A1EF27ADF4EAC85E0544EBDCBE9A54B16C33D8858A204E76A6301E3393354FB58B9BB8CE028FABDAB13B9DF95179B463F5CC3C6EDB3BFC4D9E3506F7D35DDEFA175CD6A8D29C81F7AFBD83980E61B72F1B1D723C7D31AF9012EEC0FDD3591EA3BB2D6D33813DCE3DBE7D13192E35E895FAFFEE5BF6CEE54EE2DC90FC4CBEC6022179322DC1E5C63EF48AFE9186EAEF6849672B2A19A8A223081C725E91A833DB7D7F4D72AC157751788D01922884CDC7785A6E9360EB499226F70424A1DFA98A4854A4941ADCA58A7439BC9EF5E55F0979F2B7463186E74B9B3D8DA12CD78FEA943CE272CDEA66DBDD433087A3D2C980EA1A913A30C48653153F75D50ADC1DFC16E3D93E63FA8820959AE8882C8EFA889492C7AB7F8E9141DCE96314CF0D8EA56612F88C480D2D63785987E0E7164A475AB2EF3A1D8ED93909CFE53B27481DEA242BCA810C37995359F46A1F2B5F1B6347A8555219D8F755AC97FFB0CB0B39123DC536CCD2B059CE9082F0ACA5CC4E036FB3E5159F55270FA3B7A4473483FF7DD51954BCF1AAEE9F4A253807C3C8C9D4DB6D0A486DCC631BD9C9E5FE09A359BC732450942BA5D47A86E83F26BB9ECEEFA6F4C10DF49DA9D2F372E80693AA8BCD8755BDA89F023A8F72B7E1136FFC6A5DF102238145CF0A1FCEAAF3D84CFB3D5FE8B91FC7B5A517F0922D826C67194FAA66826B11176653C458FD892C984750742F6931EC8B3140C5C10B378C2BDB5507D571992738DDDAEA79159FA63B08E912F26DC55219D8F755AC97F3251A4D455AEA56CAC3C586131CC46CCAF51C77268BD9CBE1EC8B3140C5C10B30FD35C1C3246347ECC08952EB9F1AFE368A8CC2C675BD6D8535D16535C90A82FD2238390F11D5735583F032A1208E7E1994C7A8CAA8BBD0F63436BF059FD28E51EC8B3140C5C10B31D6122035DD30B395AA4B95A2F6FE259DD92392967EA3C5170CEE92160E5322A005882D6D718A8A44E1B36E679EEC0E37E66ADD8B1D99816B7DF5FADD949ED08"

    return-object v0
.end method
