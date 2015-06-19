.class  Landroid/support/v8/renderscript/AllocationThunker;
.super Landroid/support/v8/renderscript/Allocation;
.source "AllocationThunker.java"
.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
.field  mN:Landroid/renderscript/Allocation;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sput-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
sget-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
return-void
.end method
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
iput-object p2, p0, Landroid/support/v8/renderscript/AllocationThunker;->mType:Landroid/support/v8/renderscript/Type;
iput p3, p0, Landroid/support/v8/renderscript/AllocationThunker;->mUsage:I
iput-object p4, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
return-void
.end method
.method static convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
.registers 3
sget-object v0, Landroid/support/v8/renderscript/AllocationThunker$1;->$SwitchMap$android$support$v8$renderscript$Allocation$MipmapControl:[I
invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_16
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;
goto :goto_c
:pswitch_10
sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;
goto :goto_c
:pswitch_13
sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;
goto :goto_c
:pswitch_data_16
.packed-switch 0x1
:pswitch_d
:pswitch_10
:pswitch_13
.end packed-switch
.end method
.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 9
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
move-result-object v4
invoke-static {v3, p1, v4, p3}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v3
invoke-direct {v2, p0, v3}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v3, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v3, p0, v2, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v3
.end method
.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 22
move-object v11, p0
check-cast v11, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v1, v11, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static/range {p7 .. p7}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
move-result-object v8
move-object v2, p1
move-object v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v6, p5
move-object/from16 v7, p6
move/from16 v9, p8
invoke-static/range {v1 .. v9}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
move-result-object v10
new-instance v12, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v1
invoke-direct {v12, p0, v1}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v1, Landroid/support/v8/renderscript/AllocationThunker;
move/from16 v0, p8
invoke-direct {v1, p0, v12, v0, v10}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v1
.end method
.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 9
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
move-result-object v4
invoke-static {v3, p1, v4, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v3
invoke-direct {v2, p0, v3}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v3, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v3, p0, v2, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v3
.end method
.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 10
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {p3}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
move-result-object v4
invoke-static {v3, p1, p2, v4, p4}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v3
invoke-direct {v2, p0, v3}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v3, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v3, p0, v2, p4, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v3
.end method
.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
.registers 7
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-static {v3, p1, p2}, Landroid/renderscript/Allocation;->createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v2, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v3
invoke-direct {v2, p0, v3}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v3, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v3, p0, v2, p2, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v3
.end method
.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
.registers 10
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
move-object v1, p1
check-cast v1, Landroid/support/v8/renderscript/ElementThunker;
iget-object v5, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {p1}, Landroid/support/v8/renderscript/Element;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v4
check-cast v4, Landroid/renderscript/Element;
invoke-static {v5, v4, p2, p3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v3, Landroid/support/v8/renderscript/TypeThunker;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v4
invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v4, p0, v3, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v4
.end method
.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 10
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
move-object v2, p1
check-cast v2, Landroid/support/v8/renderscript/TypeThunker;
iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
iget-object v4, v2, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
move-result-object v5
invoke-static {v3, v4, v5, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
move-result-object v0
new-instance v3, Landroid/support/v8/renderscript/AllocationThunker;
invoke-direct {v3, p0, p1, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
return-object v3
.end method
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
.registers 8
move-object v0, p3
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
iget-object v2, v0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v1, p1, p2, v2, p4}, Landroid/renderscript/Allocation;->copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
return-void
.end method
.method public copy1DRangeFrom(II[B)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V
return-void
.end method
.method public copy1DRangeFrom(II[F)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V
return-void
.end method
.method public copy1DRangeFrom(II[I)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V
return-void
.end method
.method public copy1DRangeFrom(II[S)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[B)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[F)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[I)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[S)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V
return-void
.end method
.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
.registers 17
move-object v8, p5
check-cast v8, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
iget-object v5, v8, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v6, p6
move/from16 v7, p7
invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
return-void
.end method
.method public copy2DRangeFrom(IIII[B)V
.registers 12
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V
return-void
.end method
.method public copy2DRangeFrom(IIII[F)V
.registers 12
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V
return-void
.end method
.method public copy2DRangeFrom(IIII[I)V
.registers 12
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V
return-void
.end method
.method public copy2DRangeFrom(IIII[S)V
.registers 12
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V
return-void
.end method
.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
return-void
.end method
.method public copyFrom(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
iget-object v2, v0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/renderscript/Allocation;)V
return-void
.end method
.method public copyFrom([B)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V
return-void
.end method
.method public copyFrom([F)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([F)V
return-void
.end method
.method public copyFrom([I)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([I)V
return-void
.end method
.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
array-length v2, p1
new-array v0, v2, [Landroid/renderscript/BaseObj;
const/4 v1, 0x0
:goto_7
array-length v2, p1
if-ge v1, v2, :cond_15
aget-object v2, p1, v1
invoke-virtual {v2}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v2
aput-object v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_15
iget-object v2, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyFrom([Landroid/renderscript/BaseObj;)V
goto :goto_2
.end method
.method public copyFrom([S)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([S)V
return-void
.end method
.method public copyFromUnchecked([B)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V
return-void
.end method
.method public copyFromUnchecked([F)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V
return-void
.end method
.method public copyFromUnchecked([I)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([I)V
return-void
.end method
.method public copyFromUnchecked([S)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([S)V
return-void
.end method
.method public copyTo(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public copyTo([B)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([B)V
return-void
.end method
.method public copyTo([F)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([F)V
return-void
.end method
.method public copyTo([I)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([I)V
return-void
.end method
.method public copyTo([S)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([S)V
return-void
.end method
.method public generateMipmaps()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->generateMipmaps()V
return-void
.end method
.method public getBytesSize()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getBytesSize()I
move-result v0
return v0
.end method
.method public getElement()Landroid/support/v8/renderscript/Element;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/AllocationThunker;->getType()Landroid/support/v8/renderscript/Type;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/Allocation;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public getType()Landroid/support/v8/renderscript/Type;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;
move-result-object v0
invoke-static {v0}, Landroid/support/v8/renderscript/TypeThunker;->find(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;
move-result-object v0
return-object v0
.end method
.method public getUsage()I
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->getUsage()I
move-result v0
return v0
.end method
.method public ioReceive()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioReceive()V
return-void
.end method
.method public ioSend()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V
return-void
.end method
.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
.registers 6
new-instance v0, Landroid/renderscript/FieldPacker;
invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v1
invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>([B)V
iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v1, p1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
return-void
.end method
.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
.registers 5
new-instance v0, Landroid/renderscript/FieldPacker;
invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v1
invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>([B)V
iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v1, p1, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
return-void
.end method
.method public syncAll(I)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->syncAll(I)V
return-void
.end method