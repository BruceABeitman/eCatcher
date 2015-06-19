.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"
.field  mArraySizes:[I
.field  mCount:I
.field  mElementNames:[Ljava/lang/String;
.field  mElements:[Landroid/support/v8/renderscript/Element;
.field  mRS:Landroid/support/v8/renderscript/RenderScript;
.field  mSkipPadding:I
.field  mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
.registers 5
const/16 v2, 0x8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v1, :cond_13
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;
new-instance v1, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
invoke-direct {v1, p1}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;)V
iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
:cond_13
iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
const/4 v1, 0x0
iput v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
new-array v1, v2, [Landroid/support/v8/renderscript/Element;
iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
new-array v1, v2, [Ljava/lang/String;
iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;
new-array v1, v2, [I
iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I
return-void
.end method
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
move-result-object v0
return-object v0
.end method
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
.registers 11
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
if-eqz v3, :cond_c
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
invoke-virtual {v3, p1, p2, p3}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)V
:goto_b
return-object p0
:cond_c
if-ge p3, v6, :cond_16
new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v4, "Array size cannot be less than 1."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_16
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I
if-eqz v3, :cond_25
const-string v3, "#padding_"
invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_25
iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I
goto :goto_b
:cond_25
iget v3, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I
const/4 v4, 0x3
if-ne v3, v4, :cond_79
iput v6, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I
:goto_2c
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
array-length v4, v4
if-ne v3, v4, :cond_60
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
add-int/lit8 v3, v3, 0x8
new-array v1, v3, [Landroid/support/v8/renderscript/Element;
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
add-int/lit8 v3, v3, 0x8
new-array v2, v3, [Ljava/lang/String;
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
add-int/lit8 v3, v3, 0x8
new-array v0, v3, [I
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
iput-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;
iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I
:cond_60
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
aput-object p1, v3, v4
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
aput-object p2, v3, v4
iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I
iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
aput p3, v3, v4
iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
goto :goto_b
:cond_79
iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I
goto :goto_2c
.end method
.method public create()Landroid/support/v8/renderscript/Element;
.registers 10
const/4 v8, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
new-array v3, v0, [Landroid/support/v8/renderscript/Element;
iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
new-array v4, v0, [Ljava/lang/String;
iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
new-array v5, v0, [I
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;
iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v0, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;
iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v0, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I
iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I
invoke-static {v0, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v0, v3
new-array v7, v0, [I
const/4 v6, 0x0
:goto_38
array-length v0, v3
if-ge v6, v0, :cond_48
aget-object v0, v3, v6
iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v0
aput v0, v7, v6
add-int/lit8 v6, v6, 0x1
goto :goto_38
:cond_48
iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0, v7, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;[I)I
move-result v1
new-instance v0, Landroid/support/v8/renderscript/Element;
iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V
goto :goto_d
.end method