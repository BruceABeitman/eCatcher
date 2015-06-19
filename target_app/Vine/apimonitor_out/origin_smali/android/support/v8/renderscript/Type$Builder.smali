.class public Landroid/support/v8/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element;->checkValid()V

    iput-object p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iput-object p2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Type;
    .registers 12

    const/4 v2, 0x1

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_21

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_d

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_15

    :cond_d
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_21

    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_31

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_31

    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_41

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_41

    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_59

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_51

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_51

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_59

    :cond_51
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_95

    iget-object v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/TypeThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;

    move-result-object v10

    :goto_75
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iput-object v1, v10, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimX:I

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimY:I

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimZ:I

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    return-object v10

    :cond_95
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v8, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v9

    new-instance v10, Landroid/support/v8/renderscript/Type;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v10, v9, v1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    goto :goto_75
.end method

.method public setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    return-object p0
.end method

.method public setY(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    return-object p0
.end method

.method public setYuvFormat(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4

    sparse-switch p1, :sswitch_data_e

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Only NV21 and YV12 are supported.."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    return-object p0

    :sswitch_data_e
    .sparse-switch
        0x11 -> :sswitch_b
        0x32315659 -> :sswitch_b
    .end sparse-switch
.end method

.method public setZ(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    return-object p0
.end method
