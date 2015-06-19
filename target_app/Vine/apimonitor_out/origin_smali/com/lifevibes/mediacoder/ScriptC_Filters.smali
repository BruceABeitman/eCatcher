.class public Lcom/lifevibes/mediacoder/ScriptC_Filters;
.super Ljava/lang/Object;
.source "ScriptC_Filters.java"


# instance fields
.field private _output:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach_RGB888YUV444(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method

.method public forEach_YUV444ToYUV420(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method

.method public forEach_YUV444ToYUV420SemiPlanar(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method

.method public forEach_YUVPackedToPlanar(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 3

    return-void
.end method

.method public get_output()Landroid/support/v8/renderscript/Allocation;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/ScriptC_Filters;->_output:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public set_input(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method

.method public set_output(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    iput-object p1, p0, Lcom/lifevibes/mediacoder/ScriptC_Filters;->_output:Landroid/support/v8/renderscript/Allocation;

    return-void
.end method

.method public set_output1(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method

.method public set_output2(Landroid/support/v8/renderscript/Allocation;)V
    .registers 2

    return-void
.end method
