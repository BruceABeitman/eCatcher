.class public Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;

.field private mTables:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    .registers 9

    sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v4, :cond_c

    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;

    move-result-object v3

    :goto_b
    return-object v3

    :cond_c
    const/4 v4, 0x3

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v1

    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;

    invoke-direct {v3, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    const/16 v5, 0x400

    invoke-static {p0, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    const/4 v0, 0x0

    :goto_27
    const/16 v4, 0x100

    if-ge v0, v4, :cond_48

    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v0

    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v5, v0, 0x100

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v5, v0, 0x200

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v5, v0, 0x300

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_48
    const/4 v4, 0x0

    iget-object v5, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    goto :goto_b
.end method

.method private validate(II)V
    .registers 5

    const/16 v0, 0xff

    if-ltz p1, :cond_6

    if-le p1, v0, :cond_e

    :cond_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Index out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-ltz p2, :cond_12

    if-le p2, v0, :cond_1a

    :cond_12
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Value out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-void
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked([B)V

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, p2, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x300

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setBlue(II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x200

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setGreen(II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x100

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setRed(II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method
