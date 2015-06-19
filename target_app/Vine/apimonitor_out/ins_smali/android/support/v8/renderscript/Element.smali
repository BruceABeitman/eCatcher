.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Element.java"
.field  mArraySizes:[I
.field  mElementNames:[Ljava/lang/String;
.field  mElements:[Landroid/support/v8/renderscript/Element;
.field  mKind:Landroid/support/v8/renderscript/Element$DataKind;
.field  mNormalized:Z
.field  mOffsetInBytes:[I
.field  mSize:I
.field  mType:Landroid/support/v8/renderscript/Element$DataType;
.field  mVectorSize:I
.field  mVisibleElementMap:[I
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
.registers 8
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;
if-eq p3, v0, :cond_27
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;
if-eq p3, v0, :cond_27
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;
if-eq p3, v0, :cond_27
const/4 v0, 0x3
if-ne p6, v0, :cond_21
iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I
mul-int/lit8 v0, v0, 0x4
iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I
:goto_18
iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
iput-boolean p5, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z
iput p6, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I
return-void
:cond_21
iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I
mul-int/2addr v0, p6
iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I
goto :goto_18
:cond_27
iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I
iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I
goto :goto_18
.end method
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V
.registers 10
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
const/4 v1, 0x0
iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I
const/4 v1, 0x1
iput v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I
iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;
iput-object p5, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;
iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;
iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
array-length v1, v1
new-array v1, v1, [I
iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I
const/4 v0, 0x0
:goto_1f
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
array-length v1, v1
if-ge v0, v1, :cond_3d
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I
iget v2, p0, Landroid/support/v8/renderscript/Element;->mSize:I
aput v2, v1, v0
iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I
iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
aget-object v2, v2, v0
iget v2, v2, Landroid/support/v8/renderscript/Element;->mSize:I
iget-object v3, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I
aget v3, v3, v0
mul-int/2addr v2, v3
add-int/2addr v1, v2
iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_3d
invoke-direct {p0}, Landroid/support/v8/renderscript/Element;->updateVisibleSubElements()V
return-void
.end method
.method public static ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static ELEMENT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static F64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static I8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static MATRIX_2X2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static MATRIX_3X3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static MATRIX_4X4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static RGBA_5551(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static RGB_888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_e
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static SCRIPT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static TYPE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;
:cond_c
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x3
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;
if-nez v0, :cond_d
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
const/4 v1, 0x4
invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
.registers 11
sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v0, :cond_c
move-object v7, p0
check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
move-result-object v0
:goto_b
return-object v0
:cond_c
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_30
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Unsupported DataKind"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_30
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
if-eq p1, v0, :cond_4c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
if-eq p1, v0, :cond_4c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;
if-eq p1, v0, :cond_4c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;
if-eq p1, v0, :cond_4c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;
if-eq p1, v0, :cond_4c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Unsupported DataType"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;
if-ne p1, v0, :cond_5c
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_5c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Bad kind and type combo"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;
if-ne p1, v0, :cond_6c
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_6c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Bad kind and type combo"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;
if-ne p1, v0, :cond_7c
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_7c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Bad kind and type combo"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7c
sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
if-ne p1, v0, :cond_8c
sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;
if-eq p2, v0, :cond_8c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Bad kind and type combo"
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8c
const/4 v6, 0x1
sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I
invoke-virtual {p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_b2
:goto_98
const/4 v5, 0x1
iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I
iget v2, p2, Landroid/support/v8/renderscript/Element$DataKind;->mID:I
invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I
move-result v1
new-instance v0, Landroid/support/v8/renderscript/Element;
move-object v2, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
goto/16 :goto_b
:pswitch_ab
const/4 v6, 0x2
goto :goto_98
:pswitch_ad
const/4 v6, 0x3
goto :goto_98
:pswitch_af
const/4 v6, 0x4
goto :goto_98
nop
:pswitch_data_b2
.packed-switch 0x1
:pswitch_ab
:pswitch_ad
:pswitch_af
.end packed-switch
.end method
.method static createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
.registers 10
sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v0, :cond_c
move-object v7, p0
check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {v7, p1}, Landroid/support/v8/renderscript/ElementThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
move-result-object v0
:goto_b
return-object v0
:cond_c
sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;
const/4 v5, 0x0
const/4 v6, 0x1
iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I
iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I
invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I
move-result v1
new-instance v0, Landroid/support/v8/renderscript/Element;
move-object v2, p0
move-object v3, p1
invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
goto :goto_b
.end method
.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
.registers 11
sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v0, :cond_c
move-object v7, p0
check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
move-result-object v0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x2
if-lt p2, v0, :cond_12
const/4 v0, 0x4
if-le p2, v0, :cond_1a
:cond_12
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Vector size out of range 2-4."
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I
invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_42
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Cannot create vector of non-primitive type."
invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2d
sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;
const/4 v5, 0x0
iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I
iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I
invoke-virtual {p0, v0, v2, v5, p2}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I
move-result v1
new-instance v0, Landroid/support/v8/renderscript/Element;
move-object v2, p0
move-object v3, p1
move v6, p2
invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
goto :goto_b
nop
:pswitch_data_42
.packed-switch 0x1
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
:pswitch_2d
.end packed-switch
.end method
.method private updateVisibleSubElements()V
.registers 9
const/16 v7, 0x23
const/4 v6, 0x0
iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
if-nez v5, :cond_8
:cond_7
return-void
:cond_8
const/4 v4, 0x0
iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;
array-length v3, v5
const/4 v0, 0x0
:goto_d
if-ge v0, v3, :cond_1e
iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;
aget-object v5, v5, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
move-result v5
if-eq v5, v7, :cond_1b
add-int/lit8 v4, v4, 0x1
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1e
new-array v5, v4, [I
iput-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
const/4 v0, 0x0
const/4 v1, 0x0
move v2, v1
:goto_25
if-ge v0, v3, :cond_7
iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;
aget-object v5, v5, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
move-result v5
if-eq v5, v7, :cond_3b
iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
add-int/lit8 v1, v2, 0x1
aput v0, v5, v2
:goto_37
add-int/lit8 v0, v0, 0x1
move v2, v1
goto :goto_25
:cond_3b
move v1, v2
goto :goto_37
.end method
.method public getBytesSize()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I
return v0
.end method
.method public getDataKind()Landroid/support/v8/renderscript/Element$DataKind;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
return-object v0
.end method
.method public getDataType()Landroid/support/v8/renderscript/Element$DataType;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
return-object v0
.end method
.method public getSubElement(I)Landroid/support/v8/renderscript/Element;
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Element contains no sub-elements"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-ltz p1, :cond_13
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
array-length v0, v0
if-lt p1, v0, :cond_1b
:cond_13
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Illegal sub-element index"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
aget v1, v1, p1
aget-object v0, v0, v1
return-object v0
.end method
.method public getSubElementArraySize(I)I
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Element contains no sub-elements"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-ltz p1, :cond_13
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
array-length v0, v0
if-lt p1, v0, :cond_1b
:cond_13
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Illegal sub-element index"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
aget v1, v1, p1
aget v0, v0, v1
return v0
.end method
.method public getSubElementCount()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
array-length v0, v0
goto :goto_5
.end method
.method public getSubElementName(I)Ljava/lang/String;
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Element contains no sub-elements"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-ltz p1, :cond_13
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
array-length v0, v0
if-lt p1, v0, :cond_1b
:cond_13
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Illegal sub-element index"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
aget v1, v1, p1
aget-object v0, v0, v1
return-object v0
.end method
.method public getSubElementOffsetBytes(I)I
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Element contains no sub-elements"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-ltz p1, :cond_13
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
array-length v0, v0
if-lt p1, v0, :cond_1b
:cond_13
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Illegal sub-element index"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I
aget v1, v1, p1
aget v0, v0, v1
return v0
.end method
.method public getVectorSize()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I
return v0
.end method
.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I
iget v2, p1, Landroid/support/v8/renderscript/Element;->mSize:I
if-ne v1, v2, :cond_20
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;
if-eq v1, v2, :cond_20
iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
iget-object v2, p1, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
if-ne v1, v2, :cond_20
iget v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I
iget v2, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I
if-eq v1, v2, :cond_7
:cond_20
const/4 v0, 0x0
goto :goto_7
.end method
.method public isComplex()Z
.registers 4
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
if-nez v2, :cond_6
:goto_5
:cond_5
return v1
:cond_6
const/4 v0, 0x0
:goto_7
iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
array-length v2, v2
if-ge v0, v2, :cond_5
iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
aget-object v2, v2, v0
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
if-eqz v2, :cond_16
const/4 v1, 0x1
goto :goto_5
:cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method