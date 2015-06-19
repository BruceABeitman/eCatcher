.class  Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
.super Ljava/lang/Object;
.source "ElementThunker.java"
.field  mN:Landroid/renderscript/Element$Builder;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;
new-instance v1, Landroid/renderscript/Element$Builder;
iget-object v2, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-direct {v1, v2}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V
iput-object v1, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;
return-void
.end method
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)V
.registers 7
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;
iget-object v2, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v1, v2, p2, p3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
return-void
.end method
.method public create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 4
iget-object v1, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;
invoke-virtual {v1}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;
move-result-object v0
new-instance v1, Landroid/support/v8/renderscript/ElementThunker;
invoke-direct {v1, p1, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
return-object v1
.end method