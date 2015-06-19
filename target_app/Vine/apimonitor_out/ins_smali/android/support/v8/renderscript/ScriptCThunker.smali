.class  Landroid/support/v8/renderscript/ScriptCThunker;
.super Landroid/renderscript/ScriptC;
.source "ScriptCThunker.java"
.field private static final TAG:Ljava/lang/String; = "ScriptC"
.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScriptThunker;Landroid/content/res/Resources;I)V
.registers 5
iget-object v0, p1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-direct {p0, v0, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
return-void
.end method
.method  thunkBindAllocation(Landroid/support/v8/renderscript/Allocation;I)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_7
check-cast p1, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v0, p1, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
:cond_7
invoke-virtual {p0, v0, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->bindAllocation(Landroid/renderscript/Allocation;I)V
return-void
.end method
.method  thunkCreateFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$FieldID;
.registers 5
move-object v0, p2
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;
move-result-object v1
invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
move-result-object v1
return-object v1
.end method
.method  thunkCreateKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$KernelID;
.registers 8
const/4 v0, 0x0
const/4 v1, 0x0
if-eqz p3, :cond_8
check-cast p3, Landroid/support/v8/renderscript/ElementThunker;
iget-object v0, p3, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
:cond_8
if-eqz p4, :cond_e
check-cast p4, Landroid/support/v8/renderscript/ElementThunker;
iget-object v1, p4, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
:cond_e
invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
move-result-object v2
return-object v2
.end method
.method  thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
.registers 9
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
if-eqz p2, :cond_9
check-cast p2, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p2, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
:cond_9
if-eqz p3, :cond_f
check-cast p3, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v2, p3, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
:cond_f
if-eqz p4, :cond_1a
new-instance v0, Landroid/renderscript/FieldPacker;
invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v3
invoke-direct {v0, v3}, Landroid/renderscript/FieldPacker;-><init>([B)V
:cond_1a
invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v8/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
return-void
.end method
.method  thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
.registers 12
const/4 v5, 0x0
if-eqz p5, :cond_3b
new-instance v5, Landroid/renderscript/Script$LaunchOptions;
invoke-direct {v5}, Landroid/renderscript/Script$LaunchOptions;-><init>()V
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXEnd()I
move-result v0
if-lez v0, :cond_19
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXStart()I
move-result v0
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXEnd()I
move-result v1
invoke-virtual {v5, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setX(II)Landroid/renderscript/Script$LaunchOptions;
:cond_19
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYEnd()I
move-result v0
if-lez v0, :cond_2a
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYStart()I
move-result v0
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYEnd()I
move-result v1
invoke-virtual {v5, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setY(II)Landroid/renderscript/Script$LaunchOptions;
:cond_2a
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZEnd()I
move-result v0
if-lez v0, :cond_3b
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZStart()I
move-result v0
invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZEnd()I
move-result v1
invoke-virtual {v5, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setZ(II)Landroid/renderscript/Script$LaunchOptions;
:cond_3b
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
if-eqz p2, :cond_44
check-cast p2, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v2, p2, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
:cond_44
if-eqz p3, :cond_4a
check-cast p3, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v3, p3, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
:cond_4a
if-eqz p4, :cond_55
new-instance v4, Landroid/renderscript/FieldPacker;
invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v0
invoke-direct {v4, v0}, Landroid/renderscript/FieldPacker;-><init>([B)V
:cond_55
move-object v0, p0
move v1, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
return-void
.end method
.method  thunkInvoke(I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->invoke(I)V
return-void
.end method
.method  thunkInvoke(ILandroid/support/v8/renderscript/FieldPacker;)V
.registers 5
new-instance v0, Landroid/renderscript/FieldPacker;
invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v1
invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>([B)V
invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptCThunker;->invoke(ILandroid/renderscript/FieldPacker;)V
return-void
.end method
.method  thunkSetTimeZone(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->setTimeZone(Ljava/lang/String;)V
return-void
.end method
.method  thunkSetVar(ID)V
.registers 4
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ID)V
return-void
.end method
.method  thunkSetVar(IF)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IF)V
return-void
.end method
.method  thunkSetVar(II)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(II)V
return-void
.end method
.method  thunkSetVar(IJ)V
.registers 4
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IJ)V
return-void
.end method
.method  thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(II)V
:goto_6
return-void
:cond_7
invoke-virtual {p2}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v0
invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/BaseObj;)V
goto :goto_6
.end method
.method  thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;)V
.registers 5
new-instance v0, Landroid/renderscript/FieldPacker;
invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v1
invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>([B)V
invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;)V
return-void
.end method
.method  thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
.registers 8
new-instance v1, Landroid/renderscript/FieldPacker;
invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v2
invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>([B)V
move-object v0, p3
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
iget-object v2, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {p0, p1, v1, v2, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
return-void
.end method
.method  thunkSetVar(IZ)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IZ)V
return-void
.end method