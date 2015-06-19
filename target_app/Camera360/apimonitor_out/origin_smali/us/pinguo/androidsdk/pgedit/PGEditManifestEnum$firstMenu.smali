.class final enum Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
.super Ljava/lang/Enum;
.source "PGEditManifestEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "firstMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum effectClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum rotateClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

.field public static final enum tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;


# instance fields
.field private mAnotherName:Ljava/lang/String;

.field private mChildArray:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

.field private mDrawableId:Ljava/lang/String;

.field private mStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v1, "effectClass"

    const-string/jumbo v3, "pg_sdk_edit_effect_class"

    const-string/jumbo v4, "pg_sdk_edit_effect_class"

    const-string/jumbo v5, "pg_sdk_edit_effect_class"

    new-array v6, v10, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->effectChild:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v7, v6, v2

    invoke-direct/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->effectClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v4, "cropClass"

    const-string/jumbo v6, "pg_sdk_edit_crop_class"

    const-string/jumbo v7, "pg_sdk_edit_crop_class"

    const-string/jumbo v8, "pg_sdk_edit_crop_class"

    const/4 v0, 0x5

    new-array v9, v0, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->cropFree:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v2

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop11:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v10

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop23:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v11

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop34:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v12

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop916:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v13

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v4, "rotateClass"

    const-string/jumbo v6, "pg_sdk_edit_rotate_class"

    const-string/jumbo v7, "pg_sdk_edit_rotate_class"

    const-string/jumbo v8, "pg_sdk_edit_rotate_class"

    new-array v9, v13, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateLeft:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v2

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateRight:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v10

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateX:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v11

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateY:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v12

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->rotateClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v4, "adjustClass"

    const-string/jumbo v6, "pg_sdk_edit_adjust_class"

    const-string/jumbo v7, "pg_sdk_edit_adjust_class"

    const-string/jumbo v8, "pg_sdk_edit_adjust_class"

    const/4 v0, 0x7

    new-array v9, v0, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->sharpen:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v2

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->exposure:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v10

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->contrast:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v11

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->highlight:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v12

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->shadow:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v13

    const/4 v0, 0x5

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->saturation:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v1, v9, v0

    const/4 v0, 0x6

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->colorTemp:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v1, v9, v0

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v4, "textureClass"

    const-string/jumbo v6, "pg_sdk_edit_texture_class"

    const-string/jumbo v7, "pg_sdk_edit_texture_class"

    const-string/jumbo v8, "pg_sdk_edit_texture_class"

    const/16 v0, 0x8

    new-array v9, v0, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem1:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v2

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem6:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v10

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem9:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v11

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem10:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v12

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem12:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v13

    const/4 v0, 0x5

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem14:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v1, v9, v0

    const/4 v0, 0x6

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem17:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v1, v9, v0

    const/4 v0, 0x7

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->textureItem18:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v1, v9, v0

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const-string/jumbo v4, "tiltShiftClass"

    const/4 v5, 0x5

    const-string/jumbo v6, "pg_sdk_edit_tiltshift_class"

    const-string/jumbo v7, "pg_sdk_edit_tiltshift_class"

    const-string/jumbo v8, "pg_sdk_edit_tiltshift_class"

    new-array v9, v12, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->roundTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v2

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->verticalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v10

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->horizontalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    aput-object v0, v9, v11

    invoke-direct/range {v3 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    sput-object v3, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    const/4 v0, 0x6

    new-array v0, v0, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->effectClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v1, v0, v2

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v1, v0, v10

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->rotateClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v1, v0, v11

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v1, v0, v12

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    aput-object v2, v0, v1

    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->ENUM$VALUES:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mAnotherName:Ljava/lang/String;

    iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mDrawableId:Ljava/lang/String;

    iput-object p5, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mStringId:Ljava/lang/String;

    iput-object p6, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mChildArray:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    return-void
.end method

.method public static getFirstMenuForAnotherName(Ljava/lang/String;[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;)Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
    .registers 6

    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_6

    const/4 v0, 0x0

    :cond_5
    return-object v0

    :cond_6
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->getAnotherName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
    .registers 2

    const-class v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    return-object v0
.end method

.method public static values()[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->ENUM$VALUES:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    array-length v1, v0

    new-array v2, v1, [Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAnotherName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mAnotherName:Ljava/lang/String;

    return-object v0
.end method

.method public getChildArray()[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mChildArray:[Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    return-object v0
.end method

.method public getDrawableId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mDrawableId:Ljava/lang/String;

    return-object v0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->mStringId:Ljava/lang/String;

    return-object v0
.end method
