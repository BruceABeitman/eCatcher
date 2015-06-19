.class  Landroid/support/v8/renderscript/ElementThunker;
.super Landroid/support/v8/renderscript/Element;
.source "ElementThunker.java"
.field  mN:Landroid/renderscript/Element;
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iput-object p2, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
return-void
.end method
.method static convertKind(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;
.registers 3
sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I
invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;
goto :goto_c
:pswitch_10
sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;
goto :goto_c
:pswitch_13
sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;
goto :goto_c
:pswitch_16
sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;
goto :goto_c
:pswitch_19
sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;
goto :goto_c
:pswitch_1c
sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;
goto :goto_c
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_d
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
:pswitch_1c
.end packed-switch
.end method
.method static convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;
.registers 3
sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I
invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4a
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
sget-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_10
sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_13
sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_16
sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_19
sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_1c
sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_1f
sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_22
sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_25
sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_28
sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_2b
sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_2e
sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_31
sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_34
sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_37
sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_3a
sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_3d
sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_40
sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_43
sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;
goto :goto_c
:pswitch_46
sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;
goto :goto_c
nop
:pswitch_data_4a
.packed-switch 0x1
:pswitch_d
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
:pswitch_1c
:pswitch_1f
:pswitch_22
:pswitch_25
:pswitch_28
:pswitch_2b
:pswitch_2e
:pswitch_31
:pswitch_34
:pswitch_37
:pswitch_3a
:pswitch_3d
:pswitch_40
:pswitch_43
:pswitch_46
.end packed-switch
.end method
.method static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
.registers 6
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
const/4 v0, 0x0
sget-object v2, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I
invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_9c
:goto_f
new-instance v2, Landroid/support/v8/renderscript/ElementThunker;
invoke-direct {v2, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
return-object v2
:pswitch_15
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_1c
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_23
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_2a
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_31
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_38
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_3f
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_46
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_4d
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_54
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_5b
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_62
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_69
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_70
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_77
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_7e
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_85
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto :goto_f
:pswitch_8c
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto/16 :goto_f
:pswitch_94
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v2}, Landroid/renderscript/Element;->SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
move-result-object v0
goto/16 :goto_f
:pswitch_data_9c
.packed-switch 0x2
:pswitch_15
:pswitch_1c
:pswitch_23
:pswitch_2a
:pswitch_31
:pswitch_38
:pswitch_3f
:pswitch_46
:pswitch_4d
:pswitch_54
:pswitch_5b
:pswitch_62
:pswitch_69
:pswitch_70
:pswitch_77
:pswitch_7e
:pswitch_85
:pswitch_8c
:pswitch_94
.end packed-switch
.end method
.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
.registers 8
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {p1}, Landroid/support/v8/renderscript/ElementThunker;->convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;
move-result-object v3
invoke-static {p2}, Landroid/support/v8/renderscript/ElementThunker;->convertKind(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;
move-result-object v4
invoke-static {v2, v3, v4}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/ElementThunker;
invoke-direct {v2, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
return-object v2
.end method
.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
.registers 7
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {p1}, Landroid/support/v8/renderscript/ElementThunker;->convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;
move-result-object v3
invoke-static {v2, v3, p2}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/ElementThunker;
invoke-direct {v2, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
return-object v2
.end method
.method public getBytesSize()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I
move-result v0
return v0
.end method
.method public getDataKind()Landroid/support/v8/renderscript/Element$DataKind;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
return-object v0
.end method
.method public getDataType()Landroid/support/v8/renderscript/Element$DataType;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mType:Landroid/support/v8/renderscript/Element$DataType;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
return-object v0
.end method
.method public getSubElement(I)Landroid/support/v8/renderscript/Element;
.registers 5
new-instance v0, Landroid/support/v8/renderscript/ElementThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ElementThunker;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v2, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v2, p1}, Landroid/renderscript/Element;->getSubElement(I)Landroid/renderscript/Element;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
return-object v0
.end method
.method public getSubElementArraySize(I)I
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0, p1}, Landroid/renderscript/Element;->getSubElementArraySize(I)I
move-result v0
return v0
.end method
.method public getSubElementCount()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0}, Landroid/renderscript/Element;->getSubElementCount()I
move-result v0
return v0
.end method
.method public getSubElementName(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0, p1}, Landroid/renderscript/Element;->getSubElementName(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSubElementOffsetBytes(I)I
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0, p1}, Landroid/renderscript/Element;->getSubElementOffsetBytes(I)I
move-result v0
return v0
.end method
.method public getVectorSize()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I
move-result v0
return v0
.end method
.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
iget-object v1, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
iget-object v2, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z
move-result v1
return v1
.end method
.method public isComplex()Z
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z
move-result v0
return v0
.end method